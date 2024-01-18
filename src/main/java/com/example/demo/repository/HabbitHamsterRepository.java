package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.HabbitHamster;

@Repository
public interface HabbitHamsterRepository extends JpaRepository<HabbitHamster, Long> {
    // You can add custom query methods if needed
}
