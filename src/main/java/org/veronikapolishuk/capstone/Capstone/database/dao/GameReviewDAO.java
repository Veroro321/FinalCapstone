package org.veronikapolishuk.capstone.Capstone.database.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.veronikapolishuk.capstone.Capstone.database.entity.GameReview;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.veronikapolishuk.capstone.Capstone.database.entity.User;

import java.util.List;

public interface GameReviewDAO extends JpaRepository<GameReview, Integer> {

    @Query("SELECT gr FROM GameReview gr WHERE gr.gameId = :gameId")
    List<GameReview> findReviewsByGameId(Integer gameId);

    List<GameReview> findByUser(User user); //this fetches all game reviews

}