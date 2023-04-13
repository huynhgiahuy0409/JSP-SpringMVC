package com.example.bookingtour.model;

import java.util.List;

public class Tour {
    private long id;
    private String name;
    private List<TourDescription> tourDescriptions;
    private String days;
    private String transportation;
    private String departureSchedule;
    private double price;

    public Tour(long id, String name, List<TourDescription> tourDescriptions, String days, String transportation, String departureSchedule, double price) {
        this.id = id;
        this.name = name;
        this.tourDescriptions = tourDescriptions;
        this.days = days;
        this.transportation = transportation;
        this.departureSchedule = departureSchedule;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<TourDescription> getTourDescriptions() {
        return tourDescriptions;
    }

    public void setTourDescriptions(List<TourDescription> tourDescriptions) {
        this.tourDescriptions = tourDescriptions;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }

    public String getTransportation() {
        return transportation;
    }

    public void setTransportation(String transportation) {
        this.transportation = transportation;
    }

    public String getDepartureSchedule() {
        return departureSchedule;
    }

    public void setDepartureSchedule(String departureSchedule) {
        this.departureSchedule = departureSchedule;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

}
