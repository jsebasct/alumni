/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.edu.challenge;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.edu.challenge.model.User;
import org.edu.challenge.service.UserSecurity;

/**
 *
 * @author jscruz
 */
public class LoginServlet extends HttpServlet {

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
        
        String userName = request.getParameter("txtName");
        String userPassword = request.getParameter("txtPassword");
        
        System.out.println("Servlet UserName:" + userName);
        System.out.println("Servlet Password:" + userPassword);
        
        UserSecurity user = new UserSecurity();
        User validUser = user.checkValidUser(userName, userPassword);
        
        RequestDispatcher rd;
        if (validUser != null) {
            request.getSession().setAttribute("tmp_logged_user", validUser);
            //request.setAttribute("tmp_logged_user", validUser);
            //response.sendRedirect("bienvenido.jsp");
            rd = request.getRequestDispatcher("bienvenido.jsp");
        } else {
            request.setAttribute("tmp_login_error", "Ingreso datos incorrectos");
            rd = request.getRequestDispatcher("index.jsp");
//            response.sendRedirect("index.jsp");
        }
        rd.forward(request, response);
        
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
