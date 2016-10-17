<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="servlet.user.User"%>
<%@include file="template/top.jsp" %>
<%@page import="servlet.user.GetUser"%>
<%@page import="servlet.user.AddUser"%>
<%@page import="servlet.user.CheckUser"%>

<%
    User u = new User();
    ResultSet rs = u.getUsers();
%>
<div class="row">
    <div class="page-title">
        <div class="title_left">
            <h3>&nbsp;&nbsp;Users <small style="font-size:11px;">APIS</small></h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="clearfix"></div>
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>All Users</h2>
                    <a data-toggle="modal" data-target="#editUser" class="btn btn-primary btn-sm pull-right" style="margin: 0px 0px;">Add New User</a>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="table-responsive">
                        <table  id="datatable" class="table table-striped jambo_table bulk_action">
                            <thead>
                                <tr class="headings">
                                    <th class="column-title">Username </th>
                                    <th class="column-title">Common Name </th>
                                    <th class="column-title">Email </th>
                                    <th class="column-title">Agency Name </th>
                                    <th class="column-title">Agency Code </th>
                                    <th class="column-title">Phone</th>
                                    <th class="column-title">Action</th>
                                </tr>
                            </thead>

                            <tbody>
                                <% while (rs.next()) {%>
                                <tr class="even pointer">
                                    <td class=" "><%=rs.getString("username")%></td>
                                    <td class=" "><%=rs.getString("commonname")%></td>
                                    <td class=" "><%=rs.getString("email")%></td>
                                    <td class=" "><%=rs.getString("agencyname")%></td>
                                    <td class=" "><%=rs.getString("agencycode")%></td>
                                    <td class=" "><%=rs.getString("phone")%></td>
                                    <td class=" "> <a class="btn btn-success btn-xs viewToggle" data-username="<%=rs.getString("username")%>" style="margin: 0px 0px;">View</a>
                                        <a data-toggle="modal" class="btn btn-warning btn-xs editToggle" data-username="<%=rs.getString("username")%>" style="margin: 0px 0px;">Edit</a>
                                        <a data-toggle="modal" data-target="#deleteUser" class="btn btn-danger btn-xs" style="margin: 0px 0px;">Delete</a>
                                    </td>
                                </tr>
                                <% }%>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<!--View User Modal-->

<div class="modal fade" tabindex="-1" role="dialog" id="viewUser">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">User View</h4>
            </div>
            <div class="modal-body">
                <table class="table">
                    <tbody>
                        <tr>
                            <td><b>Username</b></td>
                            <td id="tdUsernameView">Milinssssssda</td>
                        </tr>
                        <tr>
                            <td><b>Common name</b></td>
                            <td id="tdCommonNameView">mili</td>
                        </tr>
                        <tr>
                            <td><b>Email</b></td>
                            <td id="tdEmailView">hlsmilinda@gmail.com</td>
                        </tr>
                        <tr>
                            <td><b>Agency Name</b></td>
                            <td id="tdAgencyNameView">hlsmilinda@gmail.com</td>
                        </tr>
                        <tr>
                            <td><b>Agency Code</b></td>
                            <td id="tdAgencyView">hlsmilinda@gmail.com</td>
                        </tr>
                        <tr>
                            <td><b>Phone</b></td>
                            <td id="tdPhoneView">hlsmilinda@gmail.com</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <!--<button type="button" class="btn btn-primary">Save changes</button>-->
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->






<!--Edit User Modal-->

<div class="modal fade" tabindex="-1" role="dialog" id="editUser">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="AddUser" method="POST" class="form-horizontal form-label-left" data-toggle="validator" role="form">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><span id="nameTitle">Add New</span> User</h4>
            </div>
            <div class="modal-body">
                

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Username :</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="Enter Username Here" name="addUsername" data-remote-error="This username has been already taken!" data-remote="CheckUser" id="addUsername" required >
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Common Name :</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="Enter Common Name Here" name="addCommonName" id="addCommonName" required>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Agency Name :</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="Enter Agency Name Here" name="addAgencyName" id="addAgencyName" required>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Agency Code :</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="Enter Agency Code Here" name="addAgencyCode" id="addAgencyCode" required>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Email :</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="email" class="form-control" placeholder="Enter Email Here" name="addEmail" id="addEmail" required>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                    <div class="form-group" id="cpp">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Password :</label>
                        <div class="col-md-9 col-sm-9 col-xs-12" >
                            <input type="password" class="form-control" placeholder="Enter Password Here" name="addPassword" id="addPassword" data-minlength="6" required>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                    <div class="form-group" id="cppre">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Re Password :</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="password" class="form-control" placeholder="Enter Re Password Here" id="addPasswordRe" data-match="#addPassword" data-match-error="Whoops, these don't match" placeholder="Confirm" required>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Phone :</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="Enter Phone Here" name="addPhone" id="addPhone" required>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-success">Save</button>
                <!--<button type="button" class="btn btn-primary">Save changes</button>-->
            </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->



<!--View User Modal-->

<div class="modal fade" tabindex="-1" role="dialog" id="deleteUser">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">User View</h4>
            </div>
            <div class="modal-body">
                <p>Do you really want to delete this user ?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-danger">Yea! Delete</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<!--View User Modal-->

<div class="modal fade" tabindex="-1" role="dialog" id="changePassword">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">User View</h4>
            </div>
            <div class="modal-body">
                <p>Do you really want to delete this user ?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-danger">Yea! Delete</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->







<%@include file="template/bottom.jsp" %>

<script>
    $(document).ready(function () {
        $('#datatable').dataTable();

        $('.viewToggle').click(function () {
            var username = $(this).data('username');
            $.ajax({
                url: 'GetUser',
                type: 'POST',
                data: {'username': username},
                dataType: 'JSON',
                success: function (data) {
                    $('#tdUsernameView').html(data[0].username);
                    $('#tdCommonNameView').html(data[0].commonname);
                    $('#addAgencyName').html(data[0].email);
                    $('#tdAgencyNameView').html(data[0].agencyname);
                    $('#tdAgencyView').html(data[0].agencycode);
                    $('#tdPhoneView').html(data[0].phone);
                    $('#viewUser').modal('show');

                }
            });
        });
        
        
        $('.editToggle').click(function () {
            var username = $(this).data('username');
            $.ajax({
                url: 'GetUser',
                type: 'POST',
                data: {'username': username},
                dataType: 'JSON',
                success: function (data) {
                    $('#nameTitle').html("Edit");
                    $('#addUsername').val(data[0].username);
                    $('#addUsername').attr("disabled","disabled");
                    $('#addCommonName').val(data[0].commonname);
                    $('#addEmail').val(data[0].email);
                    $('#addAgencyName').val(data[0].agencyname);
                    $('#addAgencyCode').val(data[0].agencycode);
                    $('#cppre').remove();
                    $('#addUsername').removeAttr('data-remote');
                    $('#cpp').remove();
                    $('#addPhone').val(data[0].phone);
                    $('#editUser').modal('show');

                }
            });
        });
    });
</script>