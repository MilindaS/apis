/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.user;

import common.DBCon;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
@WebServlet(name = "AddUser", urlPatterns = {"/AddUser"})
public class AddUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            
            PrintWriter out = response.getWriter();
            
            String username = request.getParameter("addUsername");
            String commonname = request.getParameter("addCommonName");
            String agencyName = request.getParameter("addAgencyName");
            String email = request.getParameter("addEmail");
            String agencyCode = request.getParameter("addAgencyCode");
            String phone = request.getParameter("addPhone");
            String password = request.getParameter("addPassword");
            
            
            Connection conn = DBCon.getMyConnection();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM ogauser WHERE username='"+username+"'");
            if(rs.next()){
                st.executeUpdate("UPDATE ogauser SET (username='"+username+"',commonname='"+commonname+"',agencyname='"+agencyName+"',email='"+email+"',agencycode='"+agencyCode+"',phone='"+phone+"')");
            }else{
                st.executeUpdate("INSERT INTO ogauser(username,commonname,agencyname,email,agencycode,password,phone) VALUES('"+username+"','"+commonname+"','"+agencyName+"','"+email+"','"+agencyCode+"',md5('"+password+"'),'"+phone+"')");
            }
            
            response.setStatus(200);
            response.sendRedirect("user.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
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
