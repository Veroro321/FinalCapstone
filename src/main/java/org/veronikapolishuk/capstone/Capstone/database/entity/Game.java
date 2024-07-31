package org.veronikapolishuk.capstone.Capstone.database.entity;

import jakarta.persistence.*;
import lombok.*;

import java.sql.Date;
import java.util.List;
import java.util.Set;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "games")
public class Game {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "game_id")
    private Integer gameId;

    @Column(name = "title")
    private String title;

    @Column(name = "description")
    private String description;

    @Column(name = "genre")
    private String genre;

    @Column(name = "theme")
    private String theme;

    @Column(name = "platform")
    private String platform;

    @ToString.Exclude
    @Column(name = "release_date")
    @Temporal(TemporalType.TIMESTAMP)
    private java.util.Date releaseDate;

    @Column(name = "image_url")
    private String imageUrl; //newly added so images can display

    @OneToMany(mappedBy = "game")
    private List<GameReview> gameReviews;

    @OneToMany(mappedBy = "game")
    private Set<UserGame> userGames;


}
