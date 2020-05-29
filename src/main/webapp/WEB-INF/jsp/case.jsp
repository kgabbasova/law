<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head class="h-100">
    <title>Профиль. Документы</title>

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
                        <a class="nav-link" href="case">Дело №1</a>
                    </div>


                </div>
                <div class="col-10">

                    <form class="form-style-9 ml-3 mr-3">
                        <fieldset>
                            <legend>Сведения о деле</legend>
                            <div class="row mt-4">
                                <div class="col-5 align-left">
                                    <label for="number"><span>Номер дела</span>
                                        <input type="text" required id="number" name=""
                                               class="field-style field-split align-left"
                                               placeholder="****"/>
                                    </label>
                                </div>
                                <div class="col-7">
                                    <label for="name"><span>Название</span>
                                        <input type="text" required id="name" name=""
                                               class="field-style field-split align-left"
                                               placeholder="******"/>
                                    </label>
                                </div>
                            </div>

                            <div class="row mt-4">
                                <div class="col-8 align-left">
                                    <label for="form"><span>Категория дела</span>
                                        <select type="text" required id="form" name=""
                                                class="field-style field-split align-left"
                                                placeholder="">
                                            <option> Купля-продажа</option>
                                            <option> Аренда</option>
                                            <option> Поставка</option>

                                        </select>

                                    </label>
                                </div>

                            </div>


                        </fieldset>
                        <div class="mt-4">
                            <input type="submit" value="Сохранить"/>
                        </div>
                    </form>

                    <form class="form-style-9 ml-3 mr-3">
                        <fieldset>
                            <legend>Сведения об истце</legend>

                            <div class="row mt-4">
                                <div class="col-8 align-left">
                                    <label for="ist"><span>Статус</span>
                                        <select type="text" required id="ist" name=""
                                                class="field-style field-split align-left"
                                                placeholder="">
                                            <option> ФЛ</option>
                                            <option> ЮЛ</option>
                                            <option> ИП</option>
                                            <option> Государственный орган</option>
                                            <option> Иностранная организация</option>

                                        </select>

                                    </label>
                                </div>

                            </div>

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
                                    <label for="phone"><span>Телефон</span>
                                        <input type="text" required id="phone" name=""
                                               class="field-style field-split align-left"
                                               placeholder="+7(999)-999-99-99"/>

                                    </label>
                                </div>


                            </div>

                        </fieldset>
                        <div class="mt-4">
                            <input type="submit" value="Сохранить"/>
                        </div>
                    </form>

                    <form class="form-style-9 ml-3 mr-3">
                        <fieldset>
                            <legend>Сведения об ответчике</legend>

                            <div class="row mt-4">
                                <div class="col-8 align-left">
                                    <label for="otv"><span>Статус</span>
                                        <select type="text" required id="otv" name=""
                                                class="field-style field-split align-left"
                                                placeholder="">
                                            <option> ФЛ</option>
                                            <option> ЮЛ</option>
                                            <option> ИП</option>
                                            <option> Государственный орган</option>
                                            <option> Иностранная организация</option>

                                        </select>

                                    </label>
                                </div>

                            </div>

                            <div class="row mt-4">
                                <div class="col-4 align-left">
                                    <label for="otv-name"><span>Имя</span>
                                        <input type="text" required id="otv-name" name=""
                                               class="field-style field-split align-left"
                                               placeholder=""/>
                                    </label>
                                </div>
                                <div class="col-4">
                                    <label for="otv-lastname"><span>Фамилия</span>
                                        <input type="text" required id="otv-lastname" name=""
                                               class="field-style field-split align-left"
                                               placeholder=""/>
                                    </label>
                                </div>

                                <div class="col-4">
                                    <label for="otv-patronymic"><span>Отчество</span>
                                        <input type="text" required id="otv-patronymic" name=""
                                               class="field-style field-split align-left"
                                               placeholder=""/>
                                    </label>
                                </div>

                            </div>

                            <div class="row mt-4">
                                <div class="col-4 align-left">
                                    <label for="otv-birthday"><span>Дата рождения</span>
                                        <input type="date" required id="otv-birthday" name=""
                                               class="field-style field-split align-left"
                                               placeholder=""/>
                                    </label>
                                </div>
                                <div class="col-4">
                                    <label for="otv-birthplace"><span>Место рождения</span>
                                        <input type="text" required id="otv-birthplace" name=""
                                               class="field-style field-split align-left"
                                               placeholder=""/>
                                    </label>
                                </div>

                                <div class="col-4">
                                    <label for="otv-phone"><span>Телефон</span>
                                        <input type="text" required id="otv-phone" name=""
                                               class="field-style field-split align-left"
                                               placeholder="+7(999)-999-99-99"/>

                                    </label>
                                </div>

                            </div>

                        </fieldset>
                        <div class="mt-4">
                            <input type="submit" value="Сохранить"/>
                        </div>
                    </form>




                    <form class="form-style-9 ml-3 mr-3">
                        <fieldset>
                            <legend>Суд</legend>

                            <div class="row mt-4">
                                <div class="col-8 align-left">
                                    <label for="court"><span>Категория</span>
                                        <select type="text" required id="court" name=""
                                                class="field-style field-split align-left"
                                                placeholder="">
                                            <option> Арбитражный суд</option>
                                            <option> Суд общей юрисдикции</option>

                                        </select>

                                    </label>
                                </div>

                            </div>

                            <div class="row mt-4">
                                <div class="col-6 align-left">
                                    <label for="court-name"><span>Наименование</span>
                                        <input type="text" required id="court-name" name=""
                                               class="field-style field-split align-left"
                                               placeholder=""/>
                                    </label>
                                </div>
                                <div class="col-6">
                                    <label for="address"><span>Адрес</span>
                                        <input type="text" required id="address" name=""
                                               class="field-style field-split align-left"
                                               placeholder=""/>
                                    </label>
                                </div>


                            </div>



                        </fieldset>
                        <div class="mt-4">
                            <input type="submit" value="Сохранить"/>
                        </div>
                    </form>



                    <form class="form-style-9 ml-3 mr-3">
                        <fieldset>
                            <legend>Сумма иска</legend>
                            <div class="row mt-4">
                                <div class="col-8 align-left">
                                    <label for="summ"><span>Сумма иска</span>
                                        <input type="text" required id="summ" name=""
                                               class="field-style field-split align-left"
                                               placeholder=""/>
                                    </label>
                                </div>
                            </div>

                        </fieldset>
                        <div class="mt-4">
                            <input type="submit" value="Сохранить"/>
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