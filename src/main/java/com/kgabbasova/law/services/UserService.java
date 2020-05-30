package com.kgabbasova.law.services;

import com.kgabbasova.law.beans.User;
import com.kgabbasova.law.beans.enums.UserRole;
import com.kgabbasova.law.dto.RegistrationDto;
import com.kgabbasova.law.dto.UserDto;
import com.kgabbasova.law.exceptions.LawException;
import com.kgabbasova.law.repositories.UserRepository;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
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


    @Transactional
    public void saveUser(UserDto userDto, User userDb)  {

        User user = User.builder()
                .id(userDto.getId())
                .birthday(userDto.getBirthday())
                .username(userDto.getUsername())
                .name(userDto.getName())
                .surname(userDto.getSurname())
                .patronymic(userDto.getPatronymic())
                .phone(userDto.getPhone())
                .role(UserRole.USER)
                .country(userDto.getCountry())
                .male(userDto.isMale())
                .birthPlace(userDto.getBirthPlace())
                .build();
        if (StringUtils.isNotBlank(userDto.getNewPassword())) {
            user.setPassword(passwordEncoder.encode(userDto.getNewPassword()));
        } else {
            user.setPassword(userDb.getPassword());
        }
        userRepository.save(user);
    }

    public StringBuilder checkUserValid (UserDto userDto, User dbUser) {
        StringBuilder result = new StringBuilder();
        if (dbUser == null) {
            result.append("Передан неверный id пользователя\n");
            return result;
        }
        if (StringUtils.isBlank(userDto.getUsername())) {
            result.append("Email должен быть заполнен\n");
        } else {
            if (userRepository.existsByUsernameAndAndIdNot(userDto.getUsername(), userDto.getId())) {
                result.append("Пользователь с таким email уже существует\n");
            }
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
                result.append("Старый пароль должен быть заполнен\n");
            }  else if (!passwordEncoder.matches(userDto.getPassword(), dbUser.getPassword())) {
                result.append("Старый пароль не совпадает\n");
            }
            if (!userDto.getNewPassword().equals(userDto.getPasswordRepeat())) {
                result.append("Пароли не совпадают\n");
            }

        }

        return result;
    }

    public User getUserById (long id) {
        return userRepository.findById(id);
    }

    public User getUserByUsername (String username) {
        return userRepository.findByUsername(username);
    }
}
