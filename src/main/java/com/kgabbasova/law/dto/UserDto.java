package com.kgabbasova.law.dto;

import com.kgabbasova.law.beans.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserDto extends User {

    private String newPassword;
    private String passwordRepeat;
}
