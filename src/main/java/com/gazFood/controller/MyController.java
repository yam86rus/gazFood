package com.gazFood.controller;

import com.gazFood.entity.Cassa;
import com.gazFood.entity.City;
import com.gazFood.entity.Departments;
import com.gazFood.service.CassaService;
import com.gazFood.service.CityService;
import com.gazFood.service.DepartmentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.List;

@Controller
public class MyController {
    @Autowired
    private CassaService cassaService;
    @Autowired
    private DepartmentsService departmentsService;
    @Autowired
    private CityService cityService;

    @RequestMapping("/")
    public String showMain() {
        return "main";
    }

    @RequestMapping("/cassa")
    public String showAllCassa(Model model) {
        List<Cassa> allCassa = cassaService.getAllCassa();
        model.addAttribute("allCassa", allCassa);
        return "all-cassa";
    }

    @RequestMapping("/addNewCassa")
    public String addNewCassa(Model model) {
        Cassa cassa = new Cassa();
        model.addAttribute("cassa", cassa);
        return "cassa-info";
    }

    @RequestMapping("/saveCassa")
    public String saveCassa(@Valid @ModelAttribute("cassa") Cassa cassa, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "cassa-info";
        } else {
            cassaService.saveCassa(cassa);
            return "redirect:/cassa";
        }
    }

    @RequestMapping("/updateInfo")
    public String updateCassa(@RequestParam("cassaId") int id, Model model) {
        Cassa cassa = cassaService.getCassa(id);
        model.addAttribute("cassa", cassa);
        return "cassa-info";
    }

    @RequestMapping("/deleteCassa")
    public String deleteCassa(@RequestParam("cassaId") int id) {
        cassaService.deleteCassa(id);
        return "redirect:/cassa";
    }

    @RequestMapping("/departments")
    public String getAllDepartments(Model model) {
        List<Departments> allDepartments = departmentsService.getAllDepartments();
        model.addAttribute("allDeprts", allDepartments);
        return "all-departments";
    }

    @RequestMapping("/addNewDepartment")
    public String addNewDepartment(Model model) {
        Departments departments = new Departments();
        model.addAttribute("departments", departments);
        return "departments-info";
    }

    @RequestMapping("/saveDepartment")
    public String saveDepartment(@Valid @ModelAttribute("departments") Departments departments, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "departments-info";
        } else {
            departmentsService.saveDepartment(departments);
            return "redirect:/departments";
        }
    }

    @RequestMapping("/updateDepartment")
    public String updateDepartment(@RequestParam("departmentId") int id, Model model) {
        Departments departments = departmentsService.getDepartment(id);
        model.addAttribute("departments", departments);
        return "departments-info";
    }

    @RequestMapping("/deleteDepartment")
    public String deleteDepartment(@RequestParam("departmentId") int id) {
        departmentsService.deleteDepartment(id);
        return "redirect:/departments";
    }

    @RequestMapping("/city")
    public String showAllCity(Model model) {
        List<City> allCities = cityService.getAllCities();
        model.addAttribute("allCities",allCities);
        return "all-city";
    }
}


