package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.demo.model.Etudiant;
import com.example.demo.service.EtudiantService;

@Controller
public class EtudiantController {
    
    @Autowired
    private EtudiantService service;

 
    @GetMapping("/")
    public String viewHomePage(Model model) {
        List<Etudiant> listEtudiant = service.listAll();
        model.addAttribute("listetudiant", listEtudiant);
        System.out.println("Number of records retrieved: " + listEtudiant.size()); 
        return "index";
    }



    @GetMapping("/new")
    public String add(Model model) {
        model.addAttribute("etudiant", new Etudiant());
        return "new";
    }



    @PostMapping("/save")
    public String saveEtudiant(@ModelAttribute("etudiant") Etudiant etudiant) {
        service.saveEtudiant(etudiant);
        return "redirect:/";
    }

    @GetMapping("/edit/{id}")
    public String showEditEtudiantPage(@PathVariable(name = "id") Long id, Model model) {
        Etudiant etudiant = service.getEtudiant(id);
        model.addAttribute("etudiant", etudiant);
        return "new";
    }

    @GetMapping("/delete/{id}")
    public String deleteEtudiant(@PathVariable(name = "id") Long id) {
        service.deleteEtudiant(id);
        return "redirect:/";
    }
}
