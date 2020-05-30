package com.kgabbasova.law.repositories;

import com.kgabbasova.law.beans.documents.DriveLicense;
import com.kgabbasova.law.beans.documents.Passport;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DriveLicenseRepository extends JpaRepository<DriveLicense, Long> {


    DriveLicense findByOwnerId(long ownerId);

}

