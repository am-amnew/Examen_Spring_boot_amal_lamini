package com.example.demo.model;

import javax.persistence.*;

@Entity
public class Adoption {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "dog_id")
    private Dog dog;

    @ManyToOne
    @JoinColumn(name = "cat_id")
    private Cat cat;

    @ManyToOne
    @JoinColumn(name = "bird_id")
    private Bird bird;
    
    @ManyToOne
    @JoinColumn(name = "habbitHamster_id")
    private HabbitHamster habbitHamster;
    
    @Column(nullable = false)
    private String adopterName;

    @Column(nullable = false)
    private String reasonForAdoption;

    public Adoption() {
    }

    public Adoption(Dog dog, Cat cat,  Bird bird,String adopterName, String reasonForAdoption) {
        this.dog = dog;
        this.cat = cat;
        this.bird = bird;

        this.adopterName = adopterName;
        this.reasonForAdoption = reasonForAdoption;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Dog getDog() {
        return dog;
    }

    public void setDog(Dog dog) {
        this.dog = dog;
    }

    public HabbitHamster getHabbitHamster() {
        return habbitHamster;
    }

    public void setHabbitHamster(HabbitHamster habbitHamster) {
        this.habbitHamster = habbitHamster;
    }
    
    public Cat getCat() {
        return cat;
    }

    public void setCat(Cat cat) {
        this.cat = cat;
    }
    
    public Bird getBird() {
        return bird;
    }

    public void setBird(Bird bird) {
        this.bird = bird;
    }

    public String getAdopterName() {
        return adopterName;
    }

    public void setAdopterName(String adopterName) {
        this.adopterName = adopterName;
    }

    public String getReasonForAdoption() {
        return reasonForAdoption;
    }

    public void setReasonForAdoption(String reasonForAdoption) {
        this.reasonForAdoption = reasonForAdoption;
    }

}
