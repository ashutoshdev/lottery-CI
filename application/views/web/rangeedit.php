


<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-users"></i> <?php echo $WebInfo->name ?> Management
        <small>Edit Range</small>
      </h1>
    </section>
    
    <section class="content">
    
        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
              <!-- general form elements -->
                
                
                
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Enter Range</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    
                    <form role="form" action="<?php echo base_url() ?>web/editRange" method="post" id="editUser" role="form" enctype="multipart/form-data">

                    <input type="hidden" value="<?php echo $rangeInfo->id; ?>" name="id" id="id" /> 

                    <input type="hidden" value="<?php echo $rangeInfo->web_id; ?>" name="web_id" id="id" /> 
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">   
                                    
                                    <div class="form-group">
                                        <label for="fname">White Ball Maximum Selection</label>
                                        <select class="form-control" name="white_ball">
                                        <?php for($i=5; $i<=6; $i++){
                                            if($rangeInfo->white_ball== $i){
                                               echo "<option selected value='".$i."'>$i</option>"; 
                                            }
                                            else{
                                                echo "<option value='".$i."'>$i</option>";
                                            }
                                        } 
                                        ?>
                                        </select>   
                                    </div>

                                    <div class="form-group">
                                        <label for="fname">White Ball From</label>
                                        <select class="form-control" name="white_from">
                                        <?php for($i=1; $i<=100; $i++){
                                            if($rangeInfo->white_from== $i){
                                               echo "<option selected value='".$i."'>$i</option>"; 
                                            }
                                            else{
                                                echo "<option value='".$i."'>$i</option>";
                                            }
                                        } 
                                        ?>
                                        </select>   
                                    </div>



                                    <div class="form-group">
                                        <label for="fname">White Ball To</label>
                                        <select class="form-control" name="white_to">
                                        <?php for($i=1; $i<=100; $i++){
                                            if($rangeInfo->white_to== $i){
                                               echo "<option selected value='".$i."'>$i</option>"; 
                                            }
                                            else{
                                                echo "<option value='".$i."'>$i</option>";
                                            }
                                        } 
                                        ?>
                                        </select>   
                                    </div>

                                    <div class="form-group">
                                        <label for="fname">Yellow Ball Maximum Selection</label>
                                        <select class="form-control" name="yellow_ball">
                                        <?php for($i=1; $i<=2; $i++){
                                            if($rangeInfo->yellow_ball== $i){
                                               echo "<option selected value='".$i."'>$i</option>"; 
                                            }
                                            else{
                                                echo "<option value='".$i."'>$i</option>";
                                            }
                                        } 
                                        ?>
                                        </select>   
                                    </div>

                                    <div class="form-group">
                                        <label for="fname">Yellow Ball From</label>
                                        <select class="form-control" name="yellow_from">
                                        <?php for($i=1; $i<=100; $i++){
                                            if($rangeInfo->yellow_from== $i){
                                               echo "<option selected value='".$i."'>$i</option>"; 
                                            }
                                            else{
                                                echo "<option value='".$i."'>$i</option>";
                                            }
                                        } 
                                        ?>
                                        </select>   
                                    </div>

                                    

                                    <div class="form-group">
                                        <label for="fname">Yellow Ball To</label>
                                        <select class="form-control" name="yellow_to">
                                        <?php for($i=1; $i<=100; $i++){
                                            if($rangeInfo->yellow_to== $i){
                                               echo "<option selected value='".$i."'>$i</option>"; 
                                            }
                                            else{
                                                echo "<option value='".$i."'>$i</option>";
                                            }
                                        } 
                                        ?>
                                        </select>   
                                    </div>

                                    <div class="form-group">
                                        <label for="fname">Quick Play</label>
                                        <select class="form-control" name="quantity">
                                        <?php for($i=1; $i<=15; $i++){
                                            if($rangeInfo->quantity== $i){
                                               echo "<option selected value='".$i."'>$i</option>"; 
                                            }
                                            else{
                                                echo "<option value='".$i."'>$i</option>";
                                            }
                                        } 
                                        ?>
                                        </select>   
                                    </div>

                                    <div class="form-group">
                                        <label for="fname">Price ($)</label>
                                        <input class="form-control" type="number" required name="price" value="<?php echo $rangeInfo->price; ?>">
                                    </div>


                                    <div class="form-group">
                                        <label for="fname">Heading </label>
                                        <input class="form-control" type="text" required name="heading" value="<?php echo $rangeInfo->heading; ?>">
                                    </div>



                                    <div class="form-group">
                                        <label for="fname">Jackpot Price</label>
                                        <input class="form-control" type="text" required name="jackpot" value="<?php echo $rangeInfo->jackpot; ?>">
                                    </div>

                                    <div class="form-group">
                                        <label for="fname">Edit Logo</label>
                                        <input class="form-control" type="file" name="logo" >


                                    </div>

                                    
                                </div>
                            </div>
                            
                        </div><!-- /.box-body -->
    
                        <div class="box-footer">
                            <input type="submit" class="btn btn-primary" value="Submit" />
                            <input type="reset" class="btn btn-default" value="Reset" />
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-4">
                <?php
                    $this->load->helper('form');
                    $error = $this->session->flashdata('error');
                    if($error)
                    {
                ?>
                <div class="alert alert-danger alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <?php echo $this->session->flashdata('error'); ?>                    
                </div>
                <?php } ?>
                <?php  
                    $success = $this->session->flashdata('success');
                    if($success)
                    {
                ?>
                <div class="alert alert-success alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <?php echo $this->session->flashdata('success'); ?>
                </div>
                <?php } ?>
                
                <div class="row">
                    <div class="col-md-12">
                        <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
                    </div>
                </div>
            </div>
        </div>    
    </section>
</div>

