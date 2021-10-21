<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 
 * @version : 1.1
 * @since : 15 November 2016
 */
class Web extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model(array('web_model','user_model')); 
        $this->load->library('form_validation');
        $this->isLoggedIn();
    }
    
    /**
     * This function used to load the first screen of the user
     */
    public function index()
    {
        $searchText = $this->security->xss_clean($this->input->post('searchText'));
        $data['searchText'] = $searchText;
        $data['web'] = $this->web_model->get_allweb($searchText);
        $this->global['pageTitle'] = 'Lotetry : Web Listing';
        $this->loadViews("weblist", $this->global, $data, NULL);
    }

// WEBSITE ADD Page
    function addNew()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $this->load->model('user_model');
            $this->global['pageTitle'] = 'Lotetry : Add New Web';

            $this->loadViews("web/addNew", $this->global,Null, NULL);
        }
    }

    // Website add

    function addNewWeb()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            
            $this->form_validation->set_rules('name','Name','trim|required|max_length[128]');
            if($this->form_validation->run() == FALSE)
            {
                $this->addNew();
            }
            else
            {
                $name = ucwords(strtolower($this->security->xss_clean($this->input->post('name'))));
                $userInfo = array('name'=>$name,'createdDtm'=>date('Y-m-d H:i:s'));
                
                $result = $this->web_model->addNewWeb($userInfo);
                
                if($result > 0)
                {
                    $insert = array('white_from'=>1,
                            'white_to'=>100,
                            'yellow_from'=>1,
                            'yellow_to'=>75,
                            'web_id'=>$result
                        );
                    $this->web_model->insert_date("tbl_ranges",$insert);
                    $this->session->set_flashdata('success', 'New Website created successfully');
                }
                else
                {
                    $this->session->set_flashdata('error', 'Website creation failed');
                }
                
                redirect('web/addNew');
            }
        }
    }




    // Webiste Edit

    function edit($id = NULL)
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            if($id == null)
            {
                redirect('web');
            }
            
            $data['userInfo'] = $this->web_model->getWebInfo($id);
            $this->global['pageTitle'] = 'Lotetry : Edit Website';
            $this->loadViews("web/editOld", $this->global, $data, NULL);
        }
    }

    // Website Update

    function editWeb()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $id = $this->input->post('id');
            
            $this->form_validation->set_rules('name','Name','trim|required|max_length[128]');

            if($this->form_validation->run() == FALSE)
            {
                $this->editOld($id);
            }
            else
            {
                $name = ucwords(strtolower($this->security->xss_clean($this->input->post('name'))));
                $status = $this->input->post('status');
                $userInfo = array();
                
                $userInfo = array('status'=>$status,
                        'name'=>ucwords($name), 
                        'updatedDtm'=>date('Y-m-d H:i:s'));

                
                $result = $this->web_model->editWebsite($userInfo, $id);
                
                if($result == true)
                {
                    $this->session->set_flashdata('success', 'Webiste updated successfully');
                }
                else
                {
                    $this->session->set_flashdata('error', 'Webiste updation failed');
                }
                
                redirect('web/edit/'.$id);
            }
        }
    }


    function deleteWeb()
    {
        if($this->isAdmin() == TRUE)
        {
            echo(json_encode(array('status'=>'access')));
        }
        else
        {
            $userId = $this->input->post('userId');
            $result = $this->web_model->deleteWeb("tbl_webs",$userId);
            if ($result > 0) { echo(json_encode(array('status'=>TRUE))); }
            else { echo(json_encode(array('status'=>FALSE))); }
        }
    }


    function view($id)
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            if($id == null)
            {
                redirect('web');
            }

            $data['WebInfo'] = $this->web_model->getWebInfo($id);
            if(!$data['WebInfo'])
            {
                redirect('web');
            }
            $data['RangeInfo'] = $this->web_model->getrangeInfo($id);


            $this->load->library('pagination');
            $count = $this->web_model->count_date($id);
            $returns = $this->paginationCompress ( "web/view/".$id."/", $count, 10,4);
            
            $data['userRecords'] = $this->web_model->list_date($id,$returns["page"], $returns["segment"]);
            $this->global['pageTitle'] = 'Lottery : Website View';
            $this->loadViews("web/detail", $this->global, $data, NULL);
        }
    }

    // Webiste Edit

    function rangeEdit($id = NULL)
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            if($id == null)
            {
                redirect('web');
            }
            $data['WebInfo'] = $this->web_model->getWebInfo($id);
            
            $data['rangeInfo'] = $this->web_model->getrangeInfo($id);
            $this->global['pageTitle'] = 'Lotetry : Edit Range Website';
            $this->loadViews("web/rangeedit", $this->global, $data, NULL);
        }
    }

    // Webiste Edit

    function descriptionEdit($id = NULL)
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            if($id == null)
            {
                redirect('web');
            }
            $data['WebInfo'] = $this->web_model->getWebInfo($id);
            
            $data['rangeInfo'] = $this->web_model->getrangeInfo($id);
            $this->global['pageTitle'] = 'Lotetry : Edit Range Website';
            $this->loadViews("web/descriptionedit", $this->global, $data, NULL);
        }
    }


    function tier($id = NULL)
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            if($id == null)
            {
                redirect('web');
            }
            $data['WebInfo'] = $this->web_model->getWebInfo($id);
            $data['tier'] = $this->web_model->getTierInfo($id);
            $this->global['pageTitle'] = 'Lotetry : Edit Tier Website';
            $this->loadViews("web/tier", $this->global, $data, NULL);
        }
    }


    function editRange()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {   

            $web_id = $this->input->post('web_id');

            $filename="";
            if(isset($_FILES['logo']) && $_FILES['logo']['error']==0){
                $config['upload_path'] = './assets/imglogo/';
                $config['allowed_types'] = 'gif|jpg|png|svg';
                $config['max_size'] = 2000;
                $config['max_width'] = 1500;
                $config['max_height'] = 1500;
                $filename = time().$_FILES["logo"]['name'];
                $config['file_name'] = $filename;
                $this->load->library('upload', $config);
                
                if (!$this->upload->do_upload('logo')) {
                    $this->session->set_flashdata('error', $this->upload->display_errors());
                    redirect('web/rangeEdit/'.$web_id);
                }
            }
            
            $id = $this->input->post('id');
            
            $userInfo = array();
            $userInfo = array('white_from'=>$this->input->post('white_from'),
                            'white_to'=>$this->input->post('white_to'),
                            'yellow_from'=>$this->input->post('yellow_from'),
                            'yellow_to'=>$this->input->post('yellow_to'),
                            'price'=>$this->input->post('price'),
                            'yellow_ball'=>$this->input->post('yellow_ball'),
                            'quantity'=>$this->input->post('quantity'),
                            'white_ball'=>$this->input->post('white_ball'),
                            'jackpot'=>$this->input->post('jackpot')
                        );

            if($filename!=""){
                $userInfo['logo'] = $filename;   
            }

            $result = $this->web_model->editWeb_all("tbl_ranges",$userInfo, $id);
            if($result == true)
            {
                $this->session->set_flashdata('success', 'Range updated successfully');
            }
            else
            {
                $this->session->set_flashdata('error', 'Range updation failed');
            }
            
            redirect('web/rangeEdit/'.$web_id);
        }
    }


    function addtier()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $web_id = $this->input->post('web_id');
            $type =$this->input->post('type');

            $result = $this->web_model->pattern_exist();
            if($result!=0)
            {
                $this->session->set_flashdata('error', 'This Pattern already exist in this Game');
            }
            else{
                $userInfo = array();
                $userInfo = array('white'=>$this->input->post('white'),
                                'per'=>$this->input->post('per'),
                                'mega'=>$this->input->post('yellow'),
                                'web_id'=>$web_id
                            );
                
                if($type=="Add"){
                    $this->web_model->insert_date("tbl_tier",$userInfo);
                    $this->session->set_flashdata('success', 'Prize Tier added successfully');
                }
                else{
                    $id =$this->input->post('id');
                    $result = $this->web_model->editWeb_all("tbl_tier",$userInfo, $id);
                    $this->session->set_flashdata('success', 'Prize Tier updated successfully');
                }
            }
            
            redirect('web/tier/'.$web_id);
        }
    }

    function editdesc()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $id = $this->input->post('id');
            $web_id = $this->input->post('web_id');
            
            $userInfo = array();
            $userInfo = array('play_description'=>$this->input->post('play_description'),
                            'when_play'=>$this->input->post('when_play')
                        );
            $result = $this->web_model->editWeb_all("tbl_ranges",$userInfo, $id);
            if($result == true)
            {
                $this->session->set_flashdata('success', 'Description updated successfully');
            }
            else
            {
                $this->session->set_flashdata('error', 'Description updation failed');
            }
            
            redirect('web/descriptionEdit/'.$web_id);
        }
    }



    function addNewWebdate($web_id)
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $date = date("Y-m-d",strtotime($this->input->post('date')));
            $count = $this->web_model->date_exist($web_id,$date);
            if($count>0){
                $this->session->set_flashdata('error', 'This date has been already Taken.');
            }
            else{
                $insert = array('date'=>$date,
                    'web_id'=>$web_id
                );
                $this->web_model->insert_date("tbl_dates",$insert);
                $this->session->set_flashdata('success', 'New Date added successfully');
            }
            redirect('web/view/'.$web_id);
            
        }
    }

    function deleteWebDate()
    {
        if($this->isAdmin() == TRUE)
        {
            echo(json_encode(array('status'=>'access')));
        }
        else
        {
            $userId = $this->input->post('userId');
            $result = $this->web_model->deleteWeb("tbl_dates",$userId);
            if ($result > 0) { echo(json_encode(array('status'=>TRUE))); }
            else { echo(json_encode(array('status'=>FALSE))); }
        }
    }

    public function page()
    {
        $data['page'] = $this->web_model->page_list();
        $this->global['pageTitle'] = 'Lottery : Page Listing';
        $this->loadViews("pagelist", $this->global, $data, NULL);
    }

    function pageedit($id = NULL)
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            if($id == null)
            {
                redirect('web');
            }
            $data['userInfo'] = $this->web_model->getallWebInfo("tbl_pages",$id);
            $this->global['pageTitle'] = 'Lotetry : Edit Page';
            $this->loadViews("web/pageedit", $this->global, $data, NULL);
        }
    }

    function editUpadtePage()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $id = $this->input->post('id');
            
            $userInfo = array();
            $userInfo = array('description'=>$this->input->post('description')
                        );
            $result = $this->web_model->editWeb_all("tbl_pages",$userInfo, $id);
            if($result == true)
            {
                $this->session->set_flashdata('success', 'Page updated successfully');
            }
            else
            {
                $this->session->set_flashdata('error', 'Page updation failed');
            }
            
            redirect('web/pageedit/'.$id);
        }
    }

    function contact_list()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $this->load->library('pagination');
            $count = $this->web_model->count_contact();
            $returns = $this->paginationCompress ( "web/contact_list/", $count, 10,3);
            $data['userRecords'] = $this->web_model->contact_ls($returns["page"], $returns["segment"]);
            $this->global['pageTitle'] = 'Lottery : Contact List';
            $this->loadViews("web/contact", $this->global, $data, NULL);
        }
    }

    private function datearray($web_id){
        $datearray = array();
        if($web_id==1){
            $friday = date("Y-m-d",strtotime('next thursday'));
            $tuesday = date("Y-m-d",strtotime('next sunday'));

            $datearray[] = $friday;
            for($i=1; $i<=4; $i++){;
                $k= $i*7;
                $datearray[] = date("Y-m-d",strtotime("+".$k." day", strtotime($friday)));
            }
            
            $datearray[] = $tuesday;
            for($i=1; $i<=4; $i++){;
                $k= $i*7;
                $datearray[] = date("Y-m-d",strtotime("+".$k." day", strtotime($tuesday)));
            }
        }
        else if($web_id==2 || $web_id==3  || $web_id==4  || $web_id==5){
            $friday = date("Y-m-d",strtotime('next wednesday'));
            $tuesday = date("Y-m-d",strtotime('next saturday'));

            $datearray[] = $friday;
            for($i=1; $i<=4; $i++){;
                $k= $i*7;
                $datearray[] = date("Y-m-d",strtotime("+".$k." day", strtotime($friday)));
            }
            
            $datearray[] = $tuesday;
            for($i=1; $i<=4; $i++){;
                $k= $i*7;
                $datearray[] = date("Y-m-d",strtotime("+".$k." day", strtotime($tuesday)));
            }
        }
        else if($web_id==6){
            $tuesday = date("Y-m-d",strtotime('next saturday'));

            $datearray[] = $tuesday;
            for($i=1; $i<=10; $i++){;
                $k= $i*7;
                $datearray[] = date("Y-m-d",strtotime("+".$k." day", strtotime($tuesday)));
            }
        }

        return $datearray;
    }

    function addtwoWebdate($web_id)
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $datearray= $this->datearray($web_id);
            for($p=0;$p<10;$p++){
                $dap= $datearray[$p];

                $f_count = $this->web_model->date_exist($web_id,$dap);
                if($f_count==0){
                    $insert = array('date'=>$dap,
                        'web_id'=>$web_id
                    );
                    $this->web_model->insert_date("tbl_dates",$insert);
                }
            }

            $this->session->set_flashdata('success', 'Date added successfully');
            redirect('web/view/'.$web_id);
        }
    }


    public function order()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {

            $searchText = $this->security->xss_clean($this->input->post('searchText'));
            $data['searchText'] = $searchText;
            $this->load->library('pagination');
            $count = $this->web_model->count_order($searchText);
            $returns = $this->paginationCompress ( "web/order/", $count, 10,3);
            $data['userRecords'] = $this->web_model->order_ls($returns["page"], $returns["segment"],$searchText);

            $this->global['pageTitle'] = 'Lottery : Order History';
            $this->loadViews("web/order", $this->global, $data, NULL);
        }
    } 

    public function wallet()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $searchText = $this->security->xss_clean($this->input->post('searchText'));
            $data['searchText'] = $searchText;
            $this->load->library('pagination');
            $count = $this->web_model->count_wallet($searchText);
            $returns = $this->paginationCompress ( "web/order/", $count, 10,3);
            $data['userRecords'] = $this->web_model->wallet_ls($returns["page"], $returns["segment"],$searchText);
            $this->global['pageTitle'] = 'Lottery : Order History';
            $this->loadViews("web/wallet", $this->global, $data, NULL);
        }
    } 

    public function faq()
    {
        $searchText = $this->security->xss_clean($this->input->post('searchText'));
        $data['searchText'] = $searchText;
        $data['web'] = $this->web_model->get_allfaq($searchText);
        $this->global['pageTitle'] = 'Lotetry : FAQ Listing';
        $this->loadViews("faq", $this->global, $data, NULL);
    }


    // FAQ ADD
    function addfaq()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $this->load->model('user_model');
            $this->global['pageTitle'] = 'Lotetry : Add FAQ';

            $this->loadViews("web/addfaq", $this->global,Null, NULL);
        }
    }

        // FAQ add post

    function addNewfaq()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $this->form_validation->set_rules('question','Question','trim|required');
            $this->form_validation->set_rules('answer','Answer','trim|required');
            if($this->form_validation->run() == FALSE)
            {
                $this->addfaq();
            }
            else
            {
                $insert = array('question'=>$this->input->post('question'),
                        'answer'=>$this->input->post('answer')
                    );
                $result= $this->web_model->insert_date("tbl_faqs",$insert);
                if($result > 0)
                {
                    $this->session->set_flashdata('success', 'New FAQ created successfully');
                }
                else
                {
                    $this->session->set_flashdata('error', 'FAQ creation failed');
                }
                redirect('web/addfaq');
            }
        }
    }

    function faqedit($id = NULL)
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            if($id == null)
            {
                redirect('web');
            }
            
            $data['userInfo'] = $this->web_model->getfaq($id);
            $this->global['pageTitle'] = 'Lotetry : Edit FAQ';
            $this->loadViews("web/editfaq", $this->global, $data, NULL);
        }
    }

    // Website Update

    function faqupdate()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $id = $this->input->post('id');
            $this->form_validation->set_rules('question','Question','trim|required');
            $this->form_validation->set_rules('answer','Answer','trim|required');

            if($this->form_validation->run() == FALSE)
            {
                $this->faqedit($id);
            }
            else
            {
                $insert = array('question'=>$this->input->post('question'),
                    'answer'=>$this->input->post('answer')
                );
                
                $result = $this->web_model->editWeb_all("tbl_faqs",$insert, $id);
                if($result == true)
                {
                    $this->session->set_flashdata('success', 'FAQ updated successfully');
                }
                else
                {
                    $this->session->set_flashdata('error', 'FAQ updation failed');
                }
                
                redirect('web/faqedit/'.$id);
            }
        }
    }

    function deletefaq()
    {
        if($this->isAdmin() == TRUE)
        {
            echo(json_encode(array('status'=>'access')));
        }
        else
        {
            $userId = $this->input->post('userId');
            $result = $this->web_model->deleteWeb("tbl_faqs",$userId);
            if ($result > 0) { echo(json_encode(array('status'=>TRUE))); }
            else { echo(json_encode(array('status'=>FALSE))); }
        }
    }
}

?>