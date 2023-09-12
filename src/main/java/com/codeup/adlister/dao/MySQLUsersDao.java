package com.codeup.adlister.dao;

import com.codeup.adlister.controllers.Config;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    public MySQLUsersDao(javax.servlet.jsp.jstl.core.Config config) {
    }


    @Override
    public User findByUsername(String username) {
        String query = "SELECT * FROM users WHERE username = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    @Override
    public Long insert(User user) {
        String query = "INSERT INTO users (username, email, password, bio, location) VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, user.getBio());
            stmt.setString(5, user.getLocation());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new user", e);
        }
    }

    @Override
    public User findById(long id) {
        try {
            // Define your SQL query
            String sql = "SELECT * FROM users WHERE id = ?";

            // Create a prepared statement
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setLong(1, id);

            // Execute the query
            ResultSet rs = stmt.executeQuery();

            // Check if a user was found
            if (rs.next()) {
                // Create a User object with the retrieved data
                return new User(
                        rs.getLong("id"),
                        rs.getString("username"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("bio"),
                        rs.getString("location")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Return null if no user was found
        return null;
    }


    @Override
    public boolean update(User user) {
        try {
            // Define your SQL query
            String sql = "UPDATE users SET bio = ?, location = ? WHERE id = ?";

            // Create a prepared statement
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, user.getBio());
            stmt.setString(2, user.getLocation());
            stmt.setLong(3, user.getId());

            // Execute the update query
            int rowsUpdated = stmt.executeUpdate();

            // Check if the update was successful
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }



    private User extractUser(ResultSet rs) throws SQLException {
        if (! rs.next()) {
            return null;
        }
        return new User(
            rs.getLong("id"),
            rs.getString("username"),
            rs.getString("email"),
            rs.getString("password"),
            rs.getString("bio"),
            rs.getString("location")
        );
    }

}
