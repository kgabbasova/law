<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html class="">
<head class="h-100">
    <title>Регистрация</title>

    <%@include file="templates/meta.jspf"%>
    <script src="<c:url value="/js/registration.js"/>"></script>

</head>

<body class="h-100 ">


<%@include file="templates/header.jspf" %>


<main role="main" class="h-100 pb-5">

    <div class="mt-5">


        <div class="ml-3 mr-3">
            <div class="row">


                <div class="col-3"></div>

                <div class="col-6 center-block">

                    <form class="form-style-9 ml-3 mr-3" onsubmit="false">
                        <h3 class="text-center"> Регистрация </h3>

                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="surname"><span>Фамилия</span>
                                    <input type="text"  id="surname" name="surname"
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="name"><span>Имя</span>
                                    <input type="text"  id="name" name="name"
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="patronymic"><span>Отчество</span>
                                    <input type="text"  id="patronymic" name="patronymic"
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="email"><span>Email</span>
                                    <input type="email"  id="email" name="email"
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="phone"><span>Телефон</span>
                                    <input type="text"  id="phone" name="phone"
                                           class="field-style field-split phone-mask align-left"
                                           placeholder="+7-(900)-000-00-00"/>
                                </label>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="password"><span>Пароль</span>
                                    <input type="password"  id="password" name="password"
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="passwordRepeat"><span>Подтверждение пароля</span>
                                    <input type="password"  id="passwordRepeat" name="passwordRepeat"
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="birthday"><span>Дата рождения</span>
                                    <input type="date"  id="birthday" name="birthday"
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                        </div>

                        <div class="row mt-3">

                            <div class="col-7 align-left">

                                <label for="personalAgree" class="checkbox-inline">Согласие на обработку персональных данных
                                    <input type="checkbox" id="personalAgree" name="personalAgree"
                                           class="checkbox"
                                           placeholder=""/>
                                </label>
                            </div>

                        </div>



                        <div class="mt-4  text-center">
                            <input type="submit" class="dev-save" value="Зарегистрироваться"/>
                        </div>


                    </form>

                </div>
            </div>
        </div>
    </div>

    <div class="container">
    </div>

</main>

<footer class="sticky-footer">
    <div class="container">
        <span>&copy; Robot-lawyer 2019- 2020</span>
    </div>
</footer>

</body>
</html>