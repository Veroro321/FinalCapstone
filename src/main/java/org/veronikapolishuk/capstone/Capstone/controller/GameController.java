package org.veronikapolishuk.capstone.Capstone.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.veronikapolishuk.capstone.Capstone.database.dao.GameDAO;
import org.veronikapolishuk.capstone.Capstone.database.dao.GameReviewDAO;
import org.veronikapolishuk.capstone.Capstone.database.entity.Game;
import org.veronikapolishuk.capstone.Capstone.database.entity.GameReview;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/games")
public class GameController {

    @Autowired
    private GameDAO gameDAO;

    @Autowired
    private GameReviewDAO gameReviewDAO;


    @GetMapping//this is going to add all the games to our page from the database
    public ModelAndView index() {
        ModelAndView response = new ModelAndView("game/games");


        List<Game> games = gameDAO.findAll();
        response.addObject("games", games);
        response.addObject("search", "");

        return response;
    }

    @GetMapping("/search")
    //this is for the search bar which will help search by game title /games/search look at games.jsp
    public ModelAndView search(@RequestParam(required = false) String search) {
        ModelAndView response = new ModelAndView("game/games");

        log.debug("The user searched for game: " + search);

        response.addObject("search", search); //this is if we want to keep what the user typed in...

        List<Game> games = gameDAO.findGameByTitle(search);
        response.addObject("games", games);

        return response;
    }

    @GetMapping("/details")
    public ModelAndView gameDetails(@RequestParam("id") Integer gameId) { //this takes in the gameId which will then show details of the game
        ModelAndView response = new ModelAndView("game/gameDetails");

        Game game = gameDAO.findByGameId(gameId);
        if (game != null) {
            response.addObject("game", game);
            List<GameReview> reviews = gameReviewDAO.findReviewsByGameId(gameId); //
            response.addObject("reviews", reviews); // Add reviews to the response model
        }
        return response; //please add a redirect 404 error page
    }


}
