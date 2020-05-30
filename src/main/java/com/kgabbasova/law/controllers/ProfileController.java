package com.kgabbasova.law.controllers;

import com.kgabbasova.law.beans.User;
import com.kgabbasova.law.dto.Answer;
import com.kgabbasova.law.dto.UserDto;
import com.kgabbasova.law.services.DocumentsService;
import com.kgabbasova.law.services.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;


@Controller
@PreAuthorize(value = "isAuthenticated()")
@RequestMapping(value = "/profile")
public class ProfileController {


    @Autowired
    private UserService userService;

    @Autowired
    private DocumentsService documentsService;



    @GetMapping(path = {"/documents", "/"}, name = "documents")
    public String getDocuments(Model model, Principal principal) {
        User owner = userService.getUserByUsername(principal.getName());
        model.addAttribute("passport", documentsService.getPassportByOwnerId(owner.getId()));
        model.addAttribute("inn", documentsService.getInnByOwnerId(owner.getId()));
        model.addAttribute("snils", documentsService.getSnilsByOwnerId(owner.getId()));
        model.addAttribute("drive", documentsService.getDriveLicenseByOwnerId(owner.getId()));

        model.addAttribute("owner", owner);
        return "profile-documents";
    }

    @GetMapping(value = "/personal", name = "personal")
    public String getPersonal(Model model, Principal principal) {
        User user = userService.getUserByUsername(principal.getName());
        model.addAttribute("user", user);
        return "profile-personal";
    }

    @PostMapping(value = "/personal")
    @ResponseBody
    public Answer savePersonal(@RequestBody UserDto userDto) {
        User userDb = userService.getUserById(userDto.getId());
        StringBuilder sb = userService.checkUserValid(userDto, userDb);
        if (StringUtils.isNotBlank(sb)) {
            return new Answer(Answer.Status.ERROR, sb.toString());
        }
        userService.saveUser(userDto, userDb);
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

}
