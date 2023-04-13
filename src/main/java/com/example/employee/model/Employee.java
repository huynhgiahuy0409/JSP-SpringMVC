package com.example.employee.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

public class Employee {
    private String id;
    private String name;
    private boolean male;

    LocalDate birthday;

    private String birthdayString;
    private String address;

    private String phone;
    private String department;
    private String title;
    private long wageRate;

    public Employee(String id, String name, boolean male, LocalDate birthday, String address, String phone, String department, String title, long wageRate) {
        this.id = id;
        this.name = name;
        this.male = male;
        this.birthday = birthday;
        this.address = address;
        this.department = department;
        this.title = title;
        this.wageRate = wageRate;
        this.phone = phone;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isMale() {
        return male;
    }

    public void setMale(boolean male) {
        this.male = male;
    }

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }

    public String getBirthdayString() {
        return birthdayString;
    }

    public void setBirthdayString(String birthdayString) {
        this.birthdayString = birthdayString;
    }


    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public long getWageRate() {
        return wageRate;
    }

    public void setWageRate(long wageRate) {
        this.wageRate = wageRate;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", male=" + male +
                ", birthday=" + birthday +
                ", birthdayString='" + birthdayString + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", department='" + department + '\'' +
                ", title='" + title + '\'' +
                ", wageRate=" + wageRate +
                '}';
    }
}
