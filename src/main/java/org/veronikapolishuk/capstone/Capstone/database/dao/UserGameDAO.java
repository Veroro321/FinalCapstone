package org.veronikapolishuk.capstone.Capstone.database.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.veronikapolishuk.capstone.Capstone.database.entity.Game;
import org.veronikapolishuk.capstone.Capstone.database.entity.User;
import org.veronikapolishuk.capstone.Capstone.database.entity.UserGame;

import java.util.List;

public interface UserGameDAO extends JpaRepository<UserGame, Integer> {

    List<UserGame> findByUser(User user);

    boolean existsByUserAndGame(User user, Game game);

    UserGame findByUserAndGame(User user, Game game);

}
