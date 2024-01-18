package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.HabbitHamster;
import com.example.demo.repository.HabbitHamsterRepository;

@Service
public class HabbitHamsterService {

    @Autowired
    private HabbitHamsterRepository repo;

    public List<HabbitHamster> listAllHabbitHamsters() {
        return repo.findAll();
    }

    public void saveHabbitHamster(HabbitHamster habbitHamster) {
        repo.save(habbitHamster);
    }

    public HabbitHamster getHabbitHamster(Long id) {
        return repo.findById(id).orElse(null);
    }

    public void deleteHabbitHamster(Long id) {
        repo.deleteById(id);
    }
}
