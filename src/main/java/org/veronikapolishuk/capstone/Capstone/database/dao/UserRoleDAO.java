package org.veronikapolishuk.capstone.Capstone.database.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.veronikapolishuk.capstone.Capstone.database.entity.UserRole;

import java.util.List;

public interface UserRoleDAO extends JpaRepository<UserRole, Integer> {

    List<UserRole> findByUser_UserId(Integer userId);

}
