<%@include  file="header.jsp"%>
<%@include  file="headbar.jsp"%>
<div class="row">
    
              <div class="col-md-12 col-sm-12 col-xs-12" id="divcrew">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Crew</h2>
                    <div style="pull-right"><button data-toggle="modal" data-target=".customs" class="btn btn-primary btn-sm pull-right">Add New Crew Member</button></div>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">


                      <div class="table-responsive" style="overflow:hidden">
                      <table class="table table-striped jambo_table bulk_action dttba">
                        <thead>
                          <tr class="headings">
                            <th>
                              <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" id="check-all" class="flat" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                            </th>
                            <th class="column-title">First Name </th>
                            <th class="column-title">Surname </th>
                            <th class="column-title">Gender </th>
                            <th class="column-title">Nationality </th>
                            <th class="column-title">Travel Doc Number </th>
                            <th class="column-title">EMB Port </th>
                            <th class="column-title no-link last"><span class="nobr">Position</span>
                            </th>
                            <th class="column-title">Action</th>
                            
                          </tr>
                        </thead>

                        <tbody>
                            
                             <%
                Criteria c1 = hbsesion.createCriteria(Crew.class);
                List<Crew> list = c1.list();
                for(Crew crew:list){
                %>
                            
                            
                          <tr class="even pointer">
                            <td class="a-center ">
                              <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                            </td>
                            <td class=" "><% out.write(crew.getFirstName()); %></td>
                            <td class=" "><% out.write(crew.getSurname() ); %></td>
                            <td class=" "><% out.write(crew.getGender()); %></td>
                            <td class=" "><% out.write(crew.getNationality()); %></td>
                            <td class=" "><% out.write(crew.getTravelDocType()); %></td>
                            <td class=""><% out.write(crew.getEmbPort()); %></td>
                            <td class=" "><% out.write(crew.getPosition()); %> </td>
                            <td><button type="submit" class="btn btn-success btn-xs">View More</button></td>
                          </tr>
                          <%}%>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
</div>
<%@include file="footer.jsp" %>
<script>
        $(document).ready(function(){
            $('.dttba').dataTable();
        });
 </script>