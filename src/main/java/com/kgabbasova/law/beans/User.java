package com.kgabbasova.law.beans;


import com.kgabbasova.law.beans.documents.DriveLicense;
import com.kgabbasova.law.beans.documents.Inn;
import com.kgabbasova.law.beans.documents.Passport;
import com.kgabbasova.law.beans.documents.Snils;
import com.kgabbasova.law.beans.enums.UserRole;
import lombok.*;

import javax.persistence.*;
import java.util.Calendar;
import java.util.Date;

@Entity
@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "app_user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;

    @Column(name = "username")
    private String username;

    private String name;

    private String surname;

    private String patronymic;

    @Column(name = "birth_place")
    private String birthPlace;

    private String phone;

    private boolean male;

    @Column(name = "password")
    private String password;

    @Column(name = "country")
    private String country;

    @Temporal(TemporalType.DATE)
    private Date birthday;

    @Enumerated(value = EnumType.STRING)
    private UserRole role;

    private boolean removed;

    @OneToOne(mappedBy = "owner",
            cascade = CascadeType.ALL,
            fetch = FetchType.LAZY)
    private Passport passport;

    @OneToOne(mappedBy = "owner",
            cascade = CascadeType.ALL,
            fetch = FetchType.LAZY)
    private Inn inn;


    @OneToOne(mappedBy = "owner",
            cascade = CascadeType.ALL,
            fetch = FetchType.LAZY)
    private Snils snils;

    @OneToOne(mappedBy = "owner",
            cascade = CascadeType.ALL,
            fetch = FetchType.LAZY)
    private DriveLicense driveLicense;



}