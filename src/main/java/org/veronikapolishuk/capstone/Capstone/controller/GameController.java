package org.veronikapolishuk.capstone.Capstone.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@Controller
public class GameController {

    @GetMapping("games")
    public ModelAndView index() {
        ModelAndView response = new ModelAndView("game/games");
        return response;
    }
}
