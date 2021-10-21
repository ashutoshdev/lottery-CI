
    <div class="cartsummary">
      <div class="container">

      <?php
        if(count($data)==0){
          ?>
          Cart is empty. Please proceed with <a href="<?php echo base_url('game/jackpot') ?>" class="btn btn-link">Games</a>
          <?php
        }
        else{
          ?>
          <h3>Step 2 - Confirm your entries</h3>
          <div class="cartsummary_box">
          <h4>Cart summary</h4>
          <div class="cartsummery_body">
            <div class="numbertable table-responsive">
                <table class="table table-striped">
                    <thead class="thead-dark">
                      <tr>
                        <th>NUMBERS</th>
                        <th>GAME</th>
                        <th>DRAW DATE</th>
                        <th>Price ($)</th>
                        <th>Action</th>

                      </tr>
                    </thead>
                    <tbody>
                      
                      <?php 
                      $total =0;
                        foreach($data as $d){
                          ?>
                            <tr>
                              <form action="<?php echo base_url(); ?>game/deletecartdata" method="post" onsubmit="return confirm('Do you really want to Delete the entry?');">
                        <td>
                          <ul class="numberdegits">
                            <li><?php echo $d->white1; ?></li>
                            <li ><?php echo $d->white2; ?></li>
                            <li><?php echo $d->white3; ?></li>
                            <li><?php echo $d->white4; ?></li>
                            <li><?php echo $d->white5; ?></li>
                            <?php
                            if($d->white6!=""){
                              ?>
                            <li><?php echo $d->white6; ?></li>
                              <?php
                            }
                            ?>
                            
                            <li style="background:yellow;color:black"><?php echo $d->yellow1; ?></li>

                            <?php
                            if($d->yellow2!=""){
                              ?>
                            <li style="background:yellow;color:black"><?php echo $d->yellow2; ?></li>
                              <?php
                            }
                            ?>

                          </ul>
                        </td>
                        <td><?php echo $d->name; ?></td>
                        <td><?php echo date("M d, Y",strtotime($d->date)); ?></td>
                        <td><?= $d->total_price;?></td>
                        <td>
                          <input type="hidden" value="<?php echo $d->id; ?>" name="userId">
                        <input type="submit" class="btn btn-sm btn-danger"  data-userid="<?php echo $d->id; ?>"  value="Remove">
                      </td>
                        </form>
                      </tr>
                      
                          <?php 
                          $total+=$d->total_price;
                        }
                      
                      ?>

                    <tr>
                      <td colspan="3" style="text-align:right">
                       <b> Total Price ($)</b>
                    </td>
                    <td colspan="2" style="text-align:left">
                      <b><?= $total ?></b>
                      </td>
                      </tr>
                      
                    </tbody>
                  </table>


                  <center>
                    <a href="<?php echo base_url(); ?>game/confirm_order" class="btn btn-warning btn-lg" role="button" aria-pressed="true">Confirm Order</a>
                  </center>
            </div>
            
          </div>
        </div>

         
         <?php 
        }
      ?>
  </div>
</div>
    