<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="servlet.User"%>
<%@include file="template/top.jsp" %>
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
                        <table class="table table-striped jambo_table bulk_action">
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
                                    <td class=" ">View</td>
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
<%@include file="template/bottom.jsp" %>