package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String bio = req.getParameter("bio");
        String location = req.getParameter("location");
        boolean inputHasErrors = bio.isEmpty()
                || location.isEmpty();

        if (inputHasErrors) {
            resp.sendRedirect("/register");
            return;
        }


        User user = (User) req.getSession().getAttribute("user");
        user.setBio(bio);
        user.setLocation(location);

        DaoFactory.getUsersDao().insert(user);
        resp.sendRedirect("/profile");
    }
}
