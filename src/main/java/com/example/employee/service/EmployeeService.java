package com.example.employee.service;

import com.example.employee.model.Employee;
import com.example.employee.model.EmployeeForm;
import com.example.employee.model.Title;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.*;

@Service
public class EmployeeService {
    private Map<String, Employee> employees;
    private List<String> titles;
    private List<String> departments;

    private long autoId = 1;
    public EmployeeService() {
        this.init();
    }
    private void init() {
        this.employees = new LinkedHashMap<>();
        this.titles = new ArrayList<>();
        this.departments = new ArrayList<>();
        Employee e1 = new Employee("NV001", "Nguyen Van A", true, LocalDate.of(1990, 6, 15), "TP Ho Chi Minh", "0903316526", "Dep 1", "CD 1", 20000000);
        Employee e2 = new Employee("NV002", "Nguyen Van B", false, LocalDate.of(1990, 6, 15), "TP Ho Chi Minh", "0776425942", "Dep 2", "CD 1", 3500000);
        this.employees.put("NV001", e1);
        this.employees.put("NV002", e2);

        titles.add("BGD");
        titles.add("CVKT");
        titles.add("NVKT");
        titles.add("TTS");


        departments.add("SX");
        departments.add("KT");
        departments.add("KHTV");
        departments.add("BGD");
    }

    public Employee findEmployee(String id) {
        return this.employees.get(id);
    }

    public Collection<Employee> findAll() {
        return this.employees.values();
    }

    public List<String> findAllTitle() {
        return this.titles;
    }

    public List<String> findAllDepartment() {
        return this.departments;
    }

    public void addEmployee(EmployeeForm e) {
        Employee newEmployee = new Employee(e.getId(), e.getName(), e.isMale(), LocalDate.parse(e.getBirthday()), e.getAddress(), e.getPhone(), e.getDepartment(), e.getTitle(), e.getWageRate());
        this.employees.put(newEmployee.getId(),newEmployee);
    }

    public void updateEmployee(EmployeeForm e) {
        Employee foundEmployee = this.employees.get(e.getId());
        foundEmployee.setName(e.getName());
        foundEmployee.setAddress(e.getAddress());
        LocalDate birthdayLocalDate = LocalDate.parse(e.getBirthday());
        foundEmployee.setBirthday(birthdayLocalDate);
        foundEmployee.setDepartment(e.getDepartment());
        foundEmployee.setMale(e.isMale());
        foundEmployee.setPhone(e.getPhone());
        foundEmployee.setTitle(e.getTitle());
        foundEmployee.setWageRate(e.getWageRate());
    }
    public boolean checkExistEmployeeId(String employeeId){
        return this.employees.containsKey(employeeId);
    }
}
