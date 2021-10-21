<?php
$userId = $userInfo->userId;
$name = $userInfo->name;
$email = $userInfo->email;
$mobile = $userInfo->mobile;

$bank = $userInfo->bank;
$paypal = $userInfo->paypal;
$roleId = $userInfo->roleId;
$role = $userInfo->role;
?>
<div class="myaccount">
      <div class="container">
          <h4 class="mb-4">My Accounts</h4>
        <div class="row">
          <div class="col-md-3">
            <div class="account_menu">
              <ul class="nav flex-column">
                <li>
                  <a href="<?php echo base_url() ?>account" class="nav-link active" ><i class="fas fa-user"></i> Profile</a>
                </li>
                <li>
                  <a href="<?php echo base_url() ?>account/wallet"  class="nav-link"><i class="fas fa-wallet"></i>Wallet</a>
                </li>
                
                <li>
                  <a href="<?php echo base_url() ?>account/refund"  class="nav-link"><i class="fas fa-wallet"></i>Refund History</a>
                </li>
                
                <li>
                  <a href="<?php echo base_url() ?>account/withdrawal"  class="nav-link"><i class="fas fa-wallet"></i>Withdrawal History</a>
                </li>


                <li>
                  <a href="<?php echo base_url() ?>account/transfer"  class="nav-link"><i class="fas fa-wallet"></i>Transfer History</a>
                </li>
                
                <li>
            <a href="<?php echo base_url() ?>account/winner_history"  class="nav-link"><i class="fas fa-history"></i>Winner History</a>
            </li>
                <li>
                  <a href="<?php echo base_url() ?>account/order_history"  class="nav-link"><i class="fas fa-history"></i>Play History</a>
                </li>
                
                <li class="nav-item">
                  <a href="<?php echo base_url() ?>account/changepassword"  class="nav-link"><i class="fas fa-cog"></i> Change Password</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-9">
            <!-- Tab panes -->
            <div class="tab-content myaccount_content">
              
              <div class="tab-pane active" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                  <h4 class="mb-3">Profile</h4>
                  <div class="profilebox_sec">
                    <div class="row">
                      <div class="col-md-6">


                      

                      <?php
                        $this->load->helper('form');
                        ?>

                        <div class="row">
                                    <div class="col-md-12">
                                        <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
                                    </div>
                                </div>

                        <?php
                        $error = $this->session->flashdata('error');
                        if($error)
                        {
                            ?>
                            <div class="alert alert-danger alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <?php echo $error; ?>                    
                            </div>
                        <?php }
                        $success = $this->session->flashdata('success');
                        if($success)
                        {
                            ?>
                            <div class="alert alert-success alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <?php echo $success; ?>                    
                            </div>
                        <?php } ?>


                      <form action="<?php echo base_url() ?>account/pUpdate" method="post" >
                              <div class="row">
                                <div class="col-12 mb-2">
                                <label for="fname"><b>Full Name</b></label>
                                </div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control" id="fname" name="fname" placeholder="<?php echo $name; ?>" value="<?php echo set_value('fname', $name); ?>" maxlength="128" />
                                    <input type="hidden" value="<?php echo $userId; ?>" name="userId" id="userId" />


                                </div>


                              </div>



                              <div class="row">
                                <div class="col-12 mb-1 mt-3">
                                <label for="email"><b>Email</b></label>
                                </div>
                                <div class="col-md-12">

                                <input type="text" class="form-control" id="email" name="email" placeholder="<?php echo $email; ?>" value="<?php echo set_value('email', $email); ?>">

                                </div>
                              </div>

                             
                              <div class="row">
                                <div class="col-12 mb-1 mt-3">
                                <label for="email"><b>Phone Code</b></label>
                                </div>
                                <div class="col-md-12">
                                
                                <select class="form-control" name="phonecode" required >
                                <option value="">Choose Your Country Phone Code</option>
                                  <?php
                                    foreach($country as $c){
                                      ?>
                                        <option <?php echo ($userInfo->phonecode == $c->phonecode)? "selected":""; ?> value="<?= $c->phonecode ?>"><?= $c->name."(+".$c->phonecode.")"?></option>
                                      <?php
                                    }
                                  ?>
                                </select>
                                
                                </div>
                              </div>

                              <div class="row">
                                <div class="col-12 mb-1 mt-3">
                                <label for="mobile"><b>Mobile Number</b></label>
                                </div>
                                <div class="col-md-12">
                                  
                                <input type="text" class="form-control" id="mobile" name="mobile" placeholder="<?php echo $mobile; ?>" value="<?php echo set_value('mobile', $mobile); ?>" maxlength="10">

                                </div>
                              </div>


                              <div class="row">
                                <div class="col-12 mb-1 mt-3">
                                <label for="paypal"><b>Paypal Email</b></label>
                                </div>
                                <div class="col-md-12">
                                  
                                <input type="email" class="form-control" id="paypal" name="paypal" placeholder="<?php echo $paypal; ?>" value="<?php echo set_value('paypal', $paypal); ?>">

                                </div>
                              </div>

                              <div class="row">
                                <div class="col-12 mb-1 mt-3">
                                <label for="bank"><b>Bank Detail</b></label>
                                </div>
                                <div class="col-md-12">
                                  <textarea name="bank" class="form-control"><?php echo set_value('bank', $bank); ?></textarea>
                                </div>
                              </div>
                              

                              <div class="row mt-3">
                                  <div class="col-md-12">
                                  <input type="submit" class="btn btn-success btn-block" value="Update">

                                  </div>
                                </div>


    
                          </form>
                      </div>
                    </div>
                      
                  </div>
              </div>
              
            </div>
          </div>
        </div>
      </div>
    </div>

    

 
