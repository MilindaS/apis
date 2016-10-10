<%-- 
    Document   : NewUser
    Created on : Sep 29, 2016, 10:47:29 AM
    Author     : ADP-015
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>       
         </head>
         <body style="background-color: gray">
        <div class="col-sm-12" style="background-color: gray;height: 100px;"></div>
        <div class="container-fluid">
            <div style="background-color: ghostwhite" class="row">
                <div class="col-sm-2" style="background-color:gray"> </div>
                <div class="col-md-8" style="background-color: gainsboro;padding: 20px; border-style: double; border-radius: 15px;">
                    <form class="form-horizontal form-label-left " action="addUser" method="POST">
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">User name </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="username" name="username" id="username">
                        </div>
                      </div>
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Full Name </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="fullname" name="fullname" id="fullname">
                        </div>
                      </div>
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Agency name </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="agencyname" name="agencyname" id="agencyname">
                        </div>
                      </div>
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Email </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="email" name="email" id="email">
                        </div>
                      </div>
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Password </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="password" class="form-control" placeholder="password" name="password" id="password">
                        </div>
                      </div>
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Agency Code </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="agencycode" name="agencycode" id="agencycode">
                        </div>
                      </div>
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">TP </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="tp" name="tp" id="tp">
                        </div>
                        </div>
                        <div class="form-group">
                             <label class="control-label col-md-3 col-sm-3 col-xs-12"> </label>
                             <div  class="col-md-6 col-sm-6 col-xs-9" >
                            <input style="background-color: #ccccff" type="submit" class="form-control" value="Save" name="save" id="save">
                            <button 
                        </div>
                      </div>
                    </form>
                </div>
                <div class="col-sm-2" style="background-color:gainsboro"></div>
                
            </div>
        </div>
        
    </body>
</html>
