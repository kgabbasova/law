<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head class="h-100">
    <title>Профиль. Документы</title>
    <meta charset="utf-8">
    <%@include file="templates/meta.jspf"%>

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
                        <a class="nav-link" href="personal">Персональные данные</a>
                        <a class="nav-link active" href="documents">Документы</a>
                    </div>


                </div>
                <div class="col-10">

                    <form class="form-style-9 ml-3 mr-3">
                        <fieldset>
                            <legend>Паспортные данные</legend>
                            <div class="row mt-4">
                                <div class="col-5 align-left">
                                    <label for="seria"><span>Серия</span>
                                        <input type="text" required id="seria" name=""
                                               class="field-style field-split align-left"
                                               placeholder="****"/>
                                    </label>
                                </div>
                                <div class="col-7">
                                    <label for="number"><span>Номер</span>
                                        <input type="text" required id="number" name=""
                                               class="field-style field-split align-left"
                                               placeholder="******"/>
                                    </label>
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-5 align-left">
                                    <label for="issueDate"><span>Дата выдачи</span>
                                        <input type="date" required id="issueDate" name=""
                                               class="date_with_calendar field-style field-split align-left"
                                               placeholder="01.06.2019"/>
                                    </label>
                                </div>
                                <div class="col-7">
                                    <label for="code"><span>Код подразделения</span>
                                        <input type="text" required id="code" name=""
                                               class="field-style field-split align-left"
                                               placeholder="000-000"/>
                                    </label>
                                </div>
                            </div>

                            <div class="row mt-4">
                                <div class="col-12">
                                    <label for="issuedBy"><span>Кем выдан</span>
                                        <input type="text" required id="issuedBy" name=""
                                               class="field-style field-split align-left"
                                               placeholder="кем выдан"/>
                                    </label>
                                </div>
                            </div>
                            <div class="row mt-4">
                                <div>
                                    <input type="file" value="Прикрепить файл">
                                </div>
                            </div>
                            <div class="mt-4">
                                <input type="submit" value="Сохранить"/>
                            </div>

                        </fieldset>

                    </form>

                    <form class="form-style-9 ml-3 mr-3">
                        <fieldset>
                            <legend>СНИЛС</legend>
                            <div class="row mt-4">
                                <div class="col-8 align-left">
                                    <label for="number-snils"><span>Номер</span>
                                        <input type="text" required id="number-snils" name=""
                                               class="field-style field-split align-left"
                                               placeholder="**********"/>
                                    </label>
                                </div>
                            </div>

                            <div class="row mt-4">
                                <div>
                                    <input type="file" value="Прикрепить файл">
                                </div>
                            </div>
                            <div class="mt-4">
                                <input type="submit" value="Сохранить"/>
                            </div>

                        </fieldset>

                    </form>

                    <form class="form-style-9 ml-3 mr-3">
                        <fieldset>
                            <legend>ИНН</legend>
                            <div class="row mt-4">
                                <div class="col-8 align-left">
                                    <label for="number-inn"><span>Номер</span>
                                        <input type="text" required id="number-inn" name=""
                                               class="field-style field-split align-left"
                                               placeholder="**********"/>
                                    </label>
                                </div>
                            </div>

                            <div class="row mt-4">
                                <div>
                                    <input type="file" value="Прикрепить файл">
                                </div>
                            </div>
                            <div class="mt-4">
                                <input type="submit" value="Сохранить"/>
                            </div>

                        </fieldset>

                    </form>

                    <form class="form-style-9 ml-3 mr-3">
                        <fieldset>
                            <legend>Водительское удостоверение</legend>

                            <div class="row mt-4">
                                <div class="col-5 align-left">
                                    <label for="seria-drive"><span>Серия</span>
                                        <input type="text" required id="seria-drive" name=""
                                               class="field-style field-split align-left"
                                               placeholder="****"/>
                                    </label>
                                </div>
                                <div class="col-7">
                                    <label for="number-drive"><span>Номер</span>
                                        <input type="text" required id="number-drive" name=""
                                               class="field-style field-split align-left"
                                               placeholder="******"/>
                                    </label>
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-5 align-left">
                                    <label for="issue-date-drive"><span>Дата выдачи</span>
                                        <input type="date" required id="issue-date-drive" name=""
                                               class="date_with_calendar field-style field-split align-left"
                                               placeholder="01.06.2019"/>
                                    </label>
                                </div>
                                <div class="col-7">
                                    <label for="valid-until-drive"><span>Действительно до</span>
                                        <input type="date" required id="valid-until-drive" name=""
                                               class="field-style field-split align-left"/>
                                    </label>
                                </div>
                            </div>


                            <div class="row mt-4">
                                <div>
                                    <input type="file" value="Прикрепить файл">
                                </div>
                            </div>
                            <div class="mt-4">
                                <input type="submit" value="Сохранить"/>
                            </div>

                        </fieldset>

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