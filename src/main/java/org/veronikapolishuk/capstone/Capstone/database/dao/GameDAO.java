package org.veronikapolishuk.capstone.Capstone.database.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.veronikapolishuk.capstone.Capstone.database.entity.Game;

import java.util.List;

public interface GameDAO extends JpaRepository<Game, Integer> {

    Game findByGameId(Integer gameId); //this query is the Spring Data JPA can use this one instead...

    @Query("select g from Game g where lower(g.title) like lower(concat('%', :title, '%'))")
    List<Game> findGameByTitle(@Param("title") String title); //dont necessarly need the param here

    List<Game> findAll();

    // Native query!!!! Wooooo HOOOOOO
    @Query(value = "SELECT * FROM Games WHERE theme LIKE '%Sci-Fi%'", nativeQuery = true)
    List<Game> findGamesByThemeContaining(@Param("theme") String theme);

}