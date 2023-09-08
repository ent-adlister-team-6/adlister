package com.codeup.adlister.models;

import java.util.List;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private float price;
    private String condition;
    private String platform;
    private List<String> genres;

    public Ad(long id, long userId, String title, String description, float price, String condition, String platform, List<String> genres) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.price = price;
        this.condition = condition;
        this.platform = platform;
        this.genres = genres;
    }



//    public Ad(long id, long userId, String title, String description) {
//        this.id = id;
//        this.userId = userId;
//        this.title = title;
//        this.description = description;
//    }

    public Ad(long userId, String title, String description, float price, String condition, String platform, List<String> genres) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.price = price;
        this.condition = condition;
        this.platform = platform;
        this.genres = genres;
    }

//    public Ad(long userId, String title, String description) {
//        this.userId = userId;
//        this.title = title;
//        this.description = description;
//    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public void setPlatform(String platform) {
        this.platform = platform;
    }

    public void setGenres(List<String> genres) {
        this.genres = genres;
    }

    public float getPrice() {
        return price;
    }

    public String getCondition() {
        return condition;
    }

    public String getPlatform() {
        return platform;
    }

    public List<String> getGenres() {
        return genres;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
