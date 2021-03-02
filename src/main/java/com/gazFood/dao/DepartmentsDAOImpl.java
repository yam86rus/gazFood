package com.gazFood.dao;

import com.gazFood.entity.Departments;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class DepartmentsDAOImpl implements DepartmentsDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Departments> getAllDepartments() {
        Session session = sessionFactory.getCurrentSession();

        Query<Departments> query = session.createQuery("from Departments", Departments.class);
        List<Departments> allDepartments = query.getResultList();
        return allDepartments;
    }

    @Override
    public void saveDepartment(Departments departments) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(departments);
    }

    @Override
    public Departments getDepartment(int id) {
        Session session = sessionFactory.getCurrentSession();
        Departments departments = session.get(Departments.class, id);
        return departments;
    }

    @Override
    public void deleteDepartment(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Departments> query = session.createQuery("delete from Departments  where id=:departmentId");
        query.setParameter("departmentId", id);
        query.executeUpdate();
    }
}
