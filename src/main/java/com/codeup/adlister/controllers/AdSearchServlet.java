package com.codeup.adlister.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdsSearchServlet", urlPatterns = "/search")
public class AdSearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("search") !=null) {
            String searchTerm = request.getParameter("search");
            System.out.println(searchTerm);
            response.sendRedirect("/ads?search=" + searchTerm);
        } else {
            response.sendRedirect("/ads");
        }
//        request.getRequestDispatcher("/WEB-INF/partials/navbar.jsp").forward(request, response);
    }
}
