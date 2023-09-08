package com.codeup.adlister.models;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.Users;

public class UserService {
    private Users userDao;

    public UserService() {
        this.userDao = DaoFactory.getUsersDao();
    }

    public boolean updateUserProfile(long userId, String newBio, String newLocation) {
        // Add error handling and validation as needed.
        User user = userDao.findById(userId);

        if (user == null) {
            return false; // User not found.
        }

        // Update the user's profile data.
        user.setBio(newBio);
        user.setLocation(newLocation);

        // Save the updated user object back to the database.
        userDao.update(user);

        return true;
    }
}
