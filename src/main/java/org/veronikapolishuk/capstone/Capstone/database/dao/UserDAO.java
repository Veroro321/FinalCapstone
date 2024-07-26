package org.veronikapolishuk.capstone.Capstone.database.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.veronikapolishuk.capstone.Capstone.database.entity.User;

public interface UserDAO extends JpaRepository<User, Integer> {
    // Additional query methods (if needed) can be defined here
}