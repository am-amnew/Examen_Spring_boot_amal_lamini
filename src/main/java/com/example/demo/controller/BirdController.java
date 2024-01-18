package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.demo.model.Bird;
import com.example.demo.repository.AdoptionRepository;
import com.example.demo.service.BirdService; // Assuming you have a BirdService

@Controller
public class BirdController {

    @Autowired
    private BirdService birdService; 
    @Autowired
    private AdoptionRepository adoptionRepository;

    @GetMapping("/birdlist")
    public String viewBirdList(Model model) {
        List<Bird> birdList = birdService.listAllBirds();
        model.addAttribute("birdList", birdList);
        System.out.println("Number of records retrieved: " + birdList.size());
        return "birdlist"; 
    }

    
    @GetMapping("/birdlist2")
    public String viewBirdList2(Model model) {
        List<Bird> birdList = birdService.listAllBirds();
        model.addAttribute("adoptionRepository", adoptionRepository);

        model.addAttribute("birdList", birdList);
        System.out.println("Number of records retrieved: " + birdList.size());
        return "show"; 
    }
    
    
    @GetMapping("/newbird")
    public String add(Model model) {
        model.addAttribute("bird", new Bird());
        return "newbird"; 
    }

    @PostMapping("/savebird")
    public String saveBird(@ModelAttribute("bird") Bird bird) {
        birdService.saveBird(bird);
        return "redirect:/birdlist";
    }

    @GetMapping("/editbird/{id}")
    public String showEditBirdPage(@PathVariable(name = "id") Long id, Model model) {
        Bird bird = birdService.getBird(id);
        model.addAttribute("bird", bird);
        return "newbird"; 
    }

    @GetMapping("/deletebird/{id}")
    public String deleteBird(@PathVariable(name = "id") Long id) {
        birdService.deleteBird(id);
        return "redirect:/birdlist";
    }
}
