package com.gazFood.dao;

import com.gazFood.entity.Departments;

import java.util.List;

public interface DepartmentsDAO {
    public List<Departments> getAllDepartments();

    public void saveDepartment(Departments departments);

    public Departments getDepartment(int id);

    public void deleteDepartment(int id);
}
