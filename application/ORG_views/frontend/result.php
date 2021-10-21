
    
    <div class="prize_sec">
      <div class="container">
        <div class="prizeheader">
          <div class="row">
            <div class="col-md-6">
              <h4>Find the result Here</h4>
            </div>
            <div class="col-sm-6">
              <div class="resultfilter d-flex justify-content-end">
              <form class="form-inline" action="" method="get">
                
              <div class="form-group">
                <div class="selectbox">
                <label>Game - </label>
                  <select id="dateSelect" name="game">	
                  
                    <?php 
                      foreach($lottery as $l){
                        echo "<option value='".$l->id."'>".$l->name."</option>";
                      }
                    ?>
                  </select>
                  <label>Select Date - </label>

                  <?php
                    $error = $this->session->flashdata('error');
                    if($error)
                    {
                      $search_date ="";
                    }
                  ?>

                  <input type="text" id="datepicker" name="sdate" value="<?php echo date("m/d/Y",strtotime($search_date));?>">

                  </div>
                  </div>
                  &nbsp;&nbsp;&nbsp;
                  <input class="btn btn-primary" type="submit" value="Filter">

                  </form>
                                
              </div>
            </div>
          </div>
        </div>



        <?php
                        
                        
                        
                        if($error)
                        {
                    ?>
                    <div class="alert alert-warning alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <?php echo $this->session->flashdata('error'); ?>
                    </div>
                    <?php } 
                    else{
                    ?>

        <div class="resultlist">
          <div class="resultlist_header">


            <h6>Results For <?php echo date("M d, Y",strtotime($search_date)); ?></h6>
            <div class="result_number">
              <ul>
              
                <li><?php echo $r_date->whiteball1; ?></li>
                <li><?php echo $r_date->whiteball2; ?></li>
                <li><?php echo $r_date->whiteball3; ?></li>
                <li><?php echo $r_date->whiteball4; ?></li>
                <li><?php echo $r_date->whiteball5; ?></li>

                <?php 
                  if($r_date->whiteball6!=0){
                    echo $r_date->whiteball6;
                  }
                ?>
                <li class="active"><?php echo $r_date->megaball; ?></li>

                <?php 
                  if($r_date->megaball1!=0){
                    echo $r_date->megaball1;
                  }
                ?>


              </ul>
            </div>
          </div>
          <div class="table-responsive">

         <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th scope="col">Tier</th>
                      <th scope="col">Match</th>
                      <th scope="col">Amount</th>
                    </tr>
                  </thead>
                  <tbody>

                  <?php 
                  $sr =1;
                    foreach($winner as $w){
                        ?>
                        <tr>
                        <td><?php echo $sr; ?></td>
                        <td><?php echo $w->whiteball?> White Ball + <?php echo $w->megaball?> Mega Ball  </td>

                        <td><?php if($w->is_jackpot==1){ echo "Grand Prize";}else{ echo $w->price_amount;} ?></td>
                        
                        </tr>
                        <?php
                       $sr++;
                    }
                  ?>
                  </tbody>
                </table>
          </div>
        </div>
        <?php
          }
          ?>

      </div>
    </div>


    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
