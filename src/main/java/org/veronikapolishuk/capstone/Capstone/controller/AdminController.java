package org.veronikapolishuk.capstone.Capstone.controller;


import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
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
import org.veronikapolishuk.capstone.Capstone.database.entity.GameReview;
import org.veronikapolishuk.capstone.Capstone.database.entity.User;
import org.veronikapolishuk.capstone.Capstone.security.AuthenticatedUserUtilities;

@Slf4j
@Controller
@RequestMapping("/admin")
@PreAuthorize("hasAuthority('ADMIN')") //must use in case study!! this has to match what we put in the database!!!
public class AdminController {

    @Autowired
    private GameDAO gameDAO;

    @Autowired
    private GameReviewDAO gameReviewDAO;

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private UserGameDAO userGameDAO;

    @Autowired
    private AuthenticatedUserUtilities authenticatedUserUtilities;

    @GetMapping("/reviewModeration")
    public ModelAndView reviewModeration() {
        ModelAndView response = new ModelAndView("admin/reviewModeration");

        User user = authenticatedUserUtilities.getCurrentUser();
        log.debug(user.toString());

        response.addObject("reviews", gameReviewDAO.findAll());
        return response;
    }

    @PostMapping("/approveReview") //this is currently not working as intended, but this is good because
    public ModelAndView approveReview(@RequestParam Integer reviewId) {
        ModelAndView response = new ModelAndView("redirect:/admin/reviewModeration");

        GameReview review = gameReviewDAO.findById(reviewId).orElse(null);
        if (review != null) {
            review.setApproved(true);
            gameReviewDAO.save(review);
        } else {
            response.addObject("errorMessage", "Review not found.");
        }

        return response;
    }

    @PostMapping("/deleteReview")
    public ModelAndView deleteReview(@RequestParam Integer reviewId) {
        ModelAndView response = new ModelAndView("redirect:/admin/reviewModeration");

        GameReview review = gameReviewDAO.findById(reviewId).orElse(null);
        if (review != null) {
            gameReviewDAO.delete(review);
        } else {
            response.addObject("errorMessage", "Review not found.");
        }

        return response;
    }
}
