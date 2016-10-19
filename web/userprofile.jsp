<%@page import="common.DBCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@include file="template/top.jsp" %>
<% HttpSession s1 = request.getSession();
String un = (String)s1.getAttribute("username");
try{
Connection c1= DBCon.getMyConnection();
Statement st1 = c1.createStatement();
ResultSet rs1 = st1.executeQuery("SELECT * FROM ogauser WHERE username ='"+ un +"' ");

%>
   
         <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                      <h2>User Profile <small> <%  out.print(s1.getAttribute("commonname")); %></small></h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br>
                    <form action="UserProfile" id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                        <% while(rs1.next()){ %>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">User Name  <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="text" id="first-name" name="first-name" required="required" class="form-control col-md-7 col-xs-12" value="<% out.print(rs1.getString(1));  %>" >
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Common Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12" value="<%out.print(rs1.getString(2));  %>" disabled>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Email</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="email" class="form-control col-md-7 col-xs-12" type="text" name="email" value="<%out.print(rs1.getString(4));  %>">
                        </div>
                      </div>
                      <div class="form-group">
                          <label for="phone-no"class="control-label col-md-3 col-sm-3 col-xs-12">Phone No</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="phone-no" class="form-control col-md-7 col-xs-12" type="text" name="phone-no" value="<%out.print(rs1.getString(7));  %>">
                        </div>
                      </div>
                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="agency-code">Agency Code <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="text" id="agency-code" name="agency-code" required="required" class="form-control col-md-7 col-xs-12" value="<%out.print(rs1.getString(6));  %>" disabled>
                        </div>
                      </div>
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="agency-name">Agency Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="text" id="agency-name" name="agency-name" required="required" class="form-control col-md-7 col-xs-12" value="<%out.print(rs1.getString(3));  %>" disabled>
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            
                            <Input type="submit" class="btn btn-success" value="Save">
                            <button type="reset" class="btn btn-success" value="Reset">Reset</button>
                        </div>
                      </div>
                      <% } }catch(Exception e){ e.printStackTrace();
                        }%>
                    </form>
                  </div>
                </div>
              </div>
            </div> 
    </div><%@include file="template/bottom.jsp" %>