<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head class="h-100">
    <title>Диплом представителя</title>
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
                        <a class="nav-link active" href="representative">Диплом</a>
                        <a class="nav-link " href="lawyer_certificate">Адвокатское удостоверение</a>
                        <a class="nav-link " href="power_attorney">Доверенности</a>

                    </div>


                </div>
                <div class="col-10">

                    <form class="form-style-9 ml-3 mr-3">
                        <h3> Диплом </h3>

                        <div class="row mt-4">
                            <div class="col-6 align-left">
                                <label for="number"><span>Номер</span>
                                    <input type="text" required id="number" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>
                            <div class="col-6">
                                <label for="series"><span>Серия</span>
                                    <input type="text" required id="series" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                        </div>

                        <div class="row mt-4">
                            <div class="col-8 align-left">
                                <label for="univer"><span>Наименование учебного заведения</span>
                                    <input type="text" required id="univer" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                        </div>

                        <div class="row mt-4">
                            <div class="col-8 align-left">
                                <label for="direction"><span>Направление подготовки</span>
                                    <input type="text" required id="direction" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                        </div>

                        <div class="row mt-4">
                            <div class="col-8 align-left">
                                <label for="date"><span>Дата выдачи</span>
                                    <input type="date" required id="date" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                        </div>

                        <div class="row mt-4">
                            <div class="col-6">
                                <button class="button btn-info" value="">Прикрепить файл</button>
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