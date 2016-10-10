<body class="nav-md">
      <%@page import="swdb2Map.Crew"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="swdb2Map.NewHibernateUtil"%>
<%Session hbsesion = NewHibernateUtil.getSessionFactory().openSession(); 
                %>
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>APIS</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile">
              <div class="profile_pic">
                <img src="images/visa.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>SRI lANKA</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                    <li id="home"><a href="index.jsp" class="divhome" ><i class="fa fa-home"></i> Home </a></li>               
                    <li><a data-toggle="modal" data-target=".customs1"><i class="fa fa-user" ></i>Add User  </a></li>
                    <li><a href="passenger.jsp"><i class="fa fa-suitcase" ></i>Passengers  </a></li>
                    <li><a href="crew.jsp"><i class="fa fa-users" ></i>Crew</a></li>
                                    
                </ul>
              </div>
              

            </div>
            
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                      <img src="images/cropper.jpg" alt=""><% HttpSession s1 = request.getSession();  s1.getAttribute("commonname");     %>
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                      <li><form action="logout" method="POST"><button type="submit" name="lout" id="lout>"<a ><i class="fa fa-sign-out pull-right"></i> Log Out</a></button></form></li>
                  </ul>
                </li>

              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->
        
        
                <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
          <div class="row tile_count">
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Total Crew</span>
              <div class="count">1</div>
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-clock-o"></i> Total Flights</span>
              <div class="count">1</div>
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Total Users</span>
              <div class="count green">20</div>
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Total Passengers</span>
              <div class="count">1</div>
            </div>
              <div class="col-md-2">
                  <button data-toggle="modal" data-target=".customs1" >Add Customs</button>
              </div>
          </div>