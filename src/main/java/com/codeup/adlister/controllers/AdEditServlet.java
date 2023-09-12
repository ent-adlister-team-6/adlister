package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "controllers.AdEditServlet", urlPatterns = "/ads/edit")
public class AdEditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = Integer.parseInt(req.getParameter("id"));
        if (DaoFactory.getAdsDao().findAdById(id) == null) {
            resp.sendRedirect("/ads");
        } else {
            req.setAttribute("ad", DaoFactory.getAdsDao().findAdById(id));
            req.getRequestDispatcher("/WEB-INF/ads/editad.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User loggedInUser = (User) request.getSession().getAttribute("user");
        long adId = Integer.parseInt(request.getParameter("id"));
        List<String> genres = new ArrayList<>();
        for (int i = 1; i <= 5; i++) {
            String genre = "genre" + i;
            if (request.getParameter(genre) != null) {
                genres.add(request.getParameter(genre));
            }
        }
        DaoFactory.getAdsDao().editAdTitleById(adId, request.getParameter("title"));
        DaoFactory.getAdsDao().editAdDescriptionById(adId, request.getParameter("description"));
        DaoFactory.getAdsDao().editAdPriceById(adId, Double.parseDouble(request.getParameter("price")));
        DaoFactory.getAdsDao().editAdConditionById(adId, request.getParameter("condition"));
        DaoFactory.getAdsDao().editAdPlatformById(adId, request.getParameter("platform"));
        DaoFactory.getAdsDao().editAdGenresById(adId, genres);

        response.sendRedirect("/ads/details?id=" + adId);
    }
}
