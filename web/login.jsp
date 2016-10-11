<%@include file="header.jsp" %>
  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        
          <div class="animate form login_form">
          <section class="login_content">
              <form action="login" method="POST">
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
                  <p>�2016 All Rights Reserved. APIS. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        
      </div>
    </div>
  </body>
  <%@include file="footer.jsp" %>