package com.codeup.adlister.dao;

import com.codeup.adlister.controllers.Config;
import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
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

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description, price, `condition`, platform, genre) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setFloat(4, ad.getPrice());
            stmt.setString(5, ad.getCondition());
            stmt.setString(6, ad.getPlatform());
            stmt.setString(7, ad.getGenres().toString());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        List<String> genres = Arrays.asList(rs.getString("genre").split(", "));

        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("description"),
                rs.getFloat("price"),
                rs.getString("condition"),
                rs.getString("platform"),
                genres
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    public Ad findAdById(long id) {
        try {
            String findQuery = "SELECT * FROM ads WHERE id = ?;";
            PreparedStatement stmt = connection.prepareStatement(findQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return extractAd(rs);
            } else {
                return null;
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error finding ad with id: " + id);
        }
    }

    public void deleteById(long id) {
        try {
            String deleteQuery = "DELETE FROM ads WHERE id = ?;";
            PreparedStatement stmt = connection.prepareStatement(deleteQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, id);
            System.out.println(stmt);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error deleting Ad id: " + id);
        }
    }

    @Override
    public void editAdTitleById(long id, String value) {
        try {
            String updateQuery = "UPDATE ads SET title = ? WHERE id = ?;";
            PreparedStatement stmt = connection.prepareStatement(updateQuery, Statement.RETURN_GENERATED_KEYS);

            stmt.setString(1, value);
            stmt.setLong(2, id);
            System.out.println(stmt);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error updating Ad id:" + id);
        }
    }

    @Override
    public void editAdDescriptionById(long id, String value) {
        try {
            String updateQuery = "UPDATE ads SET description = ? WHERE id = ?;";
            PreparedStatement stmt = connection.prepareStatement(updateQuery, Statement.RETURN_GENERATED_KEYS);

            stmt.setString(1, value);
            stmt.setLong(2, id);
            System.out.println(stmt);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error updating Ad id:" + id);
        }
    }

    @Override
    public void editAdConditionById(long id, String value) {
        try {
            String updateQuery = "UPDATE ads SET `condition` = ? WHERE id = ?;";
            PreparedStatement stmt = connection.prepareStatement(updateQuery, Statement.RETURN_GENERATED_KEYS);

            stmt.setString(1, value);
            stmt.setLong(2, id);
            System.out.println(stmt);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error updating Ad id:" + id);
        }
    }

    @Override
    public void editAdPlatformById(long id, String value) {
        try {
            String updateQuery = "UPDATE ads SET platform = ? WHERE id = ?;";
            PreparedStatement stmt = connection.prepareStatement(updateQuery, Statement.RETURN_GENERATED_KEYS);

            stmt.setString(1, value);
            stmt.setLong(2, id);
            System.out.println(stmt);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error updating Ad id:" + id);
        }
    }

    @Override
    public void editAdPriceById(long id, double value) {
        try {
            String updateQuery = "UPDATE ads SET price = ? WHERE id = ?;";
            PreparedStatement stmt = connection.prepareStatement(updateQuery, Statement.RETURN_GENERATED_KEYS);

            stmt.setDouble(1, value);
            stmt.setLong(2, id);
            System.out.println(stmt);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error updating Ad id:" + id);
        }
    }

    @Override
    public void editAdGenresById(long id, List<String> values) {
        try {
            String updateQuery = "UPDATE ads SET genre = ? WHERE id = ?;";
            PreparedStatement stmt = connection.prepareStatement(updateQuery, Statement.RETURN_GENERATED_KEYS);

            stmt.setString(1, values.toString());
            stmt.setLong(2, id);
            System.out.println(stmt);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error updating Ad id:" + id);
        }
    }

    @Override
    public List<Ad> findAdsByUserId(long userId) {
        try {
            String findQuery = "SELECT * FROM ads WHERE user_id = ?;";
            PreparedStatement stmt = connection.prepareStatement(findQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, userId);
            System.out.println(stmt);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error finding ad with id: " + userId);
        }
    }

    @Override
    public List<Ad> findAdsByTitle(String searchTerm) {
        try {
            String query =  searchTerm + "%";
            String findQuery = "SELECT * FROM ads WHERE title LIKE ?;";
            PreparedStatement stmt = connection.prepareStatement(findQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, query);
            System.out.println(stmt);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return createAdsFromResults(rs);
            } else {
                return null;
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error finding ad with search term: " + searchTerm);
        }
    }
}
