package com.example.employee.controller;

import com.example.employee.model.Employee;
import com.example.employee.model.EmployeeForm;
import com.example.employee.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.List;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/list")
    private String goToListEmployee(Model model){
        Collection<Employee> employees = this.employeeService.findAll();
        model.addAttribute("employees", employees);
        return "/employee/dsnhanvien";
    }
    @GetMapping("/{employeeId}/update")
    private String goToUpdateEmployee(@PathVariable String employeeId, Model model){
        Employee foundEmployee = this.employeeService.findEmployee(employeeId);
        model.addAttribute("employee", foundEmployee);
        System.out.println(foundEmployee);
        return "/employee/suanhanvien";
    }
    @PostMapping("/{employeeId}/update")
    private String updateEmployee(@PathVariable String employeeId, @ModelAttribute EmployeeForm employeeForm, Model model){
        employeeForm.setId(employeeId);
        this.employeeService.updateEmployee(employeeForm);
        return "redirect:/employee/list";
    }
    @GetMapping("/add")
    private String goToAddEmployee(Model model){
        List<String> titles = this.employeeService.findAllTitle();
        List<String> departments = this.employeeService.findAllDepartment();
        model.addAttribute("titles", titles);
        model.addAttribute("departments", departments);
        return "/employee/themnhanvien";
    }
    @PostMapping("/add")
    private String addEmployee(@ModelAttribute EmployeeForm employeeForm){
        this.employeeService.addEmployee(employeeForm);
        return "redirect:/employee/list";
    }
    @GetMapping("/{employeeId}")
    private String goToListEmployee(@PathVariable String employeeId, Model model){
        Employee foundEmployee = this.employeeService.findEmployee(employeeId);
        model.addAttribute("employee", foundEmployee);
        return "employee/chitietnhanvien";
    }
    @GetMapping("/check-id/{employeeId}")
    @ResponseBody
    private boolean checkEmployeeId(@PathVariable String employeeId){
        return this.employeeService.checkExistEmployeeId(employeeId);
    }
}
