/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import common.DBCon;
import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;
import javafx.scene.control.Alert;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static javax.ws.rs.client.Entity.json;
import org.json.simple.JSONArray;

/**
 *
 * @author ADP-014
 */
@WebServlet(name = "PassengerSearch", urlPatterns = {"/PassengerSearch"})
public class PassengerSearch extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();
        ResultSet rs = null;
        
        String first_name = request.getParameter("first-name");
        String last_name = request.getParameter("last-name");
        String middle_name = request.getParameter("middle-name");
        String gender = request.getParameter("gender");
        String nationality = request.getParameter("nationality");
        String dob = request.getParameter("dob");
        String td_no = request.getParameter("traveldoc-number");
        String td_type = request.getParameter("traveldoc-type");
        String td_expdate = request.getParameter("td-expdate");
        String place_td_issue = request.getParameter("place-td-issue");
        String emb_port = request.getParameter("emb-port");
        String disemb_port = request.getParameter("disemb-port");
        String flight_number = request.getParameter("flight-number");
        String flight_date = request.getParameter("flight-date1");
        
        
        int first_name_select = Integer.parseInt(request.getParameter("first-name-select"));
        int last_name_select = Integer.parseInt(request.getParameter("last-name-select"));
//        int middle_name_select = Integer.parseInt(request.getParameter("middle-name-select"));
        int gender_select = Integer.parseInt(request.getParameter("gender-select"));
        int nationality_select = Integer.parseInt(request.getParameter("nationality-select"));
//      int dob_select = Integer.parseInt(request.getParameter("dob-select"));
        int td_no_select = Integer.parseInt(request.getParameter("traveldoc-number-select"));
        int td_type_select = Integer.parseInt(request.getParameter("traveldoc-type-select"));
//        int td_expdate_select = Integer.parseInt(request.getParameter("td-expdate-select"));
        int place_td_issue_select = Integer.parseInt(request.getParameter("place-td-issue-select"));
        int emb_port_select = Integer.parseInt(request.getParameter("emb-port-select"));
        int disemb_port_select = Integer.parseInt(request.getParameter("disemb-port-select"));
        int flight_number_select = Integer.parseInt(request.getParameter("flight-number-select"));
        int flight_date_select = Integer.parseInt(request.getParameter("flight-date-select"));
        
        
        
        try {
          Connection c = DBCon.getMyConnection();
          Statement s = c.createStatement();
           
            System.out.println(flight_date);
            
         rs = s.executeQuery("SELECT * FROM passenger WHERE First_Name LIKE '"+convertSql(first_name_select, first_name)+"' "
                                + "AND Surname LIKE '"+convertSql(last_name_select, last_name)+"' "
                                + "AND Nationality LIKE '"+convertSql(nationality_select, nationality)+"' "
                                + "AND Gender LIKE '"+convertSql(gender_select,gender)+"'"
                                + "AND Travel_Doc_Number LIKE '"+convertSql(td_no_select, td_no)+"' "
                                + "AND Travel_Doc_Type LIKE '"+convertSql(td_type_select, td_type)+"'"
                                + "AND Place_Td_Issue LIKE '"+convertSql(place_td_issue_select, place_td_issue)+"' "
                                + "AND Flight_No LIKE '"+convertSql(flight_number_select, flight_number)+"'"
                                + "AND Flight_Date LIKE '"+convertSql(flight_date_select, flight_date)+"'");
                                
            
            JSONArray json = new JSONArray();
            
             while(rs.next()){
                 Map m = new HashMap();
                
                m.put("firstname",rs.getString("First_Name"));
                m.put("lastname",rs.getString("Surname"));
                m.put("gender", rs.getString("Gender"));
                m.put("nationality", rs.getString("Nationality"));
                m.put("TravelDocNumber", rs.getString("Travel_Doc_Number"));
                m.put("TravelDocType", rs.getString("Travel_Doc_Type"));
                m.put("Flight_Number",rs.getString("Flight_No"));
                m.put("flightdate", rs.getString("Flight_Date"));
                
                  json.add(m);
            }
             System.out.println(json.toJSONString());
            
           
        } catch (Exception e) {
            e.printStackTrace();
        }
        
     response.sendRedirect("passenger.jsp");
        
    }
    

    
    protected static String convertSql(int criteria, String data){
        
        String output_data = null;
    //    1-all    2-equal    3-contains substring
        if(criteria == 1){
       output_data = "%";
       }
       else if(criteria == 2){
       output_data = data;
       }
       else if(criteria == 3){
       output_data = "%"+data+"%";
       } 
        System.out.println(output_data);    
        return output_data;
         
    }
   
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}