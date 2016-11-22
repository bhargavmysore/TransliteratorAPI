/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.knsi.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kaushiknsiyer
 */
public class URLAccessorServlet extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String []requestUrl = request.getRequestURI().split("/");
//            for (int i = 0; i < requestUrl.length; i++) {
//                out.println(requestUrl[i]+"<br>");
//            }
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String tableName = requestUrl[3];
            String destLanguage = requestUrl[4].toUpperCase();
            String srcLanguage = requestUrl[3].toUpperCase();
            
            System.out.println(tableName+" "+destLanguage+" "+srcLanguage);
            
            String queryString = "SELECT "+destLanguage+" FROM "+tableName+" WHERE "+srcLanguage+"=?";
            Connection mConnection = DriverManager.getConnection("jdbc:mysql://localhost:8889/IISC","root","root");
            
            PreparedStatement mPreparedStatement = mConnection.prepareStatement(queryString);
            
            String ttc[] = new String[requestUrl[5].length()/3];
            String returnString[] = new String[requestUrl[5].length()/3];
            for (int i = 0; i < requestUrl[5].length(); i+=3) {
                ttc[i/3] = requestUrl[5].substring(i, i+3);

            }
            for (int i = 0; i < ttc.length; i++) {
                
                mPreparedStatement.setString(1, ttc[i]);
                ResultSet rs = mPreparedStatement.executeQuery();
                if(rs.next()){
                    returnString[i] = rs.getString(destLanguage);
                }
            }
            
            for (int i = 0; i < returnString.length; i++) {
                out.println(returnString[i]+" ");
            }
            
            
            
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(URLAccessorServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(URLAccessorServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
