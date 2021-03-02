package com.gazFood.service;

import com.gazFood.entity.Departments;

import java.util.List;

public interface DepartmentsService {
    public List<Departments> getAllDepartments();

    public void saveDepartment(Departments departments);

    public Departments getDepartment(int id);

    public void deleteDepartment(int id);
}
