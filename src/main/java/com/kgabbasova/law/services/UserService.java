package com.kgabbasova.law.services;

import com.kgabbasova.law.beans.User;
import com.kgabbasova.law.beans.enums.UserRole;
import com.kgabbasova.law.dto.RegistrationDto;
import com.kgabbasova.law.dto.UserDto;
import com.kgabbasova.law.exceptions.LawException;
import com.kgabbasova.law.repositories.UserRepository;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Transactional
    public void saveUser(RegistrationDto registrationDto) throws LawException {
        User userFromDB = userRepository.findByUsername(registrationDto.getEmail());
        if (userFromDB != null) {
            throw new LawException("Пользователь с таким email уже существует\n");
        }
        User user = User.builder()
                .birthday(registrationDto.getBirthday())
                .username(registrationDto.getEmail())
                .name(registrationDto.getName())
                .surname(registrationDto.getSurname())
                .patronymic(registrationDto.getPatronymic())
                .phone(registrationDto.getPhone())
                .password(passwordEncoder.encode(registrationDto.getPassword()))
                .role(UserRole.USER)
                .build();
        userRepository.save(user);
    }

    public StringBuilder checkUserValid (UserDto userDto) {
        StringBuilder result = new StringBuilder();
        if (StringUtils.isBlank(userDto.getUsername())) {
            result.append("Email должен быть заполнен\n");
        }
        if (StringUtils.isBlank(userDto.getName())) {
            result.append("Имя должно быть заполнено\n");
        }
        if (StringUtils.isBlank(userDto.getSurname())) {
            result.append("Фамилия должна быть заполнена\n");
        }
        if (StringUtils.isBlank(userDto.getPhone())) {
            result.append("Телефон должен быть заполнен\n");
        }
        if (userDto.getBirthday() == null) {
            result.append("Дата рождения должна быть заполнена\n");
        }
        if (StringUtils.isNotBlank(userDto.getNewPassword())) {
            if (StringUtils.isBlank(userDto.getPassword())) {
                result.append("Пароль должен быть заполнен\n");
            }
        }



        return result;
    }
}
