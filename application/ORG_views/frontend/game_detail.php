
    <link rel="stylesheet" href="<?php echo base_url(); ?>public/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>public/css/owl.theme.default.css">


    <div class="quiz_sec pt-4 pb-4">
      <form method="post" action="<?php echo base_url('game/addtocart'); ?>">
        <div class="container">
          <div class="quizsec_inn text-white bg-dark card text-center mb-4">
          <div class="row align-items-center">
            <div class="col-md-4">
              <div class="quizsec_box">
                <h3><?php echo $website->name;?></h3>
              </div>
            </div>
            <div class="col-md-4">
              <div class="quizsec_box quizsec_border">
                <p>Jackpot</p>
                <h3><?php echo $range->jackpot; ?></h3>
                <p><small>Cost per entry - $<?php echo $range->price; ?></small></p>
              </div>
            </div>
              <div class="col-md-4">
                <div class="quizsec_box">
                  <p><?php echo (count($dates)>0)? date("M d, Y",strtotime($dates[0]->date)):"No Date available" ; ?></p>
                  <?php if(count($dates)>0){
                    ?>
                    
                  <ul class="countdown_timer">
                    <li><span id="days"></span>days</li>
                    <li><span id="hours"></span>Hours</li>
                    <li><span id="minutes"></span>Minutes</li>
                    <li><span id="seconds"></span>Seconds</li>
                  </ul>
                    <?php
                  } ?>
                </div>
              </div>
          </div>
        </div>

        <div class="row">
            <div class="col-sm-5">
              <div class="card">
                  <div class="card-header">
                    <h5 class="card-title">Quick pick options</h5>
                  </div>
                <div class="card-body">
                  <p class="card-text">Select Mulitple Entry</p>
                  <div class="form-group">
                      <select name="entry" id="inputState" data-price="<?php echo $range->price; ?>" class="form-control">

                      <?php
                        for($i=1;$i<=$range->quantity;$i++){
                          echo "<option value='".$i."'>Quick pick ".$i." entry</option>";
                        }
                      ?>
                      
                      </select>
                    </div>
                </div>
              </div>
            </div>
            <div class="col-sm-7">
              <div class="card">
                  <div class="card-header">
                      <h5 class="card-title">Select your span</h5>
                    </div>
                <div class="card-body">
                  <div class="row">
                  <div class="form-group col-md-5">
                      <?php if(count($dates)==0){
                        echo "No Date available";
                      }
                      else{
                        ?>
                        
                      <label for="inputState">Starting</label>
                      <select name="date" class="form-control">
                        <?php
                          foreach($dates as $d){
                            echo "<option value='".$d->date."'>".date("M d, Y",strtotime($d->date))."</option>";
                          }
                        ?>
                      </select>
                        <?php
                      } ?>
                    </div>
                    <div class="form-group col-md-5">
                      <label for="inputState">Total Price</label>
                      <b>$<span id="pricechange"><?php echo $range->price; ?></span></b>

                      <input type="hidden" name="web_id" value="<?php echo $range->web_id; ?>">

                      <input type="hidden" name="total_price" value="<?php echo $range->price; ?>">

                      <input type="hidden" id="total_price" value="<?php echo $range->price; ?>">
                    </div>

                </div>
              </div>
            </div>
          </div>
      </div>
    </div>

    <h2 class="mb-3 mt-3"><center>Or Other Option</center></h2>

    <div class="picknumber_sec">
      <div class="container">
          <div class="row">

              

          <?php
          for($jk=1;$jk<=$range->quantity;$jk++){
              ?>
                <div class="col-12 col-sm-6 col-md-4 col-lg-4">  
              <div data-check="<?php echo $jk; ?>" class="item item_rk" <?php if($jk>1){ echo "style='display:none;'"; } ?>>
                <div class="quizno_box">
                <div class="quiznobox_header quiznobox_header_rk"><h4>Entry No - <?php echo $jk;?></h4></div>
                  <!-- <div class="quiznobox_header">
                      <button type="button" class="btn btn-dark btn-block">Quick Pick</button>
                  </div> -->
                  <div class="quizstrip">
                      Choose 5 number
                  </div>
                  <div class="quiznobox_body upper_div first_rk">
                      <ul>
                      <?php
                      $counter =1;
                      for($i=(int) $range->white_from; $i<=(int) $range->white_to; $i++){
                          ?>
                            <li class="<?php if($counter<=(int) $range->white_ball){ echo "selected";} ?>"><input name="white_btn<?php echo $jk; ?>[]" <?php if($counter<=(int) $range->white_ball){ echo "checked";} ?> class="lottery_number " type="checkbox" value="<?php echo $i;?>" id="l<?php echo $i;?>"><?php echo $i; ?></li>
                          <?php
                          $counter++;
                        }
                      ?>
                      </ul>
                  </div>

                  <div class="quizstrip">
                      Choose 1 number
                  </div>
                  <div class="quiznobox_body lower_div first_rk1">
                      <ul>
                    <?php
                    $counter=0;
                      for($i=(int) $range->yellow_from; $i<=(int) $range->yellow_to; $i++){
                          ?>
                            <li class="<?php if($counter<(int) $range->yellow_ball){ echo "selected";} ?>"><input class="lottery_number" name="yellow_bt<?php echo $jk; ?>[]" type="checkbox"  <?php if($counter<(int) $range->yellow_ball){ echo "checked";} ?> value="<?php echo $i;?>" id="l<?php echo $i;?>"><?php echo $i; ?></li>
                          <?php
                      $counter++;  
                      }
                        ?>
                        
                      </ul>
                    </div>
                    </div>
                </div>
              </div>

              <?php
            }
          ?>
          
                 
          </div>
          <!-- <br>
          <span style="color:red;">Note: Add to cart will remove your old selected entries in cart</span> -->
          
          <br>
          
          <input type="submit" value="Add To Cart" id="addclickcart" class="btn btn-warning">
      </div>
    
    </div>

             

   

   


    <div class="lottery_rules">
      <div class="container">
        <div class="row mb-3">
          <div class="col-md-8"><h4> Play the <?php echo $website->name;?> Lottery online </h4></div>
          <div class="col-md-4 text-lg-right">
            <a href="#" class="btn btn-warning" role="button" aria-pressed="true">Results</a>
          </div>
        </div>

        <div class="howto_play">


          <div class="card w-100 mb-2">
            <div class="card-header text-white bg-warning">
              HOW TO PLAY
            </div>
            <ul class="list-group list-group-flush">
              <li class="list-group-item"><?php echo $range->play_description ;?></li>
              
            </ul>
          </div>

          <div class="card w-100 mb-2">
            <div class="card-header text-white bg-dark">
              WHEN TO PLAY
            </div>
            <ul class="list-group list-group-flush">
              <li class="list-group-item"><?php echo $range->when_play;?> </li>
               </ul>
          </div>

        </div>
