package com.kgabbasova.law.beans;

import com.kgabbasova.law.beans.enums.CasePartyType;
import com.kgabbasova.law.beans.enums.UserStatus;
import lombok.*;

import javax.persistence.*;
import java.util.Date;

@Entity
@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "plaintiff")
public class CaseParty {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;

    @Enumerated(value = EnumType.STRING)
    private UserStatus userStatus;

    @Enumerated(value = EnumType.STRING)
    private CasePartyType casePartyType;

    private String name;

    private String surname;

    private String patronymic;

    private Date birthday;

    private String birthplace;

    private String phone;

}
