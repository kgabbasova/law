package com.kgabbasova.law.repositories;

import com.kgabbasova.law.beans.documents.Passport;
import com.kgabbasova.law.beans.documents.Snils;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SnilsRepository extends JpaRepository<Snils, Long> {
    Snils findByOwnerId(long ownerId);

}
