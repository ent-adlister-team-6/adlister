package com.codeup.adlister.controllers;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "controllers.AdminPageServlet", urlPatterns = "/adminpage")
public class AdminPageServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
request.getRequestDispatcher("WEB-INF/adminpage.jsp").forward(request,response);
        // Set the content type and character encoding for the response

    }
}