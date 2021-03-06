package com.gazFood.controller;

import com.gazFood.entity.Vacancy;
import com.gazFood.service.VacancyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller

public class VacancyController {

    @Autowired
    private VacancyService vacancyService;

    //    @RequestMapping("/vacancies")
//    public String showVacanciesPage(Model model){
//        List<Vacancy> allVacancies = vacancyService.getAllVacancies();
//        model.addAttribute("allVacancies", allVacancies);
//        return "vacancies";
//    }
    @RequestMapping("/vacancies")
    public String showAllVacancies (Model model) {
        List<Vacancy> allVacancies = vacancyService.getAllVacancies();
        model.addAttribute("allVacancies", allVacancies);
        return "all-vacancies";
    }


    @RequestMapping("/addNewVacancy")
    public String addNewVacancy(Model model) {
        Vacancy vacancy = new Vacancy();
        model.addAttribute("vacancy", vacancy);
        return "vacancy-info";
    }

    @RequestMapping("/saveVacancy")
    public String saveVacancy(@ModelAttribute("vacancy") Vacancy vacancy) {
        vacancyService.saveVacancy(vacancy);
        return "redirect:vacancies";
    }

    @RequestMapping("/updateVacancy")
    public String updateVacancy(@RequestParam("vacancyId") int id, Model model) {
        Vacancy vacancy = vacancyService.getVacancy(id);
        model.addAttribute("vacancy", vacancy);
        return "vacancy-info";
    }

    @RequestMapping("/deleteVacancy")
    public String deleteVacancy(@RequestParam("vacancyId") int id) {
        vacancyService.deleteVacancy(id);
        return "redirect:vacancies";
    }
}
