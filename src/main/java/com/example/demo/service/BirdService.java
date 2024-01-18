package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Bird;
import com.example.demo.repository.BirdRepository; // Assuming you have a BirdRepository

@Service
public class BirdService {

    @Autowired
    private BirdRepository repo; 

    public List<Bird> listAllBirds() {
        return repo.findAll();
    }

    public void saveBird(Bird bird) {
        repo.save(bird);
    }

    public Bird getBird(Long id) {
        return repo.findById(id).orElse(null);
    }

    public void deleteBird(Long id) {
        repo.deleteById(id);
    }
}
