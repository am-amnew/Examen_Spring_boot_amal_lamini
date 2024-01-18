package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Bird;

@Repository
public interface BirdRepository extends JpaRepository<Bird, Long> {
    // Additional methods specific to Bird entity can be added here if needed
}
