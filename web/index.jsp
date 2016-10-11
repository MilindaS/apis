<%@include file="template/top.jsp" %>
<%@include file="template/tile_count.jsp" %>
    <div class="row">
        <%
            
            if (request.getSession().getAttribute("commonname")== null){
                response.sendRedirect("login.jsp");
            }                      
        
        %>
    </div>
<%@include file="template/bottom.jsp" %>