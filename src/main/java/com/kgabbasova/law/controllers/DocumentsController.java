package com.kgabbasova.law.controllers;

import com.kgabbasova.law.beans.documents.DriveLicense;
import com.kgabbasova.law.beans.documents.Inn;
import com.kgabbasova.law.beans.documents.Passport;
import com.kgabbasova.law.beans.documents.Snils;
import com.kgabbasova.law.dto.Answer;
import com.kgabbasova.law.repositories.PassportRepository;
import com.kgabbasova.law.services.DocumentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@PreAuthorize("isAuthenticated()")
public class DocumentsController {

    @Autowired
    private DocumentsService documentsService;

    @PostMapping(value = "/profile/passport")
    @ResponseBody
    public Answer savePassport (@RequestBody Passport passport) {
       documentsService.savePassport(passport);
        return new Answer(Answer.Status.SUCCESS);
    }

    @PostMapping(value = "/profile/snils")
    @ResponseBody
    public Answer saveSnils (@RequestBody Snils snils) {
        documentsService.saveSnils(snils);
        return new Answer(Answer.Status.SUCCESS);
    }

    @PostMapping(value = "/profile/inn")
    @ResponseBody
    public Answer saveInn (@RequestBody Inn inn) {
        documentsService.saveInn(inn);
        return new Answer(Answer.Status.SUCCESS);
    }

    @PostMapping(value = "/profile/drive-license")
    @ResponseBody
    public Answer saveDriveLicense (@RequestBody DriveLicense driveLicense) {
        documentsService.saveDriveLicense(driveLicense);
        return new Answer(Answer.Status.SUCCESS);
    }

}
