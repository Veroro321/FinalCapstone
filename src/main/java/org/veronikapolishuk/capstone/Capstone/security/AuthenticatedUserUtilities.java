package org.veronikapolishuk.capstone.Capstone.security;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.veronikapolishuk.capstone.Capstone.database.dao.UserDAO;
import org.veronikapolishuk.capstone.Capstone.database.entity.User;


@Slf4j
@Component
public class AuthenticatedUserUtilities {

    @Autowired
    private UserDAO userDAO;


    public String getCurrentUsername() {
        // the goal of this method is to either return the logged in username or null if the user is not logged in
        SecurityContext context = SecurityContextHolder.getContext();
        if (context != null && context.getAuthentication() != null) {
            // this is if the user has a security context
            if (context.getAuthentication() instanceof AnonymousAuthenticationToken) {
                // not logged in so return null
                return null;
            }

            final org.springframework.security.core.userdetails.User principal = (org.springframework.security.core.userdetails.User) context.getAuthentication().getPrincipal();
            return principal.getUsername();
        } else {
            return null;
        }
    }


    public User getCurrentUser() {
        // the goal of this method is to either return the logged in user object or null if the user is not logged in
        String username = getCurrentUsername();
        if (username == null) {
            return null;
        }
        return userDAO.findByEmailIgnoreCase(username);
    }

}
