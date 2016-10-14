<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="servlet.User"%>
<%@include file="template/top.jsp" %>
<%@page import="ajaxRequests.GetUser"%>

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
                                <% while(rs.next()){ %>
                                    <tr class="even pointer">
                                    <td class=" "><%=rs.getString("username") %></td>
                                    <td class=" "><%=rs.getString("commonname") %></td>
                                    <td class=" "><%=rs.getString("email") %></td>
                                    <td class=" "><%=rs.getString("agencyname") %></td>
                                    <td class=" "><%=rs.getString("agencycode") %></td>
                                    <td class=" "><%=rs.getString("phone") %></td>
                                    <td class=" "> <a class="btn btn-success btn-xs usernameToggle" data-username="<%=rs.getString("username") %>" style="margin: 0px 0px;">View</a>
                                        <a data-toggle="modal" data-target="#editUser" class="btn btn-warning btn-xs" style="margin: 0px 0px;">Edit</a>
                                        <a data-toggle="modal" data-target="#deleteUser" class="btn btn-danger btn-xs" style="margin: 0px 0px;">Delete</a>
                                    </td>
                                </tr>
                                <% } %>
                                
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
                            <td id="tdUsername">Milinda</td>
                        </tr>
                        <tr>
                            <td><b>Common name</b></td>
                          <td id="tdCommonName">mili</td>
                        </tr>
                        <tr>
                            <td><b>Email</b></td>
                          <td id="tdEmail">hlsmilinda@gmail.com</td>
                        </tr>
                        <tr>
                            <td><b>Agency Name</b></td>
                          <td id="tdAgencyName">hlsmilinda@gmail.com</td>
                        </tr>
                        <tr>
                          <td><b>Agency Code</b></td>
                          <td id="tdAgency">hlsmilinda@gmail.com</td>
                        </tr>
                        <tr>
                          <td><b>Phone</b></td>
                          <td id="tdPhone">hlsmilinda@gmail.com</td>
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
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">User View</h4>
      </div>
      <div class="modal-body">
       <table class="table">
                      <tbody>
                        <tr>
                            <td><b>Username</b></td>
                            <td id="tdUsername">Milinda</td>
                        </tr>
                        <tr>
                            <td><b>Common name</b></td>
                          <td id="tdCommonName">mili</td>
                        </tr>
                        <tr>
                            <td><b>Email</b></td>
                          <td id="tdEmail">hlsmilinda@gmail.com</td>
                        </tr>
                        <tr>
                            <td><b>Agency Name</b></td>
                          <td id="tdAgencyName">hlsmilinda@gmail.com</td>
                        </tr>
                        <tr>
                          <td><b>Agency Code</b></td>
                          <td id="tdAgency">hlsmilinda@gmail.com</td>
                        </tr>
                        <tr>
                          <td><b>Phone</b></td>
                          <td id="tdPhone">hlsmilinda@gmail.com</td>
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
                                
                                
                                
                                
                                
                                
                                
<%@include file="template/bottom.jsp" %>

<script>
    $(document).ready(function(){
        $('#datatable').dataTable();
        
        $('.usernameToggle').click(function(){
            var username = $(this).data('username');
            $.ajax({
                url:'GetUser',
                type:'POST',
                data:{'username':username},
                success:function(data){
                    $('#editUser').modal('show');
                }
            });
        });
    });
</script>