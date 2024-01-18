package com.example.demo.controller;

import com.example.demo.model.Adoption;
import com.example.demo.service.AdoptionService;
import com.example.demo.service.AdoptionService.BirdAlreadyAdoptedException;
import com.example.demo.service.AdoptionService.CatAlreadyAdoptedException;
import com.example.demo.service.AdoptionService.DogAlreadyAdoptedException;
import com.example.demo.service.AdoptionService.HabbitHamsterAlreadyAdoptedException;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping("/adoptions")
public class AdoptionController {
    @Autowired
    private AdoptionService adoptionService;
    
    @GetMapping("/adoptForm/{dogId}")
    public String showAdoptForm(@PathVariable Long dogId, Model model) {
        model.addAttribute("dogId", dogId);
        return "adoptForm";
    }

    
    @GetMapping("/successadopted")
    public String showAdoptFor2() {
        return "successadopted";
    }
    
    @GetMapping("/erroradopted")
    public String showAdoptFor3() {
        return "erroradopted";
    }
    @GetMapping("/adoptionlist")
    public String viewAdoptionList(Model model) {
        List<Adoption> adoptionList = adoptionService.listAllAdoptions();
        List<Adoption> adoptionList2 = adoptionService.listAllAdoptions();

        model.addAttribute("adoptionList", adoptionList);
        model.addAttribute("adoptionList2", adoptionList2);

        System.out.println("Number of adoption records retrieved: " + adoptionList.size());
        return "adoptionlist";
    }
   
    @PostMapping("/adopt")
    public String adoptDog(
            @RequestParam Long dogId,
            @RequestParam String adopterName,
            @RequestParam String reasonForAdoption) {
        try {
            adoptionService.adoptDog(dogId, adopterName, reasonForAdoption);
            return "successadopted";
        } catch (DogAlreadyAdoptedException e) {
            
            return "erroradopted";
        }
    }


    @GetMapping("/editadoption/{id}")
    public String showEditAdoptionPage(@PathVariable(name = "id") Long id, Model model) {
        Adoption adoption = adoptionService.getAdoption(id);
        model.addAttribute("adoption", adoption);
        return "EditadoptForm";
    }

    @GetMapping("/deleteadoption/{id}")
    public String deleteAdoption(@PathVariable(name = "id") Long id) {
        adoptionService.deleteAdoption(id);
        return "redirect:/adoptions/adoptionlist";
    }

    
    @PostMapping("/updateadoption")
    public String updateAdoption(@RequestParam Long id,
                                 @RequestParam String adopterName,
                                 @RequestParam String reasonForAdoption) {

        adoptionService.updateAdoption(id, adopterName, reasonForAdoption);

        return "redirect:/adoptions/adoptionlist";
    }

    
    
    @GetMapping("/adoptFormcat/{catId}")
    public String showAdoptCatForm(@PathVariable Long catId, Model model) {
        model.addAttribute("catId", catId);
        return "adoptFormcat";
    }

    @PostMapping("/adoptCat")
    public String adoptCat(
            @RequestParam Long catId,
            @RequestParam String adopterName,
            @RequestParam String reasonForAdoption) {
        try {
            adoptionService.adoptCat(catId, adopterName, reasonForAdoption);
            return "successadopted";
        } catch (CatAlreadyAdoptedException e) {
            
            return "erroradopted";
        }
    }

    @GetMapping("/editadoption2/{id}")
    public String showEditAdoptionPage2(@PathVariable(name = "id") Long id, Model model) {
        Adoption adoption = adoptionService.getAdoption(id);
        model.addAttribute("adoption", adoption);
        return "EditadoptForm";
    }

    @GetMapping("/deleteadoption2/{id}")
    public String deleteAdoption2(@PathVariable(name = "id") Long id) {
        adoptionService.deleteAdoption(id);
        return "redirect:/adoptions/adoptionlist";
    }
    
    
    @GetMapping("/adoptFormbird/{birdId}")
    public String showAdoptBirdForm(@PathVariable Long birdId, Model model) {
        model.addAttribute("birdId", birdId);
        return "adoptFormbird";
    }
    @PostMapping("/adoptBird")
    public String adoptBird(
            @RequestParam Long birdId,
            @RequestParam String adopterName,
            @RequestParam String reasonForAdoption) {
        try {
            adoptionService.adoptBird(birdId, adopterName, reasonForAdoption);
            return "successadopted";
        } catch (BirdAlreadyAdoptedException e) {
            
            return "erroradopted";
        }
    }


    @GetMapping("/editadoption3/{id}")
    public String showEditAdoptionPage3(@PathVariable(name = "id") Long id, Model model) {
        Adoption adoption = adoptionService.getAdoption(id);
        model.addAttribute("adoption", adoption);
        return "EditadoptForm";
    }

    @GetMapping("/deleteadoption3/{id}")
    public String deleteAdoption3(@PathVariable(name = "id") Long id) {
        adoptionService.deleteAdoption(id);
        return "redirect:/adoptions/adoptionlist";
    }

    
    @GetMapping("/adoptFormHabbitHamster/{habbitHamsterId}")
    public String showAdoptHabbitHamsterForm(@PathVariable Long habbitHamsterId, Model model) {
        model.addAttribute("habbitHamsterId", habbitHamsterId);
        return "adoptFormHabbitHamster";
    }

    @PostMapping("/adoptHabbitHamster")
    public String adoptHabbitHamster(
            @RequestParam Long habbitHamsterId,
            @RequestParam String adopterName,
            @RequestParam String reasonForAdoption) {
        try {
            adoptionService.adoptHabbitHamster(habbitHamsterId, adopterName, reasonForAdoption);
            return "successadopted";
        } catch (HabbitHamsterAlreadyAdoptedException e) {
            return "erroradopted";
        }
    }


    @GetMapping("/editAdoptionHabbitHamster/{id}")
    public String showEditAdoptionPageHabbitHamster(@PathVariable(name = "id") Long id, Model model) {
        Adoption adoption = adoptionService.getAdoption(id);
        model.addAttribute("adoption", adoption);
        return "EditAdoptFormHabbitHamster";
    }

    @GetMapping("/deleteAdoptionHabbitHamster/{id}")
    public String deleteAdoptionHabbitHamster(@PathVariable(name = "id") Long id) {
        adoptionService.deleteAdoption(id);
        return "redirect:/habbitHamsters/adoptionList";
    }
}
