package org.veronikapolishuk.capstone.Capstone.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.veronikapolishuk.capstone.Capstone.security.AuthenticatedUserUtilities;

@Slf4j
@Controller
// the @ControllerAdvice annotation is used to define as an exception handler
@ControllerAdvice
public class ErrorController {

    @Autowired
    private AuthenticatedUserUtilities authenticatedUserUtilities;


}
