<%-- 
    Document   : AddFlight
    Created on : Sep 26, 2016, 2:49:13 PM
    Author     : ADP-015
--%>

<%@page import="org.hibernate.Session"%>
<%@page import="swdb2Map.NewHibernateUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add Flight Details </h1>
        
        <div style="border:double">
            <form action="AddFlight" method="POST">
                                
                Flight NO : <input type="text" name="flightno" id="flightno"><br>
                Flight Date :<input type="date" name="flightdate" id="flightdate"><br>
                Total Passengers :<input type="number" name="passNo" id="passNo"><br>
                Total Crew :<input type="number" name="crewno" id="crewno"><br>
                Arrival Port :<input type="date" name="APort" id="APort"><br>
                Departure port:<input type="date" name="Dport" id="Dport"><br>          
                <input type="submit" value="Add">              
                
                
                
            </form>
        </div>
    </body>
</html>
