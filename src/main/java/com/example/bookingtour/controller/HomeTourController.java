package com.example.bookingtour.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeTourController {

    @GetMapping()
    public String goToHomeTour(){
        return "redirect:/tour/list";
    }
}
