package com.kgabbasova.law.beans;


import com.kgabbasova.law.beans.enums.UserRole;
import com.kgabbasova.law.beans.enums.UserState;
import lombok.*;

import javax.persistence.*;
import java.util.Calendar;

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
    private Long id;

    @Column(name = "email")
    private String email;

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
    private Calendar birthday;

    @Enumerated(value = EnumType.STRING)
    private UserRole role;

    @Enumerated(value = EnumType.STRING)
    private UserState state;




}