package com.example.forum.controller;

import com.example.forum.model.User;
import com.example.forum.mymodel.LoginForm;
import com.example.forum.service.ForumService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Autowired
    private ForumService forumService;


    @GetMapping("/login")
    private String login(@RequestParam(required = false) boolean isLogout, HttpSession session){
        if(isLogout == true){
            session.removeAttribute("user");
        }
        return "forum/login";
    }

    @PostMapping ("/login")
    Object checkUser(@ModelAttribute("form") LoginForm loginForm, HttpSession session, RedirectAttributes redirectAttributes){
        User user = this.forumService.checkUser(loginForm.getUsername(), loginForm.getPassword());
        if(user != null){
            session.setAttribute("user", user);
            return "redirect:/topic";
        }else{
            ModelAndView mav = new ModelAndView("forum/login");
            mav.addObject("invalid", "Không tồn tại username hoặc password");
            return mav;
        }
    }


}
