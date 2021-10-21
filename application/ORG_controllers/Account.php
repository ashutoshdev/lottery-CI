<?php if(!defined('BASEPATH')) exit('No direct script access allowed');


require APPPATH . '/libraries/BaseController.php';
/**
 * Class : Login (LoginController)
 * Login class to control to authenticate user credentials and starts user's session.
 * @version : 1.1
 * @since : 15 November 2016
 */
class Account extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model(array('web_model','user_model'));
        $this->isLoggedIn();

        $this->load->library('form_validation');
    }

    /**
     * Index Page for this controller.
     */
    public function index()
    {
        $data = array();
        $data["userInfo"] = $this->user_model->getUserInfoWithRole($this->session->userdata('userId'));
        $this->load->view("frontend/header");
        $this->load->view("frontend/profile",$data);
        $this->load->view("frontend/footer");
    } 
    
    
    function pUpdate()
    {
        $this->load->library('form_validation');
        
        $this->form_validation->set_rules('fname','Full Name','trim|required|max_length[128]');
        $this->form_validation->set_rules('mobile','Mobile Number','required|min_length[10]');
        $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]|callback_emailExists');        
        
        if($this->form_validation->run() == FALSE)
        {
            $this->index();
        }
        else
        {
            $name = ucwords(strtolower($this->security->xss_clean($this->input->post('fname'))));
            $mobile = $this->security->xss_clean($this->input->post('mobile'));
            $email = strtolower($this->security->xss_clean($this->input->post('email')));
            
            $userInfo = array('name'=>$name, 'email'=>$email, 'mobile'=>$mobile, 'updatedBy'=>$this->vendorId, 'updatedDtm'=>date('Y-m-d H:i:s'));
            
            $result = $this->user_model->editUser($userInfo, $this->vendorId);
            
            if($result == true)
            {
                $this->session->set_userdata('name', $name);
                $this->session->set_flashdata('success', 'Profile updated successfully');
            }
            else
            {
                $this->session->set_flashdata('error', 'Profile updation failed');
            }

            $this->index();
        }
    }

    function emailExists($email)
    {
        $userId = $this->vendorId;
        $return = false;

        if(empty($userId)){
            $result = $this->user_model->checkEmailExists($email);
        } else {
            $result = $this->user_model->checkEmailExists($email, $userId);
        }

        if(empty($result)){ $return = true; }
        else {
            $this->form_validation->set_message('emailExists', 'The {field} has been already taken');
            $return = false;
        }

        return $return;
    }

    public function changepassword()
    {
        $data = array();
        $data["userInfo"] = $this->user_model->getUserInfoWithRole($this->session->userdata('userId'));
        $this->load->view("frontend/header");
        $this->load->view("frontend/changepassword",$data);
        $this->load->view("frontend/footer");
    } 

    function passwordUpdate()
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('oldPassword','Old password','required|max_length[20]');
        $this->form_validation->set_rules('newPassword','New password','required|max_length[20]');
        $this->form_validation->set_rules('cNewPassword','Confirm new password','required|matches[newPassword]|max_length[20]');
        if($this->form_validation->run() == FALSE)
        {
            $this->changepassword();
        }
        else
        {
            $oldPassword = $this->input->post('oldPassword');
            $newPassword = $this->input->post('newPassword');
            
            $resultPas = $this->user_model->matchOldPassword($this->vendorId, $oldPassword);
            
            if(empty($resultPas))
            {
                $this->session->set_flashdata('nomatch', 'Your old password is not correct');
                $this->changepassword();
            }
            else
            {
                $usersData = array('password'=>getHashedPassword($newPassword), 'updatedBy'=>$this->vendorId,
                                'updatedDtm'=>date('Y-m-d H:i:s'));
                
                $result = $this->user_model->changePassword($this->vendorId, $usersData);
                
                if($result > 0) { $this->session->set_flashdata('success', 'Password updation successful'); }
                else { $this->session->set_flashdata('error', 'Password updation failed'); }
                
                $this->changepassword();
            }
        }
    }

    public function wallet()
    {
        $data = array();
        $data["userInfo"] = $this->user_model->getUserInfoWithRole($this->session->userdata('userId'));


        $data["money"] = $this->web_model->wallet();
        $data["money_history"] = $this->web_model->wallet_history();
        $this->load->view("frontend/header");
        $this->load->view("frontend/wallet",$data);
        $this->load->view("frontend/footer");
    } 

    public function wupdate()
    {
        $insertdata = array("user_id"=>$this->vendorId,
                            "money"=>$this->input->post('money'),
                            "trancaction_id"=>$this->input->post('transaction_id'),
                            "type"=>"Credit",
                            "p_type"=>$this->input->post('paymet_type')
                        );
        $wallet_money = $this->web_model->wallet();
        if(!$wallet_money){
            $insert =array(
                    "user_id"=>$this->vendorId,
                    "money"=>$this->input->post('money')
            );
            $this->web_model->insert_date("tbl_wallet",$insert);
        }
        else{
            $insert =array(
                    "user_id"=>$this->vendorId,
                    "money"=>($wallet_money->money+$this->input->post('money'))
            );
            

            $this->web_model->editWeb_all("tbl_wallet",$insert, $wallet_money->id);
        }
        $this->web_model->insert_date("tbl_wallet_history",$insertdata);
        $this->session->set_flashdata('success', '$'.$this->input->post('money').' added in wallet successfully');
        redirect('account/wallet');
    } 

    public function order_history()
    {
        $data = array();
        $data["userInfo"] = $this->user_model->getUserInfoWithRole($this->session->userdata('userId'));

        $data["money_history"] = $this->web_model->order_history($this->session->userdata('userId'));
        
        $this->load->view("frontend/header");
        $this->load->view("frontend/order",$data);
        $this->load->view("frontend/footer");
    } 
    

}

?>