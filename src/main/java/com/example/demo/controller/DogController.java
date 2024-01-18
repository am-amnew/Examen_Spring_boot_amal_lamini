package com.example.demo.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.demo.model.Dog;
import com.example.demo.repository.AdoptionRepository;
import com.example.demo.service.DogService;

@Controller
public class DogController {
    
    @Autowired
    private DogService dogService;
    @Autowired
    private AdoptionRepository adoptionRepository;

    @GetMapping("/doglist")
    public String viewHomePage(Model model) {
        List<Dog> dogList = dogService.listAllDogs();
        model.addAttribute("dogList", dogList);
        System.out.println("Number of records retrieved: " + dogList.size()); 
        return "doglist";
    }
    
    
    @GetMapping("/adoptdoglist")
    public String viewHomePage3(Model model) {
        List<Dog> dogList = dogService.listAllDogs();
        model.addAttribute("dogList", dogList);
        System.out.println("Number of records retrieved: " + dogList.size()); 
        return "doglist";
    }
    @GetMapping("/doglist2")
    public String viewHomePage2(Model model) {
        List<Dog> dogList = dogService.listAllDogs();
        
        model.addAttribute("dogList", dogList);
        model.addAttribute("adoptionRepository", adoptionRepository);

        System.out.println("Number of records retrieved: " + dogList.size()); 
        return "show2";
    }
    @GetMapping("/newdog")
    public String add(Model model) {
        model.addAttribute("dog", new Dog());
        return "newdog";
    }

    @PostMapping("/savedog")
    public String saveDog(@ModelAttribute("dog") Dog dog) {
        dogService.saveDog(dog);
        return "redirect:/doglist";
    }

    @GetMapping("/editdog/{id}")
    public String showEditDogPage(@PathVariable(name = "id") Long id, Model model) {
        Dog dog = dogService.getDog(id);
        model.addAttribute("dog", dog);
        return "newdog";
    }

    @GetMapping("/deletedog/{id}")
    public String deleteDog(@PathVariable(name = "id") Long id) {
        dogService.deleteDog(id);
        return "redirect:/doglist";
    }
}