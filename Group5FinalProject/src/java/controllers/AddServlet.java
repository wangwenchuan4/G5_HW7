/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dbhelpers.AddQuery;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Support;

/**
 *
 * @author Wenchuan
 */
@WebServlet(name = "AddServlet", urlPatterns = {"/addVisitor"})
public class AddServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        doPost(request, response);
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
        //get the data playerName, team, courtPosition, points
        String firstName = request.getParameter("firstName");
        String phone=request.getParameter("phone");
        String email=request.getParameter("email");
        String lastName=request.getParameter("lastName");
        String why=request.getParameter("why");
        String posted=request.getParameter("posted");
        String willhelp=request.getParameter("willhelp");
        String support=request.getParameter("support");
        //set up a support obj
        Support visitor = new Support();
        visitor.setFirstName(firstName);
        visitor.setPhone(phone);
        visitor.setEmail(email);
        visitor.setLastName(lastName);
        visitor.setWhy(why);
        visitor.setPosted(posted);
        visitor.setWillhelp(willhelp);
        visitor.setSupport(support);
        //set up an addQuery obj
        AddQuery aq =new AddQuery();
        //pass player to addQuery to add to the database
        aq.doAdd(visitor);
        //pass execution control to the ReadServlet
        String url = "/read";
        
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward (request, response);
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
