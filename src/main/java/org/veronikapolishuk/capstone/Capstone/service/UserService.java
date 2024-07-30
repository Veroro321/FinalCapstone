package org.veronikapolishuk.capstone.Capstone.service;



import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.veronikapolishuk.capstone.Capstone.database.dao.UserDAO;
import org.veronikapolishuk.capstone.Capstone.database.entity.User;
import org.veronikapolishuk.capstone.Capstone.form.CreateAccountFormBean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;


import java.util.*;

@Slf4j
@Service
public class UserService {

    @Autowired
    private UserDAO userDao;

    @Autowired
    private PasswordEncoder passwordEncoder;


    public User createUser(CreateAccountFormBean form) {
        // there were no errors so we can create the new user in the database
        User user = new User();

        user.setEmail(form.getEmail());

        // we are getting in a plain text password bc the user entered it into the form
        String encryptedPassword = passwordEncoder.encode(form.getPassword());
        user.setPassword(encryptedPassword);


        user.setCreateDate(new Date());

        // save the user to the database
        userDao.save(user);

        return user;
    }

}
