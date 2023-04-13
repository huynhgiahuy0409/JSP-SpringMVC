package com.example.bookingtour.model;

import org.springframework.stereotype.Component;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
public class ValidEmail {
    public boolean isValidEmail(String email) {
        String emailPattern = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$";
        Pattern pattern = Pattern.compile(emailPattern);
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }
}
