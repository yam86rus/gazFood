package com.gazFood.service;

import com.gazFood.dao.CityDAO;
import com.gazFood.entity.City;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CityServiceImpl implements CityService{
    @Autowired
    private CityDAO cityDAO;

    @Override
    @Transactional
    public List<City> getAllCities() {
        return cityDAO.getAllCities();
    }
}
