    <footer>
      <div class="container">
        <h3 class="text-center"><a href="#"><img src="<?php echo base_url('public'); ?>/images/logo.svg"></a></h3>
        <hr>

        <div class="row">
          <div class="col-sm-3">
            <div class="footer_box">
                <h6>Lottery</h6>
              <ul>
                <!-- <li><a href="<?= base_url('game');?>">Lotteries</a></li> -->
                <li><a href="<?= base_url('game');?>/jackpot">Lottery</a></li>
                <li><a href="<?= base_url('page/help');?>">Help</a></li>
                <li><a href="<?= base_url('faq');?>">FAQ</a></li>
              </ul>
            </div>
          </div>

          <div class="col-sm-3">
            <div class="footer_box">
                <h6>Info</h6>
              <ul>
                <li><a href="<?= base_url('page/policy');?>">Privacy Policy</a></li>
                <li><a href="<?= base_url('page/terms');?>">Terms and Conditions</a></li>
                
              </ul>
            </div>
          </div>
          
          <div class="col-sm-3">
            <div class="footer_box">
                <h6>Games</h6>
              <ul>

            <?php
            $web = $this->user_model->get_allweb();
            foreach ($web as $w) {
              if($w->status==0){
              ?>
              <li>
              <a href="<?php echo base_url(); ?>game/type/<?= $w->id; ?>">
              <?= $w->name?>
                </a>
              </li>
              <?php 
              }
            }
          ?>
              </ul>
            </div>
          </div>
           
          <div class="col-sm-3">
            <div class="footer_box">
              <h6>Contact Us</h6>
              <ul>
                <li><a href="<?= base_url('page/about_us');?>">About Us</a></li>
                <li><a href="<?php echo base_url('contact'); ?>">Contact Us</a></li>
                


              </ul>
            </div>
          </div>

        </div>

        <div class="copywright">
          <div class="social_media">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-google-plus-g"></i></a>
            <a href="#"><i class="fab fa-youtube"></i></a>
            <p>copyright© lotterygames. All rights reserved.</p>
          </div>
        </div>

      </div>
    </footer>



    
  </body>
</html>