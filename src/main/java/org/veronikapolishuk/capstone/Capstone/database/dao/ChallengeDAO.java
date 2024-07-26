package org.veronikapolishuk.capstone.Capstone.database.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.veronikapolishuk.capstone.Capstone.database.entity.Challenge;

public interface ChallengeDAO extends JpaRepository<Challenge, Integer> {
    // Additional query methods (if needed) can be defined here
}
