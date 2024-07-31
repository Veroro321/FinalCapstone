package org.veronikapolishuk.capstone.Capstone.database.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.veronikapolishuk.capstone.Capstone.database.entity.Game;

import java.util.List;

public interface GameDAO extends JpaRepository<Game, Integer> {

    @Query("select g from Game g where g.title like concat('%', :title, '%')")
    List<Game> findGameByTitle(@Param("title") String title);

}