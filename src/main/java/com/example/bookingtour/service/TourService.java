package com.example.bookingtour.service;

import com.example.bookingtour.model.Booking;
import com.example.bookingtour.model.Customer;
import com.example.bookingtour.model.Tour;
import com.example.bookingtour.model.TourDescription;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class TourService {

    private Map<Long, Tour> tours;

    private Map<Long, Customer> customers;

    private Map<Long, Booking> bookings;

    public TourService() {
        this.init();
    }

    public Collection<Tour> getAllTours(){
        return this.tours.values();
    }
    public Tour findTour(Long tourId){
        return this.tours.get(tourId);
    }
    public long lastCustomerIdx(){
        return this.customers.size();
    }
    public long lastBookingIdx(){
        return this.bookings.size();
    }
    public void saveCustomer(Customer customer){
        this.customers.put(this.lastCustomerIdx() + 1, customer);
    }
    public void saveBooking(Booking booking){
        this.bookings.put(this.lastBookingIdx() + 1, booking);
    }
    public void init(){
        this.tours = new LinkedHashMap<>();
        this.customers = new LinkedHashMap<>();
        this.bookings = new LinkedHashMap<>();
        TourDescription td1 = new TourDescription("Ngày 1 (thứ 7): Phố biển Nha Trang", "content 1");
        TourDescription td2 = new TourDescription("Ngày 2 (chủ nhật): Nha Trang - Sài Gòn", "content 2");
        List<TourDescription> tourDescriptionList = new ArrayList<>();
        tourDescriptionList.add(td1);
        tourDescriptionList.add(td2);
        Tour tour1 = new Tour(1, "Phú quốc", tourDescriptionList, "3 ngày 2 đêm", "Tàu lửa", "Hằng ngày", 1959000);
        Tour tour2 = new Tour(2, "Nha trang", tourDescriptionList, "3 ngày 2 đêm", "Tàu lửa", "Hằng ngày", 1959000);
        this.tours.put(tour1.getId(), tour1);
        this.tours.put(tour2.getId(), tour2);
    }
}
