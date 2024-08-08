package org.veronikapolishuk.capstone.Capstone.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.veronikapolishuk.capstone.Capstone.database.dao.GameDAO;
import org.veronikapolishuk.capstone.Capstone.database.dao.GameReviewDAO;
import org.veronikapolishuk.capstone.Capstone.database.dao.UserDAO;
import org.veronikapolishuk.capstone.Capstone.database.dao.UserGameDAO;
import org.veronikapolishuk.capstone.Capstone.database.entity.Game;
import org.veronikapolishuk.capstone.Capstone.database.entity.GameReview;
import org.veronikapolishuk.capstone.Capstone.database.entity.User;
import org.veronikapolishuk.capstone.Capstone.database.entity.UserGame;
import org.veronikapolishuk.capstone.Capstone.security.AuthenticatedUserUtilities;

import java.util.Date;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/games")
public class GameController {

    @Autowired
    private GameDAO gameDAO; //where game details are located!!!

    @Autowired
    private GameReviewDAO gameReviewDAO;

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private UserGameDAO userGameDAO;

    @Autowired
    private AuthenticatedUserUtilities authenticatedUserUtilities;


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

        response.addObject("search", search); // this is if we want to keep what the user typed in...

        List<Game> games = gameDAO.findGameByTitle(search);

        // LAMDBAAA FUNCTION
        games.stream().forEach(game -> log.debug("Game: " + game.getTitle()));

        response.addObject("games", games);

        return response;

    }

    // this is for the filter button of sci-fi stuff
    @GetMapping("/theme")
    public ModelAndView searchByTheme(@RequestParam("theme") String theme) {
        ModelAndView response = new ModelAndView("game/games");

        log.debug("The user searched for theme: " + theme);
        List<Game> games = gameDAO.findGamesByThemeContaining(theme); // Using the native query method
        response.addObject("games", games);
        response.addObject("search", ""); // Clear the search field when searching by theme

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
        } else {
            response.setViewName("redirect:/404"); // Redirect to a 404 error page if the game is not found
        }
        return response;
    }


    //------- this is for adding games specific for each user ------------

    @GetMapping("/myGames") //please put the url in spring security so user has to sign in first to get access
    public ModelAndView myGames() {
        ModelAndView response = new ModelAndView("game/myGames");

        User user = authenticatedUserUtilities.getCurrentUser();
        if (user != null) {
            List<UserGame> myGames = userGameDAO.findByUser(user);
            response.addObject("myGames", myGames);
        } else {
            response.setViewName("redirect:/account/loginPageUrl"); // Redirect to login if the user is not logged in
        }

        return response;
    }

    @PostMapping("/addToMyGames")
    public ModelAndView addToMyGames(@RequestParam("gameId") Integer gameId) {
        ModelAndView response = new ModelAndView("redirect:/games/myGames");

        User user = authenticatedUserUtilities.getCurrentUser();
        if (user == null) {
            response.setViewName("redirect:/account/loginPageUrl"); // how to redirect back to the game that they were on this is directing me back to home pagee?
            return response;
        }

        Game game = gameDAO.findByGameId(gameId);
        if (game == null) {
            response.addObject("errorMessage", "Game not found.");
            return response;
        }

        boolean isGameAlreadyAdded = userGameDAO.existsByUserAndGame(user, game);
        if (isGameAlreadyAdded) {
            response.addObject("errorMessage", "You have already added this game to your list.");
            return response;
        }

        UserGame userGame = new UserGame();
        userGame.setUser(user);
        userGame.setGame(game);
        userGame.setAddedDate(new Date());

        userGameDAO.save(userGame);

        return response;
    }


    @PostMapping("/delete")
    public ModelAndView deleteGame(@RequestParam("gameId") Integer gameId) {
        ModelAndView response = new ModelAndView("redirect:/games/myGames");

        User user = authenticatedUserUtilities.getCurrentUser();
        if (user != null) {
            Game game = gameDAO.findById(gameId).orElse(null);
            if (game != null) {
                UserGame userGame = userGameDAO.findByUserAndGame(user, game);
                if (userGame != null) {
                    userGameDAO.delete(userGame);
                }
            }
        } else {
            response.setViewName("redirect:/account/loginPageUrl"); // Redirect to login if the user is not logged in
        }

        return response;
    }
}



