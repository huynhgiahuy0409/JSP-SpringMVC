package com.example.bookingtour.controller;

import com.example.bookingtour.model.*;
import com.example.bookingtour.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;

@Controller
@RequestMapping("/tour")

public class TourController {
    @Autowired
    private TourService tourService;

    @Autowired
    private ValidEmail validEmail;

    @GetMapping("/list")
    public String goToHomeTour(Model model) {
        model.addAttribute("tours", this.tourService.getAllTours());
        return "tour/listTours";
    }

    @GetMapping("/booking/{tourId}")
    public String goToBookingTour(@PathVariable Long tourId, Model model) {
        Tour foundTour = this.tourService.findTour(tourId);
        model.addAttribute("tour", foundTour);
        return "tour/bookingTour";
    }

    @GetMapping("/{tourId}")
    public String getTourDetail(@PathVariable Long tourId, Model model) {
        Tour foundTour = this.tourService.findTour(tourId);
        model.addAttribute("tour", foundTour);
        return "tour/tourDetail";
    }
    @PostMapping("/{tourId}/confirm")
    public String confirmBooking(@PathVariable Long tourId, @ModelAttribute BookingForm bookingForm, Model model) {
        Tour foundTour = this.tourService.findTour(tourId);
        Customer customer = new Customer(this.tourService.findAllCustomer().size() + 1, bookingForm.getFullName(), bookingForm.getAddress(), bookingForm.getEmail(), bookingForm.getPhone());
        LocalDate departureDate = LocalDate.parse(bookingForm.getDepartureDate());
        Booking booking = new Booking(this.tourService.findAllBooking().size() + 1, customer, departureDate, bookingForm.getNoAdults(), bookingForm.getNoChildren(), foundTour);
        this.tourService.saveCustomer(customer);
        this.tourService.saveBooking(booking);
        model.addAttribute("tour", foundTour);
        model.addAttribute("bookingForm", bookingForm);
        return "tour/confirm";
    }

    @GetMapping("/{tourId}/checkExistBooking")
    @ResponseBody
    public boolean checkExistEmail(@PathVariable Long tourId, @RequestParam String email, Model model) {
        if (this.validEmail.isValidEmail(email)) {
            if (this.tourService.checkExistBooking(tourId, email)) {
                return true;
            } else {
                return false;
            }
        } else {
            return true;
        }
    }
}
