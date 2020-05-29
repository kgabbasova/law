package com.kgabbasova.law.controllers;

import com.kgabbasova.law.beans.User;
import com.kgabbasova.law.dto.Answer;
import com.kgabbasova.law.dto.UserDto;
import com.kgabbasova.law.repositories.UserRepository;
import com.kgabbasova.law.security.UserDetailsImpl;
import com.kgabbasova.law.security.UserDetailsServiceImpl;
import com.kgabbasova.law.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;


@Controller
@PreAuthorize(value = "isAuthenticated()")
@RequestMapping(value = "/profile")
public class ProfileController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserService userService;

    @GetMapping(path = {"/documents", "/"}, name = "documents")
    public String getDocuments(Model model) {
        return "profile-documents";
    }

    @GetMapping(path = {"/personal"}, name = "personal")
    public String getPersonal(Model model, Principal principal) {
        User user = userRepository.findByUsername(principal.getName());
        model.addAttribute("user", user);
        return "profile-personal";
    }

    @PostMapping(path = {"/personal"}, name = "personal")
    public Answer savePersonal(@RequestBody UserDto userDto) {

        return new Answer(Answer.Status.SUCCESS);
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
