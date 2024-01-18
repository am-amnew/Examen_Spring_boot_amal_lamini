package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Cat;
import com.example.demo.repository.CatRepository;

@Service
public class CatService {

    @Autowired
    private CatRepository repo;

    public List<Cat> listAllCats() {
        return repo.findAll();
    }

    public void saveCat(Cat cat) {
        repo.save(cat);
    }

    public Cat getCat(Long id) {
        return repo.findById(id).orElse(null);
    }

    public void deleteCat(Long id) {
        repo.deleteById(id);
    }
}
