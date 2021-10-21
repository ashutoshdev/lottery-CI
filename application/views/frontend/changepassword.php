<?php
$userId = $userInfo->userId;
$name = $userInfo->name;
$email = $userInfo->email;
$mobile = $userInfo->mobile;
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
                  <a href="<?php echo base_url() ?>account" class="nav-link " ><i class="fas fa-user"></i> Profile</a>
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
                <!-- <li class="nav-item">
                  <a href="<?php echo base_url() ?>account/history"  class="nav-link"><i class="fas fa-history"></i>Order History</a>
                </li> -->
                <li class="nav-item">
                  <a href="<?php echo base_url() ?>account/changepassword"  class="nav-link active"><i class="fas fa-cog"></i> Change Password</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-9">
            <!-- Tab panes -->
            <div class="tab-content myaccount_content">
              
              <div class="tab-pane active" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                  <h4 class="mb-3">Change Password</h4>
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
                        
                        
                        $noMatch = $this->session->flashdata('nomatch');
                        if($noMatch)
                        {
                    ?>
                    <div class="alert alert-warning alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <?php echo $this->session->flashdata('nomatch'); ?>
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


                      <form action="<?php echo base_url() ?>account/passwordUpdate" method="post" >
                              <div class="row">
                                <div class="col-12 mb-2">
                                <label for="inputOldPassword"><b>Old Password</b></label>
                                </div>
                                <div class="col-md-12">
                                <input type="password" class="form-control" id="inputOldPassword" placeholder="Old password" name="oldPassword" maxlength="20" required>


                                </div>


                              </div>

                              <hr>




                              <div class="row">
                                <div class="col-12 mb-1 mt-3">
                                <label for="inputPassword1"><b>New Password</b></label>
                                </div>
                                <div class="col-md-12">
                                <input type="password" class="form-control" id="inputPassword1" placeholder="New password" name="newPassword" maxlength="20" required>

                                </div>
                              </div>

                              
                              <div class="row">
                                <div class="col-12 mb-1 mt-3">
                                <label for="inputPassword2"><b>Confirm New Password</b></label>
                                </div>
                                <div class="col-md-12">
                                  
                                <input type="password" class="form-control" id="inputPassword2" placeholder="Confirm new password" name="cNewPassword" maxlength="20" required>

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

    

 
