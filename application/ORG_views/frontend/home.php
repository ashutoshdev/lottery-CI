

    <div class="banner">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6">
            <div class="banner_box">
              <h4>BET ON OUR BOOSTED</h4>
              <p>COMBO JACKPOT AND GET 10% OFF!</p>
              <h2>$ <span>1.015</span>Billion</h2>
              <a class="playnow_btn" href="#">Play Now</a>
            </div>
          </div>
          <div class="col-md-6"><img src="<?php echo base_url('public'); ?>/images/banner.png"></div>
        </div>
      </div>
    </div>


    <div class="lottery_games">
      <div class="container">
        <div class="row">

      <?php
      $counter =0;
        if(count($website)>0){
          foreach($website as $wb){
            switch ($counter) {
              case "0":
                  $class= "orange_color";
                  break;
              case "1":
                $class= "purpal_color";
                  break;
              case "2":
              $class= "yellow_color";
                  break;
              default:
              $class= "pink_color";
          }
            ?>
          <div class="col-md-4">
            <div class="games_box <?php echo $class; ?>">
              <h4><?php echo  $wb->name; ?></h4>
              <p>$<?php echo $wb->price; ?></p>
              <ul>
                <li><a href="<?php echo base_url(); ?>game/type/<?= $wb->id; ?>">Read More</a><!--<span>1day 14h 33m 55s</span>--></li>
              </ul>
            </div>
          </div>


            <?php
$counter++;
          }
        }
      ?>
          
          <div class="col-md-5">
          </div>
          <div class="col-md-2">
          <a href="<?php echo base_url(); ?>game" class="btn btn-warning">More Games</a>
          </div>
          <div class="col-md-5">
          </div>
        </div>
      </div>
    </div>



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
                  <h3><?php echo $l->jackpot; ?></h3>

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
      <div class="row">
        
          <div class="col-md-5">
          </div>
          <div class="col-md-2">
          <br><br>
          <a href="<?php echo base_url(); ?>game/jackpot" class="btn btn-warning">More Jackpots</a>
          </div>
          <div class="col-md-5">
          </div>
        </div>
      </div>
    </div>


    <div class="strip_drow">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-7">
            <h2>Never Miss a Draw</h2>
            <p>Many lotto winners miss out because they lose their ticket or forget to check their numbers. They might even forget to buy their tickets altogether. With WinTrillions you'll never miss a draw, never lose a ticket. We'll send you the numbers you are playing before each draw and we'll always let you know when you win.</p>
          </div>
          <div class="col-md-5">
            <img src="<?php echo base_url('public'); ?>/images/lottery_ticket.png">
          </div>
        </div>
      </div>
    </div>

    <div class="satisfaction">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-5">
            <img src="<?php echo base_url('public'); ?>/images/100-percent.svg">
          </div>
          <div class="col-md-7">
            <h2>100% Satisfaction <br>Guaranteed</h2>
            <p>Many lotto winners miss out because they lose their ticket or forget to check their numbers. They might even forget to buy their tickets altogether. With WinTrillions you'll never miss a draw, never lose a ticket. We'll send you the numbers you are playing before each draw and we'll always let you know when you win.</p>
          </div>
          
        </div>
      </div>
    </div>
    
    <div class="winners">
      <div class="container">
        <h1 class="text-center">Our Winners</h1>
        <div class="row">
          <div class="col-md-4">
            <div class="winner_box">
              <div class="winimg_box">
                <img src="<?php echo base_url('public'); ?>/images/price.svg">
              </div>
              <h5>Prizes Paid Out</h5>
              <h2>US$ 95,416,306</h2>
              <p>4,895,891 World Wide Winners</p>
              <a href="#">Read More</a>
            </div>
          </div>

          <div class="col-md-4">
            <div class="winner_box">
              <div class="winimg_box">
                <img src="<?php echo base_url('public'); ?>/images/winner.svg">
              </div>
              <h5>Our Recent Winners</h5>
              <p>Sigurdur G. S. - Iceland</p>
              <p>Italy - SuperEnalotto</p>
              <p>26 Jun 2019 / <strong>€ 157.54</strong></p>
  
            </div>
          </div>

          <div class="col-md-4">
            <div class="winner_box">
              <div class="winimg_box">
                <img src="<?php echo base_url('public'); ?>/images/qote.svg">
              </div>
              <i>
                I will continue to play with theLotter because it gives me a chance to dream!
              </i>
              <p>Veronique T.</p>
              <a href="#">Read More</a>
            </div>
          </div>

        </div>
      </div>
    </div>

