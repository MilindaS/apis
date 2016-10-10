<%@include  file="header.jsp"%>
<%@include  file="headbar.jsp"%>

 <div class="col-md-12" id="divHome" style="width: 100%;border-radius: 10px;opacity: 0.5; height: 800px;background-color: paleturquoise;background-size: cover;  background-image: url(img/AirportServices.jpg);"></div>
          <!-- /top tiles -->

          

        <!-- /page content -->
        
        <!-- footer content -->
        
       <!-- <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true" >-->
        <div class="modal fade customs" tabindex="-1" role="dialog" aria-hidden="true" >
                    <div class="modal-dialog modal-lg" >
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel">Add New Crew Record</h4>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal form-label-left " action="Addcrew" method="POST">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Pax_Type</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="Pax_Type" name="Pax_Type" id="Pax_Type">
                        </div>
                      </div>
                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">First_Name</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="First_Name" name="First_Name" id="First_Name">
                        </div>
                      </div>  
                               <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle_Name</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="Middle_Name" name="Middle_Name" id="Middle_Name">
                        </div>
                      </div> 
                               <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Surname</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="Surname" name="Surname" id="Surname">
                        </div>
                      </div> 
                               <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="Gender" name="Gender" id="Gender">
                        </div>
                      </div> 
                               <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Nationality</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="Nationality" name="Nationality" id="Nationality">
                        </div>
                      </div> 
                               <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Travel_Doc_Number</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="Travel_Doc_Number" name="Travel_Doc_Number" id="Travel_Doc_Number">
                        </div>
                      </div> 
                               <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Travel_Doc_Type</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="Travel_Doc_Type" name="Travel_Doc_Type" id="Travel_Doc_Type">
                        </div>
                      </div> 
                               <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Travel Doc Expiry_Date</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="date" class="form-control" placeholder="DtTdExpiry_Date" name="DtTdExpiry_Date" id="DtTdExpiry_Date">
                        </div>
                      </div> 
                               <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Place_Travel Doc_Issue</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="Place_TD_Issue" name="Place_TD_Issue" id="Place_TD_Issue">
                        </div>
                      </div> 
                               <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Date_of_Birth</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="date" class="form-control" placeholder="Date_of_Birth" name="Date_of_Birth" id="Date_of_Birth">
                        </div>
                      </div> 
                               <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Port_Clearance</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="Port_Clearance" name="Port_Clearance" id="Port_Clearance">
                        </div>
                      </div> 
                               <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Emb_Port</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="Emb_Port" name="Emb_Port" id="Emb_Port">
                        </div>
                      </div> 
                               <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">DisEmb_Port</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="DisEmb_Port" name="DisEmb_Port" id="DisEmb_Port">
                        </div>
                      </div> 
                               <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Position</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" placeholder="Position" name="Position" id="Position">
                        </div>
                      </div> 
                              
                     <!-- <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Disabled Input </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="text" class="form-control" disabled="disabled" placeholder="Disabled Input">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Read-Only Input</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="text" class="form-control" readonly="readonly" placeholder="Read-Only Input">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Birth <span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <textarea class="form-control" rows="3" placeholder="rows=&quot;3&quot;"></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Password</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="password" class="form-control" value="passwordonetwo">
                        </div>
                      </div> -->                 
                    
                      


                     
                     

                    </form>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          <button type="button" onclick="Addcrew" class="btn btn-primary">Save changes</button>
                        </div>

                      </div>
                    </div>
                  </div>
       
       
       <!-- Modal custom1 for add user account -->
       
        <div class="modal fade customs1" tabindex="-1" role="dialog" aria-hidden="true" >
                    <div class="modal-dialog modal-lg" >
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel">Add New User </h4>
                        </div>
                        <div class="modal-body">
                           <div class="col-sm-12" style="background-color: gray; background-image: url(img/as1.jpg)"; height: 100px;"></div>
        <div class="container-fluid">
            <div style="background-color: ghostwhite; " class="row">
                <div class="col-sm-2" style="background-color:gray; background-image: url(img/as1.jpg)"> </div>
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
                             </div>
                      </div>
                    </form>
                </div>
                <div class="col-sm-2" style="background-color:gainsboro"></div>
                
            </div>
        </div>
                        </div>
                     
                      </div>
                    </div>
                 </div>
       
       <!-- Modal custom1 end -->

        <%@include  file="footer.jsp"%>
