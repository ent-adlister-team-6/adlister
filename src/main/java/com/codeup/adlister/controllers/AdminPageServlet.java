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

        // Set the content type and character encoding for the response
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        // Create a PrintWriter to write HTML content to the response
        PrintWriter out = response.getWriter();

        // HTML response content
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>My Servlet</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Hello, Servlet!</h1>");
        out.println("<p>This is a simple Servlet example.</p>");
        out.println("</body>");
        out.println("</html>");

        // Close the PrintWriter
        out.close();
    }
}