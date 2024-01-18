package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.demo.model.HabbitHamster;
import com.example.demo.repository.AdoptionRepository;
import com.example.demo.service.HabbitHamsterService;

@Controller
public class HabbitHamsterController {

    @Autowired
    private HabbitHamsterService habbitHamsterService;
    @Autowired
    private AdoptionRepository adoptionRepository;

    @GetMapping("/habbithamsterlist")
    public String viewHomePage(Model model) {
        List<HabbitHamster> habbitHamsterList = habbitHamsterService.listAllHabbitHamsters();
        model.addAttribute("habbitHamsterList", habbitHamsterList);
        System.out.println("Number of records retrieved: " + habbitHamsterList.size());
        return "habbithamsterlist";
    }

    @GetMapping("/habbithamsterlist2")
    public String viewHomePage2(Model model) {
        List<HabbitHamster> habbitHamsterList = habbitHamsterService.listAllHabbitHamsters();
        model.addAttribute("adoptionRepository", adoptionRepository);

        model.addAttribute("habbitHamsterList", habbitHamsterList);
        System.out.println("Number of records retrieved: " + habbitHamsterList.size());
        return "show4";
    }
    @GetMapping("/newhabbithamster")
    public String add(Model model) {
        model.addAttribute("habbitHamster", new HabbitHamster());
        return "newhabbithamster";
    }

    @PostMapping("/savehabbithamster")
    public String saveHabbitHamster(@ModelAttribute("habbitHamster") HabbitHamster habbitHamster) {
        habbitHamsterService.saveHabbitHamster(habbitHamster);
        return "redirect:/habbithamsterlist";
    }

    @GetMapping("/edithabbit/{id}")
    public String showEditHabbitHamsterPage(@PathVariable(name = "id") Long id, Model model) {
        HabbitHamster habbitHamster = habbitHamsterService.getHabbitHamster(id);
        model.addAttribute("habbitHamster", habbitHamster);
        return "newhabbithamster";
    }

    @GetMapping("/deletehabbit/{id}")
    public String deleteHabbitHamster(@PathVariable(name = "id") Long id) {
        habbitHamsterService.deleteHabbitHamster(id);
        return "redirect:/habbithamsterlist";
    }
}
