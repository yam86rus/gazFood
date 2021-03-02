package com.gazFood.service;

import com.gazFood.dao.DepartmentsDAO;
import com.gazFood.entity.Departments;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class DepartmentsServiceImpl implements DepartmentsService{
    @Autowired
    private DepartmentsDAO departmentsDAO;

    @Override
    @Transactional
    public List<Departments> getAllDepartments() {
        return departmentsDAO.getAllDepartments();
    }

    @Override
    @Transactional
    public void saveDepartment(Departments departments) {
    departmentsDAO.saveDepartment(departments);
    }

    @Override
    @Transactional
    public Departments getDepartment(int id) {
        return departmentsDAO.getDepartment(id);
    }

    @Override
    @Transactional
    public void deleteDepartment(int id) {
        departmentsDAO.deleteDepartment(id);
    }
}
