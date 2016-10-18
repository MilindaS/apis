<%@include file="template/header.jsp" %>
<body class="login" style="background-image: url(img/AirportServices.jpg);background-size: cover;background-image: ">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper" >
        
          <div class="animate form login_form" style="background:rgba(0,0,0,0.7);padding:0px 20px;box-shadow: 0px 0px 20px 1px rgba(0,0,0,0.5);">
          <section class="login_content">
             
                  <form action="Login1" method="POST">
              <h1>Login Form</h1>
              <div>
                  <input type="text" class="form-control" placeholder="Username" required="" name="uname" id="uname"/>
              </div>
              <div>
                  <input type="password" class="form-control" placeholder="Password" required="" name="pword" id="pword" />
              </div>
              <div>
                  <input type="submit" class="btn btn-default submit" value="Login"/>
                <a class="reset_pass" href="#">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> APIS!</h1>
                  <p>©2016 All Rights Reserved. APIS. Privacy and Terms</p>
                </div>
              </div>
                  </form>
          
          </section>
        </div>

        
      </div>
    </div>
  </body>
  <%@include file="template/footer.jsp" %>