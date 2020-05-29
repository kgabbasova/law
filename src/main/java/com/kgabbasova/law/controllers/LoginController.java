package com.kgabbasova.law.controllers;


import com.kgabbasova.law.dto.RegistrationDto;
import com.kgabbasova.law.dto.Answer;
import com.kgabbasova.law.exceptions.LawException;
import com.kgabbasova.law.services.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.util.stream.Collectors;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @GetMapping(value = "/registration")
    public String getRegistrationPage(Model model) {
        if (!(SecurityContextHolder.getContext().getAuthentication() instanceof AnonymousAuthenticationToken)) {
            return "redirect:/";
        }
        return "registration";
    }

    @PostMapping (value = "/registration")
    @ResponseBody
    public Answer register (@RequestBody @Valid RegistrationDto registrationDto,
                            BindingResult bindingResult,
                            Model model) {
        StringBuilder answer = new StringBuilder();
        if (bindingResult.hasErrors()) {
           answer.append(bindingResult.getAllErrors()
                           .stream()
                           .map(e -> e.getDefaultMessage())
                           .collect(Collectors.joining("\n"))
                   );
           answer.append("\n");
        }
        if (!registrationDto.getPassword().equals(registrationDto.getPasswordRepeat())){
            answer.append("Пароли не совпадают\n");
        }
        if (StringUtils.isNotBlank(answer)) {
            return new Answer(Answer.Status.ERROR, answer.toString());
        }
        try {
            userService.saveUser(registrationDto);
        } catch (LawException ex) {
            answer.append(ex.getMessage());
            return new Answer(Answer.Status.ERROR, answer.toString());
        }
        return new Answer(Answer.Status.SUCCESS);
    }

    @GetMapping(value = "/login")
    public String getLoginPage(Model model) {
        if (!(SecurityContextHolder.getContext().getAuthentication() instanceof AnonymousAuthenticationToken)) {
            return "redirect:/";
        }
        return "login";
    }


}
