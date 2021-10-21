<div class="checkoutsec">
  <div class="container">
    <div class="row">
      <div class="col-md-8 m-auto">
        <div class="checkout_box">
            <h3>Order summary</h3>
            <div class="checkout_body">
                <div class="confirm_body">
                    <table class="table table-bordered">
                        <thead>
                          <tr>
                          <th scope="col">Game</th>
                            <th scope="col">Entry</th>
                            <th scope="col">Per Entry</th>
                            <th scope="col">Total</th>
                          </tr>
                        </thead>
                        <tbody>

                        <?php
                        $total=0;
                          foreach($data as $d){
                            ?>
                            
                          <tr>
                            <td><?php echo $d->name; ?></td>
                            <td><?php echo $d->counts; ?></td>
                            <td>$<?php echo $d->total_price; ?></td>
                            <td>$<?php echo $d->sums; ?></td>
                            
                          </tr>
                            <?php
                            $total+=$d->sums;
                          }
                        ?>
                          <tr>
                            <td colspan="3" align="right">Total Price</td>
                            <td>$<?php echo $total; ?></td>
                          </tr>
                        </tbody>
                      </table>

                      <div class="button_outer mt-3 text-right">
                          <!-- <a href="<?php echo base_url('game');?>" class="btn btn-warning">Add more Game</a> -->
                          <a href="<?php echo base_url('game/jackpot');?>" class="btn btn-primary">Add more Jackpot</a>
                          <a href="<?php echo base_url('game/step2');?>" class="btn btn-danger">Edit Order</a>
                          <a href="<?php echo base_url('game/payment');?>" class="btn btn-success">Continue to payment</a>
                      </div>
                </div>
            </div>
        </div>
        
      </div>
    </div>
  </div>
</div>