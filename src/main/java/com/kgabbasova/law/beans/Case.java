package com.kgabbasova.law.beans;


import lombok.*;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;

@Entity
@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "case")
public class Case {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;

    private String name;

    private String number;

    private String category;

    private boolean removed;

    private User owner;

    private List<CaseParty> casePartyList;

    private List<CaseApplication> caseApplicationList;

    private Court court;

    private BigDecimal summ;


}
