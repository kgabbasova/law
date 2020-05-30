package com.kgabbasova.law.beans;

import lombok.*;

import javax.persistence.*;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class File {

    private String fileName;

    private String filePath;

    private String type;

    private boolean removed;
}
