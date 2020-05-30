<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head class="h-100">
    <title>Профиль. Документы</title>
    <meta charset="utf-8">
    <%@include file="templates/meta.jspf"%>
    <script src="<c:url value="/js/documents.js"/>"></script>


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
                        <fieldset class="dev-passport">
                            <legend>Паспортные данные</legend>

                            <input type="hidden" value="${passport.id}" name="id">

                            <input type="hidden" name="owner" object-field="id" value="${owner.id}">

                            <div class="row mt-4">
                                <div class="col-5 align-left">
                                    <label for="seria"><span>Серия</span>
                                        <input type="text"  id="seria" name="series" value="${passport.series}"
                                               class="field-style field-split align-left" data-mask="+0000"
                                               placeholder=""/>
                                    </label>
                                </div>
                                <div class="col-7">
                                    <label for="number"><span>Номер</span>
                                        <input type="text"  id="number" name="number" value="${passport.number}"
                                               class="field-style field-split align-left"
                                               placeholder=""/>
                                    </label>
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-5 align-left">
                                    <label for="issueDate"><span>Дата выдачи</span>
                                        <input type="date"  id="issueDate" name="issueDate" value="${passport.issueDate}"
                                               class="date_with_calendar field-style field-split align-left"
                                               placeholder=""/>
                                    </label>
                                </div>
                                <div class="col-7">
                                    <label for="code"><span>Код подразделения</span>
                                        <input type="text"  id="code" name="structureCode" value="${passport.structureCode}"
                                               class="field-style field-split align-left"
                                               placeholder=""/>
                                    </label>
                                </div>
                            </div>

                            <div class="row mt-4">
                                <div class="col-12">
                                    <label for="issuedBy"><span>Кем выдан</span>
                                        <input type="text"  id="issuedBy" name="issuedBy" value="${passport.issuedBy}"
                                               class="field-style field-split align-left"
                                               placeholder="кем выдан"/>
                                    </label>
                                </div>
                            </div>
<%--                            <div class="row mt-4">--%>
<%--                                <div>--%>
<%--                                    <input type="file" value="Прикрепить файл">--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="mt-4">
                                <input type="submit" class="dev-save-passport" value="Сохранить"/>
                            </div>

                        </fieldset>

                    </form>

                    <form class="form-style-9 ml-3 mr-3">
                        <fieldset class="dev-snils">
                            <legend>СНИЛС</legend>
                            <input type="hidden" name="id" value="${snils.id}">
                            <input type="hidden" name="owner" object-field="id" value="${owner.id}">

                            <div class="row mt-4">
                                <div class="col-8 align-left">
                                    <label for="number-snils"><span>Номер</span>
                                        <input type="text"  id="number-snils" name="number" value="${snils.number}"
                                               class="field-style field-split align-left"
                                               placeholder=""/>
                                    </label>
                                </div>
                            </div>

<%--                            <div class="row mt-4">--%>
<%--                                <div>--%>
<%--                                    <input type="file" value="Прикрепить файл">--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="mt-4">
                                <input type="submit" value="Сохранить" class="dev-save-snils"/>
                            </div>

                        </fieldset>

                    </form>

                    <form class="form-style-9 ml-3 mr-3">
                        <fieldset class="dev-inn">
                            <legend>ИНН</legend>
                            <input type="hidden" name="id" value="${inn.id}">
                            <input type="hidden" name="owner" object-field="id" value="${owner.id}">
                            <div class="row mt-4">
                                <div class="col-8 align-left">
                                    <label for="number-inn"><span>Номер</span>
                                        <input type="text"  id="number-inn" name="number" value="${inn.number}"
                                               class="field-style field-split align-left"
                                               placeholder=""/>
                                    </label>
                                </div>
                            </div>

<%--                            <div class="row mt-4">--%>
<%--                                <div>--%>
<%--                                    <input type="file" value="Прикрепить файл">--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="mt-4">
                                <input type="submit" value="Сохранить" class="dev-save-inn"/>
                            </div>

                        </fieldset>

                    </form>

                    <form class="form-style-9 ml-3 mr-3">
                        <fieldset class="dev-drive">
                            <legend>Водительское удостоверение</legend>
                            <input type="hidden" name="id" value="${drive.id}">
                            <input type="hidden" name="owner" object-field="id" value="${owner.id}">

                            <div class="row mt-4">
                                <div class="col-5 align-left">
                                    <label for="seria-drive"><span>Серия</span>
                                        <input type="text"  id="seria-drive" name="series" value="${drive.series}"
                                               class="field-style field-split align-left"
                                               placeholder=""/>
                                    </label>
                                </div>
                                <div class="col-7">
                                    <label for="number-drive"><span>Номер</span>
                                        <input type="text"  id="number-drive" name="number" value="${drive.number}"
                                               class="field-style field-split align-left"
                                               placeholder=""/>
                                    </label>
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-5 align-left">
                                    <label for="issue-date-drive"><span>Дата выдачи</span>
                                        <input type="date"  id="issue-date-drive" name="issueDate" value="${drive.issueDate}"
                                               class="date_with_calendar field-style field-split align-left"
                                               placeholder="01.06.2019"/>
                                    </label>
                                </div>
                                <div class="col-7">
                                    <label for="valid-until-drive"><span>Действительно до</span>
                                        <input type="date"  id="valid-until-drive" name="validUntilDate" value="${drive.validUntilDate}"
                                               class="field-style field-split align-left"/>
                                    </label>
                                </div>
                            </div>


<%--                            <div class="row mt-4">--%>
<%--                                <div>--%>
<%--                                    <input type="file" value="Прикрепить файл">--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="mt-4">
                                <input type="submit" value="Сохранить" class="dev-save-drive"/>
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