<div class="pricetier mt-4">
        <h4><?php echo $website->name;?> prize tier</h4>

        <div class="table-responsive">
            <table class="table table-bordered table-hover">
              <thead>
                  <tr>
                    <th scope="col">NUMBERS MATCHED</th>
                    <th scope="col">PRIZE FUND</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>5 + 2</td>
                    <td>43.20$</td>
                  </tr>
                  <tr>
                    <td>5 + 1</td>
                    <td>3.95$</td>
                  </tr>
                  <tr>
                    <td>5 + 1</td>
                    <td>3.95$</td>
                  </tr>
                  <tr>
                    <td>5 + 1</td>
                    <td>3.95$</td>
                  </tr>
                  <tr>
                    <td>5 + 1</td>
                    <td>3.95$</td>
                  </tr>
                </tbody>
            </table>
          </div>
          </div>

      </div>
                      </form>
    </div>




    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

    <script src="<?php echo base_url() ?>public/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>

    <script src="<?php echo base_url() ?>public/js/owl.carousel.min.js"></script> 
    <script src="<?php echo base_url() ?>public/js/custom.js"></script>
    <script src="<?php echo base_url() ?>public/js/custom_rk.js"></script>


<script>
  $("#inputState").change(function(e){
    e.preventDefault();
    $val = $(this).val();
    $price = $(this).data('price');
    $(".item_rk").hide();

    $p = $price*$val;

    $(".item_rk").each(function(){
      if($(this).data("check")<=$val){
        $(this).show();
      }
      else{
        $(this).hide();
      }
    }); 

    $("#pricechange").text($p);
    $("#total_price").val($p);
  })


  // timer //

  <?php
  if(count($dates)>0){
    ?>
    
    
const second = 1000,
      minute = second * 60,
      hour = minute * 60,
      day = hour * 24;

      // alert("Yes");
let countDown = new Date('<?php echo date("M d, Y 00:00:00",strtotime($dates[0]->date)) ?>').getTime(),
    x = setInterval(function() {

      let now = new Date().getTime(),
          distance = countDown - now;

      document.getElementById('days').innerText = Math.floor(distance / (day)),
        document.getElementById('hours').innerText = Math.floor((distance % (day)) / (hour)),
        document.getElementById('minutes').innerText = Math.floor((distance % (hour)) / (minute)),
        document.getElementById('seconds').innerText = Math.floor((distance % (minute)) / second);
    }, second)
    <?php
  }
  
  ?>

