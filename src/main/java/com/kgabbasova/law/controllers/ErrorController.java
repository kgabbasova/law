package com.kgabbasova.law.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ErrorController implements org.springframework.boot.web.servlet.error.ErrorController {

    @GetMapping (value = "/error")
    public String getErrorPath () {
        return "error";
    }
}
