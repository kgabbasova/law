<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head class="h-100">
    <title>Данные юридического лица</title>
    <%@include file="templates/meta.jspf"%>



</head>

<body class="h-100">


<%@include file="templates/header.jspf" %>


<main role="main" class="h-100">

    <div class="mt-5">


        <div class="ml-3 mr-3">
            <div class="row">


                <div class="col-2">

                </div>
                <div class="col-10">

                    <form class="form-style-9 ml-3 mr-3">

                        <h3> Данные юридического лица </h3>


                        <div class="row mt-4">
                            <div class="col-8 align-left">
                                <label for="form"><span>Оргагизационно-правовая форма</span>
                                    <select type="text" required id="form" name=""
                                            class="field-style field-split align-left"
                                            placeholder="">
                                        <option> Полное товарищество</option>
                                        <option> Товарищество на вере</option>
                                        <option> Общество с ограниченной ответственностью</option>
                                        <option> Публичное акционерное общество</option>
                                        <option> Непубличное акционерное общество</option>
                                        <option> Производственный кооператив</option>
                                        <option> Крестьянское (фермерское) хозяйство</option>
                                        <option> Хозяйственное партнерство</option>
                                        <option> Унитарное предприятие</option>
                                        <option> Потребительский кооператив</option>
                                        <option> Общественная организация</option>
                                        <option> Ассоциация (союз),</option>
                                        <option> Товарищество собственников недвижимости</option>
                                        <option> Казачье общество</option>
                                        <option> Автономная некоммерческая организация</option>
                                        <option> Фонд</option>

                                    </select>

                                </label>
                            </div>

                        </div>


                        <div class="row mt-4">
                            <div class="col-8 align-left">
                                <label for="name"><span>Наименование</span>
                                    <input type="text" required id="name" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                        </div>

                        <div class="row mt-4">
                            <div class="col-6 align-left">
                                <label for="ogrn"><span>ОГРН</span>
                                    <input type="text" required id="ogrn" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                            <div class="col-6 align-left">
                                <label for="inn"><span>ИНН</span>
                                    <input type="text" required id="inn" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                        </div>


                        <div class="row mt-4">
                            <div class="col-5 align-left">
                                <label for="address"><span>Адрес местонахождения</span>
                                    <input type="text" required id="address" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                            <div class="col-7 align-left">
                                <label for="legal-address"><span class="w-50">Местонахождение постоянно действующего исполнительного органа (лица, выполняющего его функции)</span>
                                    <input type="text" required id="legal-address" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                        </div>

                        <div class="row mt-4">
                            <div class="col-8 align-left">
                                <label for="registration-date"><span>Дата регистрации</span>
                                    <input type="date" required id="registration-date" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                        </div>


                        <div class="row mt-3">

                            <div class="col-7 align-left">

                                <label for="bankruptcy" class="checkbox-inline">Нахождение в процедуре банкротства
                                    <input type="checkbox" id="bankruptcy" name=""
                                           class="checkbox"
                                           placeholder=""/>
                                </label>
                            </div>

                        </div>

                        <div class="row mt-4">
                            <div class="col-6">
                                <button class="button btn-info" value="">Прикрепить выписку из ЕГРЮЛ</button>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-6">
                                <button class="button btn-info" value="">Прикрепить устав</button>
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