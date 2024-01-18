package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.demo.model.Etudiant;
import com.example.demo.repository.EtudiantRepository;

@Service
public class EtudiantService {
    
    @Autowired
    private EtudiantRepository repo;
    
    public List<Etudiant> listAll() {
        return repo.findAll();
    }
     
    public void saveEtudiant(Etudiant etudiant) {
        repo.save(etudiant);
    }
     
    public Etudiant getEtudiant(Long id) {
        return repo.findById(id).orElse(null);
    }
     
    public void deleteEtudiant(Long id) {
        repo.deleteById(id);
    }
}
