package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("search") != null){
            if(request.getParameter("search").equals("title")){
                request.setAttribute("ads", DaoFactory.getAdsDao().sortAdsByTitle());
            } else if (request.getParameter("search").equals("price")){
                request.setAttribute("ads", DaoFactory.getAdsDao().sortAdsByPrice());
            } else {
                String searchTerm = request.getParameter("search");
                request.setAttribute("ads", DaoFactory.getAdsDao().findAdsByTitle(searchTerm));
            }
        } else {
            request.setAttribute("ads", DaoFactory.getAdsDao().all());
        }
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
