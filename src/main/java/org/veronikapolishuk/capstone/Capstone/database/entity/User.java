package org.veronikapolishuk.capstone.Capstone.database.entity;

import jakarta.persistence.*;
import lombok.*;

import java.awt.print.Book;
import java.math.BigDecimal;
import java.util.List;
import java.util.Objects;
import java.util.Set;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private int userId;

    @Column(name = "username")
    private String username;

    @Column(name = "password")
    private String password;

    @Column(name = "email")
    private String email;

    @Column(name = "name")
    private String name;

    @Column(name = "profile_picture")
    private String profilePicture;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<UserChallenge> userChallenges;
}