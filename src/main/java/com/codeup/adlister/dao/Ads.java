package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    Ad findAdById(long id);

    void deleteById(long id);

    void editAdTitleById(long id, String value);
    void editAdDescriptionById(long id, String value);
    void editAdConditionById(long id, String value);
    void editAdPlatformById(long id, String value);
    void editAdPriceById(long id, double value);
    void editAdGenresById(long id, List<String> values);
}
