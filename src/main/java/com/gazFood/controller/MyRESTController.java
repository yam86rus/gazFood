package com.gazFood.controller;

import com.gazFood.entity.City;
import com.gazFood.entity.Departments;
import com.gazFood.entity.Employee;
import com.gazFood.service.CityService;
import com.gazFood.service.DepartmentsService;
import com.gazFood.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class MyRESTController {

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private CityService cityService;

    @Autowired
    private DepartmentsService departmentsService;

    @GetMapping("/employees")
    public List<Employee> showAllEmployees() {
        List<Employee> allEmployees = employeeService.getAllEmployees();
        return allEmployees;
    }

    @GetMapping("/cities")
    public List<City> showAllCities() {
        List<City> allCities = cityService.getAllCities();
        return allCities;
    }

    @GetMapping("/departments")
    public List<Departments> showAllDepartments() {
        List<Departments> allDepartments = departmentsService.getAllDepartments();
        return allDepartments;
    }


}
