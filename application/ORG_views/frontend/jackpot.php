



    <div class="moregames">
      <div class="container">
        <div class="row">

        <?php 
          foreach($lottery as $l){
            ?>
              <div class="col-md-3">
              <div class="moregamescard moregames_bg">
                <div class="moregamescard_body">
                    <div class="more_cardheader">
                        <h4><?php echo $l->name; ?></h4>
                    </div>
                  <h4><?php echo $l->jackpot; ?></h4>

                  <h6><?php echo date("M d, Y",strtotime($l->date)); ?></h6>

                  <!-- <ul class="countdown_timer">
                      <li><span id="days"></span>days</li>
                      <li><span id="hours"></span>Hours</li>
                      <li><span id="minutes"></span>Minutes</li>
                      <li><span id="seconds"></span>Seconds</li>
                    </ul> -->

                    <form action="<?php echo base_url('game/quick_play'); ?>" method="post">
                    <label >Select Entry </label>
                    <select name="select_quick">
                    <?php
                        for($i=1;$i<=$l->quantity; $i++){
                          echo "<option value='".$i."'>".$i."</option>";
                        }
                      ?>
                      
                    </select>
                    <br>
                    <input type="submit" class="btn btn-block btn-light" value="Quick Play">
                    <input type="hidden" name="date" value="<?php echo $l->date; ?>">
                    
                    <input type="hidden" name="web_id" value="<?php echo $l->id; ?>">
          </form>
                </div>
                </div>
          </div>
            <?php 
          }
        ?>


          
        </div>
      </div>
    </div>