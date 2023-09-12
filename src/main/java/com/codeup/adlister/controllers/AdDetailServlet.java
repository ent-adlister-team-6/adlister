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

@WebServlet(name = "controllers.AdDetailServlet", urlPatterns = "/ads/details")
public class AdDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = Integer.parseInt(req.getParameter("id"));
        if (DaoFactory.getAdsDao().findAdById(id) == null) {
            resp.sendRedirect("/ads");
        } else {
            req.setAttribute("ad", DaoFactory.getAdsDao().findAdById(id));
            req.getRequestDispatcher("/WEB-INF/ads/details.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User loggedInUser = (User) req.getSession().getAttribute("user");
        long adId = Integer.parseInt(req.getParameter("id"));
        //the three submit inputs on the jsp are named "action", each pass a different value (add, edit, delete)
        String action = req.getParameter("action");
        System.out.println(action);


        if (action.equalsIgnoreCase("add")) {
        } else if (action.equalsIgnoreCase("edit")) {
            resp.sendRedirect("/ads/edit?id=" + adId);
        } else if (action.equalsIgnoreCase("delete")) {
            DaoFactory.getAdsDao().deleteById(adId);
            resp.sendRedirect("/ads");
        }

    }
}
