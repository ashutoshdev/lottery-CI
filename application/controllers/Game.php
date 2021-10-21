<?php if(!defined('BASEPATH')) exit('No direct script access allowed');


class Game extends CI_Controller
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model(array('web_model','user_model'));
    }

    /**
     * Index Page for this controller.
     */
    public function type($id)
    {
        $data['website'] = $this->web_model->getallWebInfo("tbl_webs",$id);
        if(!$data['website']){
            redirect("/");
        }
        $data['range'] = $this->web_model->getrangeInfo($id);
        $data['dates']=$this->web_model->getdateInfo($id);
        $data['tier']=$this->web_model->getTierInfo($id);
        
        $this->load->view("frontend/header");
        $this->load->view("frontend/game_detail",$data);
        $this->load->view("frontend/footer");
    }   

    public function index()
    {
        $data['website'] = $this->web_model->home_web();
        $this->load->view("frontend/header");
        $this->load->view("frontend/game",$data);
        $this->load->view("frontend/footer");
    }

    public function jackpot()
    {
        $data['lottery'] = $this->web_model->lottery_web();
        $this->load->view("frontend/header");
        $this->load->view("frontend/jackpot",$data);
        $this->load->view("frontend/footer");
    }


    private function datearray($web_id,$draw){
        
        $datearray = array();

        $datearray[] = $_POST['date'];

        $totaldraw = $_POST['draw'];
        if($web_id==1){
            $t=0;
            $s=0;
            if(count($_POST['day'])>1){
                $t=1;
                $s=1;
            }
            else{
                if($_POST['day'][0]=="thursday"){
                    $t=1;
                }
                else{
                    $s=1;
                }
            }
            if($t==1){
                $friday = date("Y-m-d",strtotime('next thursday', strtotime($draw)));
                $datearray[] = $friday;
            }
            if($s==1){
                $tuesday = date("Y-m-d",strtotime('next sunday', strtotime($draw)));
                $datearray[] = $tuesday;
            }
            
            
            $su =1;
            $th =1;

            for($i=1; $i<=$totaldraw; $i++){;
                
                if($s==1 && $t==1){
                    if($i%2==0){
                        $k= $th*7;
                        $datearray[] = date("Y-m-d",strtotime("+".$k." day", strtotime($friday)));
                        $th++;
                    }
                    else{
                        $k= $su*7;
                        $datearray[] = date("Y-m-d",strtotime("+".$k." day", strtotime($tuesday)));
                        $su++;
                    }
                }
                else{
                    $k= $i*7;
                    if($s==1){
                        $datearray[] = date("Y-m-d",strtotime("+".$k." day", strtotime($tuesday)));
                    } 
                    if($t==1){
                        $datearray[] = date("Y-m-d",strtotime("+".$k." day", strtotime($friday)));
                    }
                }
            }
        }
        else if($web_id==2 || $web_id==3  || $web_id==4  || $web_id==5){

            $t=0;
            $s=0;
            if(count($_POST['day'])>1){
                $t=1;
                $s=1;
            }
            else{
                if($_POST['day'][0]=="wednesday"){
                    $t=1;
                }
                else{
                    $s=1;
                }
            }
            if($t==1){
                $friday = date("Y-m-d",strtotime('next wednesday', strtotime($draw)));
                $datearray[] = $friday;
            }
            if($s==1){
                $tuesday = date("Y-m-d",strtotime('next saturday', strtotime($draw)));
                $datearray[] = $tuesday;
            }
            
            
            $su =1;
            $th =1;

            for($i=1; $i<=$totaldraw; $i++){;
                
                if($s==1 && $t==1){
                    if($i%2==0){
                        $k= $th*7;
                        $datearray[] = date("Y-m-d",strtotime("+".$k." day", strtotime($friday)));
                        $th++;
                    }
                    else{
                        $k= $su*7;
                        $datearray[] = date("Y-m-d",strtotime("+".$k." day", strtotime($tuesday)));
                        $su++;
                    }
                }
                else{
                    $k= $i*7;
                    if($s==1){
                        $datearray[] = date("Y-m-d",strtotime("+".$k." day", strtotime($tuesday)));
                    } 
                    if($t==1){
                        $datearray[] = date("Y-m-d",strtotime("+".$k." day", strtotime($friday)));
                    }
                }
            }
       

            


            // $friday = date("Y-m-d",strtotime('next wednesday', strtotime($draw)));
            // $tuesday = date("Y-m-d",strtotime('next saturday', strtotime($draw)));

            // $datearray[] = $friday;
            // for($i=1; $i<=4; $i++){;
            //     $k= $i*7;
            //     $datearray[] = date("Y-m-d",strtotime("+".$k." day", strtotime($friday)));
            // }
            
            // $datearray[] = $tuesday;
            // for($i=1; $i<=4; $i++){;
            //     $k= $i*7;
            //     $datearray[] = date("Y-m-d",strtotime("+".$k." day", strtotime($tuesday)));
            // }
        }
        else if($web_id==6){
            $tuesday = date("Y-m-d",strtotime('next saturday', strtotime($draw)));

            $datearray[] = $tuesday;
            for($i=1; $i<=10; $i++){;
                $k= $i*7;
                $datearray[] = date("Y-m-d",strtotime("+".$k." day", strtotime($tuesday)));
            }
        }

        return $datearray;
    }

    public function addtocart()
    {
        if($this->session->userdata('isLoggedIn')!=TRUE) {
            $userId = $this->session->userdata('custom_userId');
        }
        else{
            $userId = $this->session->userdata('userId');
        }
        $web_id = $this->input->post('web_id');
        $draw_date = $this->input->post('date');
        $datearray= $this->datearray($web_id,$draw_date); 
        
        for($p=0;$p<$_POST['draw'];$p++){
            $dap= $datearray[$p];
            
            $f_count = $this->web_model->date_exist($web_id,$dap);
            if($f_count==0){
                $insert = array('date'=>$dap,
                'date_con'=>$dap." ".TIMEVAL,
                    'web_id'=>$web_id
                );
                $this->web_model->insert_date("tbl_dates",$insert);
            }
            for($i=1; $i<=$this->input->post('entry'); $i++){
                $insert = array();
                $insert = array(
                    "web_id"=>$this->input->post('web_id'),
                    "user_id"=>$userId,
                    "date"=>$dap,
                    "white1"=>$this->input->post('white_btn'.$i)[0],
                    "white2"=>$this->input->post('white_btn'.$i)[1],
                    "white3"=>$this->input->post('white_btn'.$i)[2],
                    "white4"=>$this->input->post('white_btn'.$i)[3],
                    "white5"=>$this->input->post('white_btn'.$i)[4],
                    "yellow1"=>$this->input->post('yellow_bt'.$i)[0],
                    "total_price"=>$this->input->post('total_price'),
                );
    
                
                if(count($_POST['white_btn'.$i])>5){
                    $insert['white6']= $this->input->post('white_btn'.$i)[5];
                }
                if(count($_POST['yellow_bt'.$i])>1){
                    $insert['yellow2']= $this->input->post('yellow_bt'.$i)[1];
                }
                $this->web_model->insert_date("tbl_cart",$insert);
            }
            
        }

        redirect("game/step2");
    }

    public function step2(){
        if($this->session->userdata('isLoggedIn')!=TRUE) {
            $userId = $this->session->userdata('custom_userId');
        }
        else{
            $userId = $this->session->userdata('userId');
        }
        $data['data']=$this->web_model->cart_data($userId);
        $this->load->view("frontend/header");
        $this->load->view("frontend/step2",$data);
        $this->load->view("frontend/footer");
    }

    public function confirm_order(){
        if($this->session->userdata('isLoggedIn')!=TRUE) {
            $this->session->set_flashdata('error', 'Please logged In before confirm the order');
            redirect("login");
            // $userId = $this->session->userdata('custom_userId');
        }
        else{
            $userId = $this->session->userdata('userId');
        }
        $data['data']=$this->web_model->order_data($userId);
        if(count($data['data'])==0){
            redirect("game/step2");
        }
        $this->load->view("frontend/header");
        $this->load->view("frontend/confirm_order",$data);
        $this->load->view("frontend/footer");
    }

    public function payment(){
        if($this->session->userdata('isLoggedIn')!=TRUE) {
            $this->session->set_flashdata('error', 'Access Denied!');
            redirect("login");
        }
        $userId = $this->session->userdata('userId');

        $data['pay']=$this->web_model->total_pay($userId);
        
        $data["money"] = $this->web_model->wallet();
        
        $this->load->view("frontend/header");
        $this->load->view("frontend/payment",$data);
        $this->load->view("frontend/footer");
    }

    public function deletecartdata()
    {      
        $userId = $this->input->post('userId');
        $result = $this->web_model->deleteWeb("tbl_cart",$userId);
        redirect("game/step2");
    
    }
    public function quick_play(){
        $web_id = $this->input->post('web_id');
        if($this->session->userdata('isLoggedIn')!=TRUE) {
            $userId = $this->session->userdata('custom_userId');
        }
        else{
            $userId = $this->session->userdata('userId');
        }

        // $this->web_model->clear_cart($userId);
        $range = $this->web_model->getrangeInfo($web_id);
        
        $white_from = $range->white_from;
        $white_to = $range->white_to;
        $yellow_from = $range->yellow_from;
        $yellow_to = $range->yellow_to;
        $price = $range->price;
        $date = $this->input->post('date');

        $select_quick = $this->input->post('select_quick');

        for($i=0; $i<$select_quick; $i++){
            $insert = array();
            $w1 = rand($white_from,$white_to);
            $w2 = rand($white_from,$white_to);
            $w3 = rand($white_from,$white_to);
            $w4 = rand($white_from,$white_to);
            $w5 = rand($white_from,$white_to);
            $y1 = rand($yellow_from,$yellow_to);
            $insert = array(
                "web_id"=>$web_id,
                "user_id"=>$userId,
                "date"=>$date,
                "white1"=>$w1,
                "white2"=>$w2,
                "white3"=>$w3,
                "white4"=>$w4,
                "white5"=>$w5,
                "yellow1"=>$y1,
                "total_price"=>$price,
            );

            if($range->white_ball==6){
                $insert['white6']= rand($white_from,$white_to);
            }
            if($range->yellow_ball==2){
                $insert['yellow2']= rand($yellow_from,$yellow_to);
            }
            $this->web_model->insert_date("tbl_cart",$insert);
        }
        redirect("game/step2");
    }

    public function result()
    {
        // error_reporting
        $lottery = $this->web_model->lottery_web();
        $error = 0;
        if(isset($_REQUEST['game']) && $_REQUEST['game']!=""){
            $first_l = $_REQUEST['game'];
            if(isset($_REQUEST['sdate']) && $_REQUEST['sdate']!=""){
                $d = date("Y-m-d",strtotime($_REQUEST['sdate']));
            }
            else{
                $error=1;
            }
        }
        else{
            $first_l = $lottery[0]->id;
            $date = $this->web_model->getalldates_result($first_l);
            $patterndate = "";
            if(count($date)>0){
                $d = $date[0]->date;
            }
        }
        
        $r_date = $this->web_model->drawing_detail($first_l,$d);
        $winner = $this->web_model->winner_detail($first_l,$d);

        $data = array("w_id"=>$first_l,"lottery"=>$lottery,"winner"=>$winner,"r_date"=>$r_date,"search_date"=>$d);

        if($error==1 || count($winner)==0){
            $this->session->set_flashdata('error', 'Something Went Wrong! Please try again.');
            redirect("game/result",$data);
        }

        $this->load->view("frontend/header",$data);
        $this->load->view("frontend/result");
        $this->load->view("frontend/footer");
    }

    public function order_con()
    {    
        $userId = $this->session->userdata('userId');
        $cart = $this->web_model->cart_data($userId);
        foreach($cart as $c){
            $insert = array();
            $insert['web_id'] = $c->web_id;
            $insert['user_id'] = $c->user_id;
            $insert['date'] = $c->date;
            $insert['white1'] =$c->white1;
            $insert['white2'] = $c->white2;
            $insert['white3'] = $c->white3;
            $insert['white4'] = $c->white4;
            $insert['white5'] = $c->white5;
            $insert['white6'] = $c->white6;
            $insert['yellow2'] = $c->yellow2;
            $insert['yellow1'] = $c->yellow1;
            $insert['total_price'] = $c->total_price;
            $insert['paid_type'] = $this->input->post('paymet_type');
            $insert['transaction_id']=$this->input->post('transaction_id');
            $this->web_model->insert_date("tbl_order",$insert);
            $userId = $c->id;
            $result = $this->web_model->deleteWeb("tbl_cart",$userId);
        }
        $this->session->set_flashdata('success', 'order confirmed successfully');
        redirect("account/order_history");
    }

    public function wallet_pay_order()
    {     
        $userId = $this->session->userdata('userId');
        $cart = $this->web_model->cart_data($userId);

        $wallet_money = $this->web_model->wallet();
        $pay=$this->web_model->total_pay($userId);

        if($wallet_money){
            $insert2 =array(
                    "user_id"=>$userId,
                    "money"=>($wallet_money->money-$pay->sums)
            );
            $this->web_model->editWeb_all("tbl_wallet",$insert2, $wallet_money->id);

            $insertdata = array("user_id"=>$userId,
                            "money"=>$pay->sums,
                            "trancaction_id"=>"",
                            "type"=>"Debit"
                        );
            $this->web_model->insert_date("tbl_wallet_history",$insertdata);
        }
        
        foreach($cart as $c){
            $insert = array();
            $insert['web_id'] = $c->web_id;
            $insert['user_id'] = $c->user_id;
            $insert['date'] = $c->date;
            $insert['white1'] =$c->white1;
            $insert['white2'] = $c->white2;
            $insert['white3'] = $c->white3;
            $insert['white4'] = $c->white4;
            $insert['white5'] = $c->white5;
            $insert['white6'] = $c->white6;
            $insert['yellow2'] = $c->yellow2;
            $insert['yellow1'] = $c->yellow1;
            $insert['total_price'] = $c->total_price;
            $insert['paid_type'] = "0";
            $insert['transaction_id']="";
            $this->web_model->insert_date("tbl_order",$insert);
            $userId = $c->id;
            $result = $this->web_model->deleteWeb("tbl_cart",$userId);
        }
        $this->session->set_flashdata('success', 'order confirmed successfully');
        redirect("account/order_history");
    }
}

?>