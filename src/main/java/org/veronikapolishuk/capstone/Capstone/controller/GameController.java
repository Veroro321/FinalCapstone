package org.veronikapolishuk.capstone.Capstone.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import org.veronikapolishuk.capstone.Capstone.database.dao.GameDAO;
import org.veronikapolishuk.capstone.Capstone.database.entity.Game;

import java.util.List;

@Slf4j
@Controller
public class GameController {

    @Autowired
    private GameDAO gameDAO;

    @GetMapping("games") //this is going to add all the games to our page from the database
    public ModelAndView index() {
        ModelAndView response = new ModelAndView("game/games");
        List<Game> games = gameDAO.findAll();
        response.addObject("games", games);
        return response;
    }

}
