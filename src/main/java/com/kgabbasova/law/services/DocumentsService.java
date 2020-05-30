package com.kgabbasova.law.services;


import com.kgabbasova.law.beans.documents.DriveLicense;
import com.kgabbasova.law.beans.documents.Inn;
import com.kgabbasova.law.beans.documents.Passport;
import com.kgabbasova.law.beans.documents.Snils;
import com.kgabbasova.law.repositories.DriveLicenseRepository;
import com.kgabbasova.law.repositories.InnRepository;
import com.kgabbasova.law.repositories.PassportRepository;
import com.kgabbasova.law.repositories.SnilsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DocumentsService {


    @Autowired
    private PassportRepository passportRepository;
    @Autowired
    private DriveLicenseRepository driveLicenseRepository;
    @Autowired
    private InnRepository innRepository;
    @Autowired
    private SnilsRepository snilsRepository;


    @Transactional
    public void savePassport(Passport passport) {
        passportRepository.save(passport);
    }

    @Transactional
    public void saveInn(Inn inn) {
        innRepository.save(inn);
    }

    @Transactional
    public void saveSnils(Snils snils) {
        snilsRepository.save(snils);
    }

    @Transactional
    public void saveDriveLicense(DriveLicense driveLicense) {
        driveLicenseRepository.save(driveLicense);
    }

    @Transactional
    public Snils getSnilsByOwnerId(long ownerId) {
        return snilsRepository.findByOwnerId(ownerId);
    }

    public Inn getInnByOwnerId(long ownerId) {
        return innRepository.findByOwnerId(ownerId);
    }
    public DriveLicense getDriveLicenseByOwnerId(long ownerId) {
        return driveLicenseRepository.findByOwnerId(ownerId);
    }
    public Passport getPassportByOwnerId(long ownerId) {
        return passportRepository.findByOwnerId(ownerId);
    }
}
