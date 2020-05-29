package com.kgabbasova.law.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RegistrationDto implements Serializable {

    @NotBlank (message = "Email должен быть заполнен")
    private String email;

    @NotBlank (message = "Имя должно быть заполнено")
    private String name;

    @NotBlank (message = "Фамилия должна быть заполнена")
    private String surname;

    private String patronymic;

    @NotBlank (message = "Телефон должен быть заполнен")
    private String phone;

    @AssertTrue (message = "Не дано согласие на обработку персональных данных")
    private boolean personalAgree;

    @NotBlank (message = "Пароль должен быть заполнен")
    private String password;

    private String passwordRepeat;

    private Date birthday;
}
