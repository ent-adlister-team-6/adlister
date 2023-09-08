package com.codeup.adlister.controllers;

import com.codeup.adlister.models.User;
import com.codeup.adlister.models.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditProfileServlet", urlPatterns = "/edit-profile")
public class EditProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Check if the user is logged in, if not, redirect to the login page.
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        // Retrieve the current user's profile data from the database.
        User user = (User) request.getSession().getAttribute("user");

        // Populate the form fields with the existing data for editing.
        request.setAttribute("user", user);
        request.getRequestDispatcher("/WEB-INF/editProfile.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Check if the user is logged in, if not, redirect to the login page.
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        // Retrieve the current user's profile data from the database.
        User user = (User) request.getSession().getAttribute("user");

        // Retrieve updated data from the form.
        String newBio = request.getParameter("bio");
        String newLocation = request.getParameter("location");

        // Update the user's profile data in the database.
        UserService userService = new UserService(); // You may need to create a UserService class.
        boolean updated = userService.updateUserProfile(user.getId(), newBio, newLocation);

        if (updated) {
            // If the update is successful, redirect to the user's profile page.
            response.sendRedirect("/profile");
        } else {
            // If the update fails, display an error message and stay on the edit page.
            request.setAttribute("error", "Failed to update profile. Please try again.");
            request.getRequestDispatcher("/WEB-INF/editProfile.jsp").forward(request, response);

        }
    }
}
