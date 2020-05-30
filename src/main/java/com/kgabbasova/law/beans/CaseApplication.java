package com.kgabbasova.law.beans;


import lombok.*;

import javax.persistence.*;

@Entity
@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "case_application")
public class CaseApplication {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;

    private String fileName;

    private String filePath;

    private String type;

    private boolean removed;

    private Case aCase;
}
