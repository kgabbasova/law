package com.kgabbasova.law.controllers;

import com.kgabbasova.law.beans.User;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/profile")
public class ProfileController {

    @GetMapping(path = {"/documents", "/"}, name = "documents")
    public String getDocuments(Model model) {
//        MvcUriComponentsBuilder.
        return "profile-documents";
    }

    @GetMapping(path = {"/personal"}, name = "personal")
    public String getPersonal(Model model) {
//        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        return "profile-personal";
    }

    @GetMapping(path = {"/legal_entity"}, name = "legalEntity")
    public String getLegalEntity(Model model) {
        return "profile-legal-entity";
    }

    @GetMapping(path = {"/entrepreneur"}, name = "entrepreneur")
    public String getEntrepreneur(Model model) {
        return "profile-entrepreneur";
    }

    @GetMapping(path = {"/representative"}, name = "representative")
    public String getRepresentative(Model model) {
        return "profile-representative";
    }

    @GetMapping(path = {"/power_attorney"}, name = "attorney")
    public String getAttorney(Model model) {
        return "profile-power-attorney";
    }

    @GetMapping(path = {"/lawyer_certificate"}, name = "lawyer_certificate")
    public String getCertificate(Model model) {
        return "profile-lawyer-certificate";
    }


    @PostMapping(path = {"/personal"}, name = "personal")
    public ResponseEntity<?> savePersonalData(@RequestBody User user) {
        return ResponseEntity.ok("Сохранено");
    }
}
