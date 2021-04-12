package com.gazFood.controller;

import com.gazFood.entity.City;
import com.gazFood.entity.Departments;
import com.gazFood.entity.Employee;
import com.gazFood.entity.Vacancy;
import com.gazFood.exception_handling.NoSuchVacancyException;
import com.gazFood.exception_handling.VacanciesIncorrectData;
import com.gazFood.service.CityService;
import com.gazFood.service.DepartmentsService;
import com.gazFood.service.EmployeeService;
import com.gazFood.service.VacancyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api")
public class MyRESTController {

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private CityService cityService;

    @Autowired
    private DepartmentsService departmentsService;

    @Autowired
    private VacancyService vacancyService;

    @CrossOrigin(origins = "http://localhost:8079/")

    @GetMapping("/employees")
    @ResponseStatus(value = HttpStatus.OK)
    public List<Employee> showAllEmployees(@RequestHeader Map<String, String> headers) {
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
    @CrossOrigin(origins = "http://localhost:4200")

    @GetMapping("/vacancies")
    public List<Vacancy> showAllVacancies() {
        List<Vacancy> allVacancies = vacancyService.getAllVacancies();
        return allVacancies;
    }

    @GetMapping("/vacancies/{id}")
    public Vacancy getVacancy(@PathVariable int id) {
        Vacancy vacancy = vacancyService.getVacancy(id);
        if (vacancy == null) {
            throw new NoSuchVacancyException("There is no vacancy with ID= " + id + " in Database");
        }
        return vacancy;
    }




}
