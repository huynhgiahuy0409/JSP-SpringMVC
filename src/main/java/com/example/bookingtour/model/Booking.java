package com.example.bookingtour.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;
import java.util.Date;

public class Booking {
    private long id;
    private Customer customer;
    private LocalDate  departureDate;
    private int noAdults;
    private int noChildren;
    private Tour tour;

    public Booking(long id, Customer customer, LocalDate departureDate, int noAdults, int noChildren, Tour tour) {
        this.id = id;
        this.customer = customer;
        this.departureDate = departureDate;
        this.noAdults = noAdults;
        this.noChildren = noChildren;
        this.tour = tour;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public LocalDate getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(LocalDate departureDate) {
        this.departureDate = departureDate;
    }

    public int getNoAdults() {
        return noAdults;
    }

    public void setNoAdults(int noAdults) {
        this.noAdults = noAdults;
    }

    public int getNoChildren() {
        return noChildren;
    }

    public void setNoChildren(int noChildren) {
        this.noChildren = noChildren;
    }

    public Tour getTour() {
        return tour;
    }

    public void setTour(Tour tour) {
        this.tour = tour;
    }
}
