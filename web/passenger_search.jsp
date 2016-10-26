<%@page import="servlet.PassengerSearch"%>
<%@page import="servlet.Passenger"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="template/top.jsp" %>
    

    <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Search Passengers<small>APIS</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br>
                    <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="" action="PassengerSearch" method="GET">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">First Name <span class="required">*</span>
                        </label>
                          <div class="col-md-2 col-sm-2 col-xs-12">
                              <select name="first-name-select" class="select_1 form-control"></select>
                          </div>  
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="first-name" name="first-name" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                       
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Last Name <span class="required">*</span>
                        </label>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                              <select name="last-name-select"class="select_1 form-control"></select>
                        </div>  
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                        
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name / Initial</label>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                                <select name="middle-name-select" class="select_1 form-control"></select>
                        </div>  
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="middle-name">
                        </div>
                      </div>
                        
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender</label>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                            <select name="gender-select"class="form-control">
                                <option value='1' >All</option>
                                <option value='2'>Equal</option>
                            </select>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select class="form-control" name = "gender">
                                <option>M</option>
                                <option>F</option>
                            </select>
                        </div>
                        
                      </div>
                        
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nationality">Nationality </label>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                              <select name="nationality-select"class="select_1 form-control"></select>
                        </div>  
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="nationality" name="nationality" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                        </div>
                        
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="dob">Date of Birth </label>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                              <select name="dob-select"class="select_1 form-control"></select>
                        </div>  
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="date" id="dob" name="dob" required="required" class="form-control col-md-7 col-xs-12 date-picker form-control col-md-7 col-xs-12 parsley-success active" data-parsley-id="16">
                        </div>
                        </div>
                        
                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="traveldoc-number">Travel Document Number </label>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                              <select name="traveldoc-number-select"class="select_1 form-control"></select>
                        </div>  
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="traveldoc-number" name="traveldoc-number" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                        
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="traveldoc-type">Travel Document Type </label>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                              <select name="traveldoc-type-select"class="select_1 form-control"></select>
                        </div>  
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="traveldoc-type" name="traveldoc-type" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                        </div>
                        
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="td-expdate">Travel Document Expiry Date </label>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                              <select name="td-expdate-select"class="select_1 form-control"></select>
                        </div>  
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="date" id="td-expdate" name="td-expdate" required="required" class="form-control col-md-7 col-xs-12 date-picker form-control col-md-7 col-xs-12 parsley-success active" data-parsley-id="16">
                        </div>
                        </div>
                        
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="place-td-issue">Travel Document Issued Place </label>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                              <select name="place-td-issue-select" class="select_1 form-control"></select>
                        </div>  
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="place-td-issue" name="place-td-issue" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                        </div>
                        
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="emb-port">Embarkation Port </label>
                          <div class="col-md-2 col-sm-2 col-xs-12">
                              <select name="emb-port-select" class="select_1 form-control"></select>
                          </div>  
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="first-name" name="emb-port" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                        </div>
                        
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="disemb-port">Disembarkation Port </label>
                          <div class="col-md-2 col-sm-2 col-xs-12">
                              <select name="disemb-port-select" class="select_1 form-control"></select>
                          </div>  
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="first-name" name="disemb-port" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                        </div>
                        
                        
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="flight-number">Flight Number </label>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                              <select name="flight-number-select" class="select_1 form-control"></select>
                        </div>  
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="flight-number" name="flight-number" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                        </div>
                        
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="flight-date">Flight Date </label>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                            <select name="flight-date-select"class="form-control">
                                <option value='1'>All</option>
                                <option value='2'>Equal</option>
                                <option>Between</option>
                            </select>
                        </div>  
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="date" id="flight-date1" name="flight-date1" required="required" class="form-control col-md-7 col-xs-12 date-picker form-control col-md-7 col-xs-12 parsley-success active" data-parsley-id="16">
                            <input type="date" id="flight-date2" name="flight-date2" required="required" class="form-control col-md-7 col-xs-12 date-picker form-control col-md-7 col-xs-12 parsley-success active" data-parsley-id="16">
                        </div>
                        </div>
                        
                                                
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button type="submit" class="btn btn-primary">Cancel</button>
                          <button type="submit" class="btn btn-success">Search</button>
                        </div>
                      </div>

                    </form>
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

<!--<script>
    $.getJSON('PassengerSearch',function (data){
        var items[];
        $.each(data,function (key, val){
            items.push("<tr>");
            items.push("<td id=''"+key+"'>"+val.+"</td>");
            
        })
        
    })
    
</script>-->

<!--<script>
                              $(function(){
                                  $("#first-name").autocomplete({
                                      source : function(request,response){
                                         $.ajax({
                                         url: "PassengerAutoComp",type: 'POST', dataType: 'json',
                                         data: {name:request.term},
                                         success: function (data) {
                                         response($.map(data, function (item){
                                         return {
                                         label:item.name,
                                         value:item.value,
                                         }
                                         }));
                        
                                          },
                                         });
                                          console.log(request);
                                      },
                                      minLength:2
                                  });
                              });
                              
                          </script>-->
                          
 <script>
        var html  = "<option value = '1'>All</option><option value = '2'>Equal</option><option value = '3'>Contains Substring</option>";
        $(".select_1").html(html);
</script>


