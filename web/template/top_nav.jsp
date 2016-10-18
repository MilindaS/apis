
<div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                      <img src="images/samantha.jpg" alt=""><%HttpSession sss = request.getSession(); out.print(sss.getAttribute("commonname")); %>
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="userprofile.jsp"> Profile</a></li>
                    <li><a data-toggle="modal" data-target="#passwordchange"> Change Password</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">Help</a></li>
                    <li> <a data-toggle="modal" data-target="#logout1"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="images/samantha.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/samantha.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/samantha.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/samantha.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
                    <!--logout User Modal-->
                                
<div class="modal fade" tabindex="-1" role="dialog" id="logout1">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Logout</h4>
      </div>
      <div class="modal-body">
         <p>Do you really want to logout ?</p>
      </div>
      <div class="modal-footer">
          
          <form action="Logout1" method="POST">
              <button type="button" class="btn btn-default" data-dismiss="modal" value="Close">Close</button>
              <Input class="btn btn-danger" type="submit" value="Logout">
          </form>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

                 <!--Password change  Modal-->
                                
<div class="modal fade" tabindex="-1" role="dialog" id="passwordchange">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Change Your Loging password</h4>
      </div>
        <div class="container-fluid">
      <div class="modal-body">
         <p>Do you really want to logout ?</p>
                        <div class="form-group">
                          <label for="oldpassword"class="control-label col-md-3 col-sm-3 col-xs-12">Old Password </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="oldpassword" class="form-control col-md-7 col-xs-12" type="text" name="oldpassword" value="">
                        </div>
                        </div>
         
                        <div class="form-group">
                          <label for="newpassword1"class="control-label col-md-3 col-sm-3 col-xs-12">New Password </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="newpassword1" class="form-control col-md-7 col-xs-12" type="text" name="newpassword1" value="">
                        </div>
                        </div>
         
                        <div class="form-group">
                          <label for="newpassword2"class="control-label col-md-3 col-sm-3 col-xs-12">New Password Confirm </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="newpassword2" class="form-control col-md-7 col-xs-12" type="text" name="newpassword2" value="">
                        </div>
                        </div>
      </div>
        </div>
      <div class="modal-footer">
          
          <form action="Logout1" method="POST">
              <button type="button" class="btn btn-default" data-dismiss="modal" value="Close">Close</button>
              <Input class="btn btn-danger" type="submit" value="Logout">
          </form>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->