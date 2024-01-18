package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.example.demo.model.Cat;
import com.example.demo.repository.AdoptionRepository;
import com.example.demo.service.CatService;

@Controller
public class CatController {

    @Autowired
    private CatService catService;
    @Autowired
    private AdoptionRepository adoptionRepository;

    @GetMapping("/catlist")
    public String viewHomePage(Model model) {
        List<Cat> catList = catService.listAllCats();
        
        model.addAttribute("catList", catList);
        System.out.println("Number of records retrieved: " + catList.size());
        return "catlist";
    }

    @GetMapping("/catlist2")
    public String viewHomePage2(Model model) {
        List<Cat> catList = catService.listAllCats();
        model.addAttribute("adoptionRepository", adoptionRepository);

        model.addAttribute("catList", catList);
        System.out.println("Number of records retrieved: " + catList.size());
        return "show3";
    }
    @GetMapping("/newcat")
    public String add(Model model) {
        model.addAttribute("cat", new Cat());
        return "newcat";
    }

    @PostMapping("/savecat")
    public String saveCat(@ModelAttribute("cat") Cat cat) {
        catService.saveCat(cat);
        return "redirect:/catlist";
    }

    @GetMapping("/editcat/{id}")
    public String showEditCatPage(@PathVariable(name = "id") Long id, Model model) {
        Cat cat = catService.getCat(id);
        model.addAttribute("cat", cat);
        return "newcat";
    }

    @GetMapping("/deletecat/{id}")
    public String deleteCat(@PathVariable(name = "id") Long id) {
        catService.deleteCat(id);
        return "redirect:/catlist";
    }
}
