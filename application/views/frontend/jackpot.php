



    <div class="moregames">
      <div class="container">
        <div class="row">

        <?php 
          $counter=1;
          foreach($lottery as $l){
            ?>
              <div class="col-md-4">
              <div class="moregamescard moregames_bg">
                <div class="moregamescard_body">
                    <div class="more_cardheader">

                    <img style="height:100px;" src="<?php echo base_url('assets/imglogo')."/".$l->logo;?>">

                <h4><?php echo $l->name; ?></h4>
                </div>
                  <h3><?php echo $l->jackpot; ?></h3>

                  <h6><?php if($l->date){  echo date("M d, Y",strtotime($l->date)); }else{ echo "Pending"; } ?></h6>

                  <?php if($l->date){ ?>
                  <input type="hidden" id="date<?php echo $counter; ?>" value="<?php echo date("M d, Y 00:00:00",strtotime("+1 day", strtotime($l->date))) ?>">
                  <ul class="countdown_timer total_rk" data-ids="<?php echo $counter;?>">
                  
                      <li><span id="days<?php echo $counter; ?>"></span>days</li>
                      <li><span id="hours<?php echo $counter; ?>"></span>Hours</li>
                      <li><span id="minutes<?php echo $counter; ?>"></span>Minutes</li>
                      <li><span id="seconds<?php echo $counter; ?>"></span>Seconds</li>
                    </ul> 
                  <?php } ?>
                  <a href="<?php echo base_url(); ?>game/type/<?= $l->id; ?>" class="btn btn-block btn-light">Play Now</a>
                 

                    <!-- <form action="<?php echo base_url('game/quick_play'); ?>" method="post">
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
          </form>-->
                </div>
                </div>
          </div>
            <?php 

            $counter++;
          }
        ?>



          
        </div>
      </div>
    </div>




<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    

    <script>
    
        function repeat_time(ids,countDown){
          const second = 1000,
          minute = second * 60,
          hour = minute * 60,
          day = hour * 24;
          
          $ids = ids;
          setInterval(function() {
    
            $( ".total_rk" ).each(function( index ) {
              $this = $(this);
              $ids = $this.data('ids');
              let countDown = new Date($("#date"+$ids).val()).getTime();
              repeat_time($ids,countDown);
    
              let now = new Date().getTime(),
                  distance = countDown - now;
              document.getElementById('days'+$ids).innerText = Math.floor(distance / (day)),
                document.getElementById('hours'+$ids).innerText = Math.floor((distance % (day)) / (hour)),
                document.getElementById('minutes'+$ids).innerText = Math.floor((distance % (hour)) / (minute)),
                document.getElementById('seconds'+$ids).innerText = Math.floor((distance % (minute)) / second);
            });
            
          }, second)
        }
    
        repeat_time();
    
    </script>