$yellow_ball = '<?php echo $range->yellow_ball;?>';
$white_ball = '<?php echo $range->white_ball; ?>';



$(document).on("change",".lottery_number",function() {
  
    $this = $(this);
    if ($(this).prop('checked')) {
      if ($this.parents('.upper_div').length) {
        var totalChecked  = 0;
        $this.parents('.upper_div').find("input[type=checkbox]:checked").each(function(){
          totalChecked++;
        }); 
        if(totalChecked>$white_ball){
          alert("You are choosing more than "+$white_ball+" numbers");
          $this.prop("checked",false);
        }
        else{
          $this.parent("li").addClass("selected");
        }
      }
      else{
        // Yellow Ball selection

        if($yellow_ball==1){
          $this.parents(".lower_div").find('input[type=checkbox]').prop('checked',false);
          $this.parents(".lower_div").find('li').removeClass('selected');
          $this.parent("li").addClass("selected");
          $this.prop("checked",true);
        }
        else{
          var totalChecked  = 0;
          $this.parents('.lower_div').find("input[type=checkbox]:checked").each(function(){
            totalChecked++;
          }); 
          if(totalChecked>$yellow_ball){
            alert("You are choosing more than "+$yellow_ball+" numbers");
            $this.prop("checked",false);
          }
          else{
            $this.parent("li").addClass("selected");
          }
        }
      }
    }
    else {
      $this.parent("li").removeClass("selected");
    }
})


$("#addclickcart").click(function(e){
  e.preventDefault();
  $this = $(this);
  $val = $("#inputState").val();
  
  $counter =0;
  
  $(".item_rk").each(function(){
    var thisitem = $(this);

    if(thisitem.data("check")<=$val){
      var totalChecked =0;
      $thistext = thisitem.find(".quiznobox_header_rk").text();

        thisitem.find(".upper_div").find("input[type=checkbox]:checked").each(function(){
          totalChecked++;
        }); 
        

        if(totalChecked<$white_ball){
          alert("Please select "+$white_ball+" numbers from upper numbers of "+$thistext);
          $counter =$counter+1;
          return false;
        }

        // if($yellow_ball>1){
          var totalChecked  = 0;
          thisitem.find(".lower_div").find("input[type=checkbox]:checked").each(function(){
            totalChecked++;
          }); 
          if(totalChecked<$yellow_ball){
            alert("Please select "+$yellow_ball+" numbers from lower numbers of  "+$thistext);
            $counter =$counter+1;
            return false;
          }
        // }
    }
  }); 

  if($counter==0){
    $this.parents("form").submit();
  }
  else{
    return false;
  }
    




    // if($val>1){
    //   var totalChecked =0;
    //   $('.second_rk').find("input[type=checkbox]:checked").each(function(){
    //     totalChecked++;
    //   }); 
    //   if(totalChecked<$white_ball){
    //     alert("Please select "+$white_ball+" numbers from upper numbers of Second Entry!");
    //     return false;
    //   }

      
    // if($yellow_ball>1){
    //   var totalChecked  = 0;
    //   $('.second_rk1').find("input[type=checkbox]:checked").each(function(){
    //     totalChecked++;
    //   }); 
    //   if(totalChecked<$yellow_ball){
    //     alert("Please select "+$yellow_ball+" numbers from lower numbers of Second Entry!");
    //     return false;
    //   }
    // }


    // }
    
    // if($val>2){
    //   var totalChecked =0;
    //   $('.third_rk').find("input[type=checkbox]:checked").each(function(){
    //     totalChecked++;
    //   }); 
    //   if(totalChecked<$white_ball){
    //     alert("Please select "+$white_ball+" numbers from upper numbers of Third Entry!");
    //     return false;
    //   }

    //   if($yellow_ball>1){
    //     var totalChecked  = 0;
    //     $('.third_rk1').find("input[type=checkbox]:checked").each(function(){
    //       totalChecked++;
    //     }); 
    //     if(totalChecked<$yellow_ball){
    //       alert("Please select "+$yellow_ball+" numbers from lower numbers of Third Entry!");
    //       return false;
    //     }
    //   }
      
    // }
})
  </script>