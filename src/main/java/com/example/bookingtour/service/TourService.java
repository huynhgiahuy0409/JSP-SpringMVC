package com.example.bookingtour.service;

import com.example.bookingtour.model.Booking;
import com.example.bookingtour.model.Customer;
import com.example.bookingtour.model.Tour;
import com.example.bookingtour.model.TourDescription;
import com.example.forum.model.User;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class TourService {

    private Map<Long, Tour> tours;

    private List<Customer> customers;

    private List<Booking> bookings;

    public TourService() {
        this.init();
    }

    public Collection<Tour> getAllTours(){
        return this.tours.values();
    }
    public Tour findTour(Long tourId){
        return this.tours.get(tourId);
    }
    public void saveCustomer(Customer customer){
        this.customers.add(customer);
    }
    public void saveBooking(Booking booking){
        this.bookings.add(booking);
    }
    public List<Booking> findAllBooking(){
        return this.bookings;
    }
    public List<Customer> findAllCustomer(){
        return this.customers;
    }
    public void init(){
        this.tours = new LinkedHashMap<>();
        this.customers =  new ArrayList<>();
        this.bookings = new ArrayList<>();
        TourDescription td1 = new TourDescription("Ngày 1 (thứ 7): Phố biển Nha Trang", "content 1");
        TourDescription td2 = new TourDescription("Ngày 2 (chủ nhật): Nha Trang - Sài Gòn", "content 2");
        TourDescription td3 = new TourDescription("Ngày 3 (thứ 7): Phan Thiết", "content 3");
        TourDescription td4 = new TourDescription("Ngày 4 (chủ nhật): Phan Thiết - Vũng Tàu", "content 3");
        List<TourDescription> tourDescriptionList = new ArrayList<>();
        tourDescriptionList.add(td1);
        tourDescriptionList.add(td2);
        tourDescriptionList.add(td3);
        tourDescriptionList.add(td4);
        Tour tour1 = new Tour(1, "Phú quốc", tourDescriptionList, "3 ngày 2 đêm", "Tàu lửa", "Hằng ngày", 1959000);
        Tour tour2 = new Tour(2, "Nha trang", tourDescriptionList, "3 ngày 2 đêm", "Xe hơi", "Tối thứ 6 và chủ nhật", 2340000);
        Tour tour3 = new Tour(3, "Vùng Tàu", tourDescriptionList, "3 ngày 2 đêm", "Tàu lửa", "Định kỳ", 400000);
        Tour tour4 = new Tour(4, "Thành phố Hồ Chí Minh", tourDescriptionList, "3 ngày 2 đêm", "Máy bay", "Thứ 7 mỗi ", 760000);
        this.tours.put(tour1.getId(), tour1);
        this.tours.put(tour2.getId(), tour2);
        this.tours.put(tour3.getId(), tour3);
        this.tours.put(tour4.getId(), tour4);
    }
    public boolean checkExistBooking(Long tourId, String email){
        for (Booking booking : this.bookings) {
            long bookedTourId = booking.getId();
            Customer bookBy = booking.getCustomer();
            if(bookedTourId == tourId && bookBy.getEmail().equals(email)){
                return true;
            }
        }
        return false;
    }
}
