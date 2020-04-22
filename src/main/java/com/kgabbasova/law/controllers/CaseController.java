package com.kgabbasova.law.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/profile/case")
public class CaseController {

    @RequestMapping(method = RequestMethod.GET)
    public String getCase () {
        return "case";
    }
}
