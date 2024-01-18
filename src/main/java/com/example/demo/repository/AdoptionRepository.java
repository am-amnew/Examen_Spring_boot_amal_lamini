package com.example.demo.repository;

import com.example.demo.model.Adoption;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AdoptionRepository extends JpaRepository<Adoption, Long> {
    Optional<Adoption> findFirstByDogId(Long dogId);
    Optional<Adoption> findByCatId(Long catId);
    Optional<Adoption> findByBirdId(Long birdId);
    Optional<Adoption> findByHabbitHamsterId(Long habbitHamsterId);

}
