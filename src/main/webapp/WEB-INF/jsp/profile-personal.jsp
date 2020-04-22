<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head class="h-100">
    <title>Персональные данные</title>
    <meta charset="utf-8">
    <link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
    <link href="<c:url value="/css/general.css"/>" rel="stylesheet" type="text/css">
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


<%@include file="templates/header.jspf" %>


<main role="main" class="h-100">

    <div class="mt-5">


        <div class="ml-3 mr-3">
            <div class="row">


                <div class="col-2">

                    <div class="nav flex-column nav-pills dev-nav-tabs" id="v-pills-tab" role="tablist"
                         aria-orientation="vertical">
                        <a class="nav-link active" href="personal">Персональные данные</a>
                        <a class="nav-link " href="documents">Документы</a>
                    </div>


                </div>
                <div class="col-10">

                    <form class="form-style-9 ml-3 mr-3">

                        <h3> Персональные данные </h3>

                        <div class="row mt-4">
                            <div class="col-4 align-left">
                                <label for="name"><span>Имя</span>
                                    <input type="text" required id="name" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                            <div class="col-4">
                                <label for="lastname"><span>Фамилия</span>
                                    <input type="text" required id="lastname" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                            <div class="col-4">
                                <label for="patronymic"><span>Отчество</span>
                                    <input type="text" required id="patronymic" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                        </div>


                        <div class="row mt-4">
                            <div class="col-4 align-left">
                                <label for="birthday"><span>Дата рождения</span>
                                    <input type="date" required id="birthday" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                            <div class="col-4">
                                <label for="birthplace"><span>Место рождения</span>
                                    <input type="text" required id="birthplace" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                            <div class="col-4">
                                <label for="patronymic"><span>Гражданство</span>
                                    <select type="text" required id="citizenship" name=""
                                            class="field-style field-split align-left"
                                            placeholder="">
                                        <option> Россия</option>
                                    </select>

                                </label>
                            </div>


                        </div>

                        <div class="row mt-3">
                            <div class="col-6 align-left">
                                <label for="issueDate"><span>Email</span>
                                    <input type="email" required id="issueDate" name=""
                                           class="date_with_calendar field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                            <div class="col-6">
                                <label for="code"><span>Телефон</span>
                                    <input type="text" required id="code" name=""
                                           class="field-style field-split align-left"
                                           placeholder="+7(999)-999-99-99"/>
                                </label>
                            </div>


                        </div>

                        <div class="row mt-3">

                            <div class="col-8 row">
                                <div class="col-3">
                                    <span> Пол </span>
                                </div>
                                <div class="col-4">
                                    <label for="gender-man" class="radio-inline">Мужской
                                        <input type="radio" required id="gender-man" name="gender"
                                               class=""
                                               placeholder="+7(999)-999-99-99"/>
                                    </label>
                                </div>
                                <div class="col-4">
                                    <label for="gender-female" class="radio-inline">Женский
                                        <input type="radio" required id="gender-female" name="gender"
                                               class=""
                                               placeholder="+7(999)-999-99-99"/>
                                    </label></div>

                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-4 align-left">
                                <label for="password"><span>Пароль</span>
                                    <input type="password" required id="password" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                            <div class="col-4">
                                <label for="new-password"><span>Новый пароль</span>
                                    <input type="password" required id="new-password" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                            <div class="col-4">
                                <label for="confirm-password"><span>Подтверждение пароля</span>
                                    <input type="password" required id="confirm-password" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>


                        </div>

                        <div class="mt-4">
                            <input type="submit" value="Сохранить"/>
                        </div>


                    </form>


                </div>
            </div>
        </div>
    </div>


</main>


<footer class="sticky-footer mb-0 mt-5">
    <div class="container">
        <span>&copy; Robot-lawyer 2019- 2020</span>
    </div>
</footer>

</body>
</html>