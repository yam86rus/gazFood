package com.gazFood.dao;

import com.gazFood.entity.City;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CityDAOImpl implements CityDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<City> getAllCities() {
        Session session = sessionFactory.getCurrentSession();
        Query<City> query = session.createQuery("from City order by city", City.class);
        List<City> allCity = query.getResultList();
        return allCity;
    }
}
