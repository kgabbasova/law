package com.kgabbasova.law.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    @GetMapping(value = "/registration")
    public String getRegistrationPage(Model model) {
        return "registration";
    }
}
