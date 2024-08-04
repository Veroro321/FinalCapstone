package org.veronikapolishuk.capstone.Capstone.controller;


import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.veronikapolishuk.capstone.Capstone.database.dao.GameDAO;
import org.veronikapolishuk.capstone.Capstone.database.dao.GameReviewDAO;
import org.veronikapolishuk.capstone.Capstone.database.dao.UserDAO;
import org.veronikapolishuk.capstone.Capstone.database.entity.Game;
import org.veronikapolishuk.capstone.Capstone.database.entity.GameReview;
import org.veronikapolishuk.capstone.Capstone.database.entity.User;
import org.veronikapolishuk.capstone.Capstone.form.CreateReviewFormBean;

import java.util.Date;
import java.util.List;

@Slf4j
@Controller
public class ReviewController {

    @Autowired
    private GameReviewDAO gameReviewDAO;

    @Autowired
    private GameDAO gameDAO;

    @Autowired
    private UserDAO userDAO;

    @GetMapping("/createReview") // this is what is displaying the create a review page
    public ModelAndView createReview(@RequestParam(required = false) Integer gameId, @RequestParam(required = false) Integer userId) {
        ModelAndView response = new ModelAndView("review/review");

        // depending on how the page is made I may create a page with the actual game or whatever in there...
        List<Game> games = gameDAO.findAll();
        response.addObject("games", games);

        return response;
    }

    //this is going to be for submitting the review

    @PostMapping("/createReviewSubmit") // should create a form bean please
    public ModelAndView createReviewSubmit(@Valid CreateReviewFormBean form, BindingResult bindingResult) {

        ModelAndView response = new ModelAndView("review/review");

        // If there are validation errors, log them and return to the create form
        if (bindingResult.hasErrors()) {
            for (ObjectError error : bindingResult.getAllErrors()) {
                log.debug("Validation error : " + ((FieldError) error).getField() + " = " + error.getDefaultMessage());
            }

            // Add the binding result to the model to show errors on the form
            response.addObject("bindingResult", bindingResult);

            // Optionally, you might need to add data back to the model
            List<Game> games = gameDAO.findAll();
            response.addObject("games", games);

            response.setViewName("review/createReview"); // Return to the create form

            // Add the form object to the model to retain user input
            response.addObject("form", form);

            return response;
        }
        log.debug(form.toString());


        Game game = gameDAO.findByGameId(form.getGameId());
        User user = userDAO.findByUserId(form.getUserId());


        if (game != null && user != null) {
            GameReview review = new GameReview();
            review.setGame(game);
            review.setUser(user);
            review.setRating(form.getRating());
            review.setReviewText(form.getReviewText());
            review.setReviewDate(new Date());

            gameReviewDAO.save(review);
            response.setViewName("redirect:/games/details?id=" + form.getGameId());
        } else {
            response.addObject("errorMessage", "Game or User not found. Please check your input.");

            if (game == null) {
                bindingResult.rejectValue("gameId", "error.form", "Game not found.");
            }
            if (user == null) {
                bindingResult.rejectValue("userId", "error.form", "User not found.");
            }
            response.addObject("bindingResult", bindingResult);
            response.addObject("games", gameDAO.findAll());
            response.setViewName("review/createReview");
        }

        return response;
    }

    @GetMapping("/myReviews") //please put the link in spring security so user has to sign in first to get access
    public ModelAndView createSubmit() {
        ModelAndView response = new ModelAndView("review/myReviews");
        return response;
    }


}

//
