package com.kgabbasova.law;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan(basePackages = "com.kgabbasova.law.beans")
public class LawApplication {

    public static void main(String[] args) {
        SpringApplication.run(LawApplication.class, args);
    }

}
