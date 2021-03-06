<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head class="h-100">
    <title>Данные о предпринимательской деятельности</title>
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
                        <h3> Данные о предпринимательской деятельности </h3>

                        <div class="row mt-4">
                            <div class="col-8 align-left">
                                <label for="ogrnip"><span>ОГРНИП</span>
                                    <input type="text" required id="ogrnip" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                        </div>

                        <div class="row mt-4">
                            <div class="col-8 align-left">
                                <label for="register-address"><span>Место регистрации</span>
                                    <input type="text" required id="register-address" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                        </div>

                        <div class="row mt-4">
                            <div class="col-8 align-left">
                                <label for="register-date"><span>Дата регистрации</span>
                                    <input type="text" required id="register-date" name=""
                                           class="field-style field-split align-left"
                                           placeholder=""/>
                                </label>
                            </div>

                        </div>


                        <div class="row mt-4">
                            <div class="col-6">
                                <button class="button btn-info" value="">Прикрепить выписку из ЕГРИП</button>
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


<footer class="sticky-footer">
    <div class="container">
        <span>&copy; Robot-lawyer 2019- 2020</span>
    </div>
</footer>

</body>
</html>