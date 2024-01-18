package com.example.demo.service;

import com.example.demo.model.Adoption;

import com.example.demo.model.Bird;
import com.example.demo.model.Cat;
import com.example.demo.model.Dog;
import com.example.demo.model.HabbitHamster;
import com.example.demo.repository.AdoptionRepository;
import com.example.demo.repository.BirdRepository;
import com.example.demo.repository.CatRepository;
import com.example.demo.repository.DogRepository;
import com.example.demo.repository.HabbitHamsterRepository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdoptionService {

    @Autowired
    private AdoptionRepository adoptionRepository;
    @Autowired
    private CatRepository catRepository;

    @Autowired
    private DogRepository dogRepository;
    @Autowired
    private HabbitHamsterRepository habbitHamsterRepository;
    
    @Autowired
    private BirdRepository birdRepository;
    public void adoptDog(Long dogId, String adopterName, String reasonForAdoption) {
        Dog dog = dogRepository.findById(dogId)
                .orElseThrow();

        if (adoptionRepository.findFirstByDogId(dogId).isPresent()) {
            throw new DogAlreadyAdoptedException("This dog has already been adopted.");
        }

        Adoption adoption = new Adoption();
        adoption.setDog(dog);
        adoption.setAdopterName(adopterName);
        adoption.setReasonForAdoption(reasonForAdoption);

        adoptionRepository.save(adoption);
    }
    public class DogAlreadyAdoptedException extends RuntimeException {
        public DogAlreadyAdoptedException(String message) {
            super(message);
        }
    }


    
    public void adoptCat(Long catId, String adopterName, String reasonForAdoption) {
        Cat cat = catRepository.findById(catId)
                .orElseThrow();

        if (adoptionRepository.findByCatId(catId).isPresent()) {
            throw new CatAlreadyAdoptedException("This cat has already been adopted.");
        }

        Adoption adoption = new Adoption();
        adoption.setCat(cat);
        adoption.setAdopterName(adopterName);
        adoption.setReasonForAdoption(reasonForAdoption);

        adoptionRepository.save(adoption);
    }
    public class CatAlreadyAdoptedException extends RuntimeException {
        public CatAlreadyAdoptedException(String message) {
            super(message);
        }
    }

    public void adoptBird(Long birdId, String adopterName, String reasonForAdoption) {
        Bird bird = birdRepository.findById(birdId)
                .orElseThrow();

        // Check if the bird is already adopted
        if (adoptionRepository.findByBirdId(birdId).isPresent()) {
            throw new BirdAlreadyAdoptedException("This bird has already been adopted.");
        }

        Adoption adoption = new Adoption();
        adoption.setBird(bird);
        adoption.setAdopterName(adopterName);
        adoption.setReasonForAdoption(reasonForAdoption);

        adoptionRepository.save(adoption);
    }
    public class BirdAlreadyAdoptedException extends RuntimeException {
        public BirdAlreadyAdoptedException(String message) {
            super(message);
        }
    }

    public void adoptHabbitHamster(Long habbitHamsterId, String adopterName, String reasonForAdoption) {
        HabbitHamster habbitHamster = habbitHamsterRepository.findById(habbitHamsterId)
                .orElseThrow();

        // Check if the hamster is already adopted
        if (adoptionRepository.findByHabbitHamsterId(habbitHamsterId).isPresent()) {
            throw new HabbitHamsterAlreadyAdoptedException("This hamster has already been adopted.");
        }

        Adoption adoption = new Adoption();
        adoption.setHabbitHamster(habbitHamster);
        adoption.setAdopterName(adopterName);
        adoption.setReasonForAdoption(reasonForAdoption);

        adoptionRepository.save(adoption);
    }
    public class HabbitHamsterAlreadyAdoptedException extends RuntimeException {
        public HabbitHamsterAlreadyAdoptedException(String message) {
            super(message);
        }
    }


    public void updateAdoption(Long id, String adopterName, String reasonForAdoption) {
        Adoption existingAdoption = adoptionRepository.findById(id).orElse(null);

        if (existingAdoption != null) {
            existingAdoption.setAdopterName(adopterName);
            existingAdoption.setReasonForAdoption(reasonForAdoption);
            adoptionRepository.save(existingAdoption);
        }
        
    }
    public List<Adoption> listAllAdoptions() {
        return adoptionRepository.findAll();
    }

    public void saveAdoption(Adoption adoption) {
    	adoptionRepository.save(adoption);
    }

    public Adoption getAdoption(Long id) {
        return adoptionRepository.findById(id).orElse(null);
    }

    public void deleteAdoption(Long id) {
    	adoptionRepository.deleteById(id);
    }
    

}
