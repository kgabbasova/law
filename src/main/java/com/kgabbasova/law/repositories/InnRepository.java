package com.kgabbasova.law.repositories;

import com.kgabbasova.law.beans.documents.Inn;
import com.kgabbasova.law.beans.documents.Passport;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface InnRepository extends JpaRepository<Inn, Long> {
    Inn findByOwnerId(long ownerId);

}
