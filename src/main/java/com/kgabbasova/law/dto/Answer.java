package com.kgabbasova.law.dto;


import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
@JsonSerialize
@Builder
public class Answer implements Serializable {

    private Status status;
    private String message;
    private int code;
    private Object data;


    public Answer(Status status) {
        this.status = status;
    }

    public Answer(Status status, Object data) {
        this.status = status;
        this.data = data;
    }

    public Answer(Status status, String message) {
        this.message = message;
        this.status = status;
    }

    public Answer(Status status, String message, Object data) {
        this.message = message;
        this.status = status;
        this.data = data;
    }

    public enum Status {
        SUCCESS, ERROR;
    }


}
