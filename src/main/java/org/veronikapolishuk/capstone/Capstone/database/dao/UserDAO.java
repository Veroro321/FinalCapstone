package org.veronikapolishuk.capstone.Capstone.database.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.veronikapolishuk.capstone.Capstone.database.entity.Game;
import org.veronikapolishuk.capstone.Capstone.database.entity.User;

public interface UserDAO extends JpaRepository<User, Long> {

    User findByEmailIgnoreCase(String email);

    User findByUserId(Integer userId);







}