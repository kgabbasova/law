package com.kgabbasova.law.repositories;

import com.kgabbasova.law.beans.User;
import org.springframework.data.domain.Example;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    User findByUsername(String username);

    User findById(long id);

    boolean existsByUsernameAndAndIdNot(String username, long id);
}
