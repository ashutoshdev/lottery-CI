
<div class="checkoutsec">
  <div class="container">
    <div class="row">
      <div class="col-md-8 m-auto">
        <div class="checkout_box">
            <h3>Payment method</h3>
            <div class="checkout_body">
                <div class="payment_body">

                <h5 class="text-left mt-4 mb-0" style="color:green;">Total Amount - $<?php echo $pay->sums; ?> </h5>
                  <h5 class="text-left mt-4 mb-0">Please select your payment method:</h5>
                  <aside class="">
                    <article class="card">
                    <div class="card-body p-0 p-lg-5">
                    
                    
                    
                    <div class="tab-content">
                    <div class="tab-pane fade show active" id="nav-tab-card">
                      <div class="row">
                        
                      <div class="col-md-4">
                      <h6 class="mb-3  text-left"  style="color:green">Wallet Money - $<span><?php 
                      $m_money =0;
                        if($money){
                          $m_money= $money->money;
                        }
                        echo $m_money;
                         ?></span></h6>
                      </div>
                      <div class="col-md-8">
                        <?php if($m_money>= $pay->sums){
                          ?>
                            <a href="<?php echo base_url('game/wallet_pay_order'); ?>" class="btn btn-primary">Pay By Wallet</a>
                          <?php
                        }
                        else{
                          ?>
                            <span style='color:red'>Note: Wallet money is low. 
                            <a href="<?php echo base_url('account/wallet'); ?>" class="btn btn-link">Click here</a> to add money in wallet.</span>
                          <?php
                        } ?>
                      </div>
                    </div>
                    <div class="row" style="text-align:center;">
                       

                      <div class="col-md-12">
                        <br>
                          <h4>Or</h4>
                          <br>
                      </div>

                      <div class="col-md-12">
                        <br>
                        <div id="paypal-button-container"></div>
                          <br>
                      </div>



                      <div class="col-md-12">
                        <br>
                          <h4>Or</h4>
                          <br>
                      </div>


                      <div class="col-md-12">
                        <br>

<form>
  <button type="button" class="btn btn-primary" style="cursor:pointer;" value="Pay Now with Rave" id="submit">Pay with credit card</button>
</form>
</div>
                      </div>
                    </div>
                    
                    
                    </div> <!-- tab-content .// -->
                    
                    </div> <!-- card-body.// -->
                    </article> <!-- card.// -->
                    
                    
                      </aside> <!-- col.// -->
                </div>
            </div>
        </div>
        
      </div>
    </div>
  </div>
</div>




<form id="form_rk" style="display: hidden" action="<?php echo base_url('game/order_con'); ?>" method="POST" id="form">
<input type="hidden" id="var1" name="money" value="<?php echo $pay->sums; ?>"/>
<input type="hidden" id="var2" name="transaction_id" value=""/>

<input type="hidden" id="var3" name="paymet_type" value=""/>
</form>


<script src="https://www.paypal.com/sdk/js?client-id=sb&currency=USD"></script>

<script>
    // Render the PayPal button into #paypal-button-container
    paypal.Buttons({


        // Set up the transaction
        createOrder: function(data, actions) {
          
            return actions.order.create({
                purchase_units: [{
                    amount: {
                        value: $("#var1").val()
                  }
                }]
            });
        },

        // Finalize the transaction
        onApprove: function(data, actions) {

            return actions.order.capture().then(function(details) {
              console.log(details);
                // Show a success message to the buyer

                $("#var2").val(details.id);
                
          $("#var3").val("Paypal");
            $("#form_rk").submit();
               

            });
            
        },

        onCancel: function(data) {
            // Show a cancel page, or return to cart
            alert("Transaction Cancelled");
        },

        onError: function(err) {
            // Show an error page here, when an error occurs
            alert("Something went wrong. Please check payment price.");
        }


    }).render('#paypal-button-container');

</script>







<script type="text/javascript" src="http://flw-pms-dev.eu-west-1.elasticbeanstalk.com/flwv3-pug/getpaidx/api/flwpbf-inline.js"></script>
<script>
	document.addEventListener("DOMContentLoaded", function(event) {
    document.getElementById("submit").addEventListener("click", function(e) {
    var PBFKey = "FLWPUBK_TEST-caee04bef41ffedfb8951e967f1ffaed-X";
    val =$("#var1").val();
    getpaidSetup({
      PBFPubKey: PBFKey,
      customer_email: "<?php echo $_SESSION['email']; ?>",
      amount: val,
      // customer_phone: "<?php // echo $_SESSION['mobile']?>",
      currency: "USD",
      txref: "rave-122333",
      onclose: function() {},
      callback: function(response) {
        var flw_ref = response.tx.flwRef; // collect flwRef returned and pass to a 					server page to complete status check.
        console.log("This is the response returned after a charge", response);
        if (
          response.tx.chargeResponseCode == "00" ||
          response.tx.chargeResponseCode == "0"
        ) {
          $("#var2").val(flw_ref);
          
          $("#var3").val("Rave");
          $("#form_rk").submit();
          

          console.log(response);
          // redirect to a success page
        } else {
          // redirect to a failure page.
        }
      }
    });
  });
});



</script>
 
