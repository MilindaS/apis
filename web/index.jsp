<%@include file="header.jsp" %>
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>APIS!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>John Doe</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <%@include file="main_menu_side.jsp" %>
            <!-- /sidebar menu -->

            
          </div>
        </div>

        <!-- top navigation -->
        <%@include file="top_nav.jsp" %>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
          <%@include file="tile_count.jsp" %>
          <!-- /top tiles -->

          

          <div class="row">





           

          </div>


        </div>
        <!-- /page content -->

        
        <%@include file="footer.jsp" %>