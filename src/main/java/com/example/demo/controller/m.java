package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class m {

    @RequestMapping("/afficher")
    public String afficher() {
        return "hi";
    }
}

