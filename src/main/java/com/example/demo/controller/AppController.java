package com.example.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.model.Bird;
import com.example.demo.model.Cat;
import com.example.demo.model.Dog;
import com.example.demo.model.HabbitHamster;
import com.example.demo.model.User;
import com.example.demo.repository.AdoptionRepository;
import com.example.demo.repository.UserRepository;
import com.example.demo.service.BirdService;
import com.example.demo.service.CatService;
import com.example.demo.service.DogService;
import com.example.demo.service.HabbitHamsterService;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@Controller
public class AppController {
	@Autowired
    private AdoptionRepository adoptionRepository;

    @Autowired
    private UserRepository userRepo;
    
    @Autowired
    private BirdService birdService; 
    
    @Autowired
    private CatService catService;
    @Autowired
    private DogService dogService;

    @Autowired
    private HabbitHamsterService habbitHamsterService;
    @GetMapping("/home")
    public String viewHome() {
        

        return "home";
    }
    
   
    @GetMapping("/open")
    public String v() {
        

        return "open";
    }
    
   
    
    @GetMapping("/listall")
    public String viewBirdList(Model model) {
        List<Bird> birdList = birdService.listAllBirds();
        List<Cat> catList = catService.listAllCats();
        List<Dog> dogList = dogService.listAllDogs();
        List<HabbitHamster> habbitHamsterList = habbitHamsterService.listAllHabbitHamsters();
        model.addAttribute("adoptionRepository", adoptionRepository);

        model.addAttribute("birdList", birdList);
        model.addAttribute("catList", catList);
        model.addAttribute("dogList", dogList);
        model.addAttribute("habbitHamsterList", habbitHamsterList);

        System.out.println("Number of records retrieved: " + birdList.size());
        return "listall"; 
    }
    
    @GetMapping("/dog")
    public String viewDog() {
        

        return "do";
    }
    
    @GetMapping("/dog2")
    public String viewDog2() {
        

        return "doadmin";
    }
    @GetMapping("/about")
    public String view() {
        

        return "about";
    }
    @GetMapping("/welcome")
    public String viewHomePage(Model model, HttpServletRequest request) {
        // Check if the user is logged in
        if (request.getUserPrincipal() != null) {
            String username = request.getUserPrincipal().getName();
            model.addAttribute("username", username);
        }

        return "welcome";
    }
    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new User());
         
        return "signup";
    }
    @PostMapping("/processregister")
    public String processRegister(User user) {
        if (user.getEmail().toLowerCase().contains("admin")) {
        	userRepo.save(user);
            return "redirect:/dog2";
        }

        if (user.getEmail().toLowerCase().contains("gmail")) {
        	userRepo.save(user);
            return "redirect:/dog";
        }

        
        return "redirect:/register?error";
    }

    @GetMapping("/users")
    public String listUsers(Model model) {
        List<User> listUsers = userRepo.findAll();
        model.addAttribute("listusers", listUsers);
         
        return "users";
    }
    
    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("user", new User());
        return "login";
    }

    @PostMapping("/processlogin")
    public String processLogin(User user) {
        if (userRepo.login(user.getEmail(), user.getPassword())) {
            if (user.getEmail().toLowerCase().contains("admin")) {
                return "redirect:/dog2";
            }

            if (user.getEmail().toLowerCase().contains("gmail")) {
                return "redirect:/dog";
            }

            
            return "redirect:/dog";
        } else {
            return "redirect:/login?error";
        }
    }

    
   
    
}