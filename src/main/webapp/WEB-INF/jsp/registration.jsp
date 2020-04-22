<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head class="h-100">
    <title>Регистрация</title>
    <meta charset="utf-8">
    <link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
    <link href="<c:url value="/css/general.css"/>" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="<c:url value="/images/favicon.ico"/>" type="image/x-icon"/>
    <script src="<c:url value="/js/jquery-3.4.0.min.js"/>"></script>
    <script src="<c:url value="/js/jquery-ui.min.js"/>"></script>
    <script src="<c:url value="/js/jquery-1.10.2.min.js"/>"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="<c:url value="/js/bootstrap.js"/>"></script>
    <script src="<c:url value="/js/bootstrap.bundle.js"/>"></script>
    <script src="<c:url value="/js/general.js"/>"></script>
    <script src="<c:url value="/js/jquery.ui.datepicker-ru.min.js"/>"></script>


</head>

<body class="h-100">


<nav class="navbar navbar-expand-md navbar-dark  bg-dark">
    <div class="ml-3 col-3">
        <a class="navbar-brand" href="#">
            <img src="<c:url value="/images/logo1.png"/>" height="100%" width="80%"/>
        </a>
    </div>


    <div class="collapse navbar-collapse dev-header">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/index"/>"> О проекте <span class="sr-only">(current)</span></a>
            </li>


        </ul>

        <a class="btn btn-outline-secondary active" href="<c:url value="/registration"/>">Регистрация</a>
        <a class="ml-3 mr-3 btn btn-outline-secondary" href="<c:url value="/login"/>">Войти</a>


    </div>
</nav>

<main role="main" class="h-100">

    <div class="mt-5">


        <div class="ml-3 mr-3">
            <div class="row">


                <div class="col-3"></div>

                <div class="col-6 center-block">

                    <form class="form-style-9 ml-3 mr-3">
                        <h3 class="text-center"> Регистрация </h3>

                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="surname"><span>Фамилия</span>
                                    <input type="text" required id="surname" name="surname"
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="name"><span>Имя</span>
                                    <input type="text" required id="name" name="name"
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="patronymic"><span>Отчество</span>
                                    <input type="text" required id="patronymic" name="patronymic"
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="email"><span>Email</span>
                                    <input type="email" required id="email" name="email"
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="phone"><span>Телефон</span>
                                    <input type="text" required id="phone" name="phone"
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="password"><span>Пароль</span>
                                    <input type="password" required id="password" name="password"
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="passwordRepeat"><span>Подтверждение пароля</span>
                                    <input type="password" required id="passwordRepeat" name="passwordRepeat"
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="birthday"><span>Дата рождения</span>
                                    <input type="date" required id="birthday" name="birthday"
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



                        <div class="mt-4">
                            <input type="submit" class="" value="Сохранить"/>
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