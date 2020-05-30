package com.kgabbasova.law.beans.documents;

import com.kgabbasova.law.beans.User;
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
@Table(name = "passport")
public class Passport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;

    private String series;

    private String number;

    @Temporal(TemporalType.DATE)
    private Date issueDate;

    private String structureCode;

    @Column(length = 511)
    private String issuedBy;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "owner_id")
    private User owner;

    private String filePath;

    private String fileName;

}
