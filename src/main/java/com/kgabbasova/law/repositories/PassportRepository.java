package com.kgabbasova.law.repositories;

import com.kgabbasova.law.beans.documents.Passport;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface PassportRepository extends JpaRepository<Passport, Long> {

    @Transactional
    Passport findByOwnerId(long ownerId);
}
