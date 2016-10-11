<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                  <h3><%HttpSession ss = request.getSession();out.print(ss.getAttribute("agencyname")); %></h3>
                <ul class="nav side-menu">
                    <li id="home"><a href="index.jsp" class="divhome" ><i class="fa fa-home"></i> Home </a></li>               
                    <li><a href="user.jsp"><i class="fa fa-user" ></i>Users  </a></li>
                    <li><a href="passenger.jsp"><i class="fa fa-suitcase" ></i>Passengers  </a></li>
                    <li><a href="crew.jsp"><i class="fa fa-users" ></i>Crew</a></li>
                                    
                </ul>
              </div>
              

            </div>
