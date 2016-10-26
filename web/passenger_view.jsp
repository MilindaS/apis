<%@page import="servlet.PassengerView"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="template/top.jsp" %>

<%

PassengerView p = new PassengerView();
ResultSet rs = p.getPassengers();

%>

    <div class="row">
        <div class="page-title">
        <div class="title_left">
            <h3>&nbsp;&nbsp;Passengers <small style="font-size:11px;">APIS</small></h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="clearfix"></div>
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>All Passengers</h2>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="table-responsive">
                        <table  id="datatable" class="table table-striped jambo_table bulk_action">
                            <thead>
                                <tr class="headings">
                                    <th class="column-title">First Name </th>
                                    <th class="column-title">Last Name </th>
                                    <th class="column-title">Gender </th>
                                    <th class="column-title">Nationality </th>
                                    <th class="column-title">Travel Document Number</th>
                                    <th class="column-title">Flight Number</th>
                                    <th class="column-title">Flight Date</th>
                                    <th class="column-title">Action</th>
                                </tr>
                            </thead>

                            <tbody>
                                <% while(rs.next()){ %>
                                <tr class="even pointer">
                                    <td class=" "><%=rs.getString("First_Name") %></td>
                                    <td class=" "><%=rs.getString("Surname") %></td>
                                    <td class=" "><%=rs.getString("Gender") %></td>
                                    <td class=" "><%=rs.getString("Nationality") %></td>
                                    <td class=" "><%=rs.getString("Travel_Doc_Number") %></td>
                                    <td class=" "><%=rs.getString("Flight_No") %></td>
                                    <td class=" "><%=rs.getString("Flight_Date") %></td>
                                    <td class=" "> <a class="btn btn-success btn-xs" style="margin: 0px 0px;">View</a></td>
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


<script>
    $(document).ready(function(){
        $('#datatable').dataTable();
    });
</script>
