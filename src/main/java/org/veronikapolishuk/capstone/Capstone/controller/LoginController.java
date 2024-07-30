package org.veronikapolishuk.capstone.Capstone.controller;


import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.veronikapolishuk.capstone.Capstone.database.dao.UserDAO;
import org.veronikapolishuk.capstone.Capstone.form.CreateAccountFormBean;
import org.veronikapolishuk.capstone.Capstone.service.UserService;

@Slf4j
@Controller
@RequestMapping("/account")
public class LoginController {
    @Autowired
    private UserDAO userDao;

    @Autowired
    private UserService userService;

    @GetMapping("/loginPageUrl")
    public ModelAndView loginPage() {
        ModelAndView response = new ModelAndView("auth/logIn");
        return response;
    }

    @GetMapping("/create-account")
    public ModelAndView createAccount() {
        ModelAndView response = new ModelAndView("auth/create-account");
        return response;
    }

    @PostMapping("/create-account")
    public ModelAndView createAccountSubmit(@Valid CreateAccountFormBean form, BindingResult bindingResult) {
        ModelAndView response = new ModelAndView("auth/create-account");

        if (bindingResult.hasErrors()) {
            for (ObjectError error : bindingResult.getAllErrors()) {
                log.debug("Validation error : " + ((FieldError) error).getField() + " = " + error.getDefaultMessage());
            }
            response.addObject("bindingResult", bindingResult);
            response.addObject("form", form);
        } else {
            userService.createUser(form);
        }

        return response;
    }
}

