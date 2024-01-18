package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Dog;
import com.example.demo.repository.DogRepository;

@Service
public class DogService {
    
    @Autowired
    private DogRepository repo;

    public List<Dog> listAllDogs() {
        return repo.findAll();
    }

    public void saveDog(Dog dog) {
        repo.save(dog);
    }

    public Dog getDog(Long id) {
        return repo.findById(id).orElse(null);
    }

    public void deleteDog(Long id) {
        repo.deleteById(id);
    }
}
