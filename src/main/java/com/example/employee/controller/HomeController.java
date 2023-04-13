package com.example.employee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController
{
    @GetMapping
    private String goToListEmployee(){
        return "redirect:/employee/list";
    }
}
