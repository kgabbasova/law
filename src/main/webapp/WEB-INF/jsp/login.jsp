<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html  class="h-100">
<head >
    <title>Авторизация</title>

    <%@include file="templates/meta.jspf"%>

</head>

<body>


<%@include file="templates/header.jspf" %>


<main role="main" class="h-100">

    <div class="mt-5">


        <div class="ml-3 mr-3">
            <div class="row">


                <div class="col-3"></div>

                <div class="col-6 center-block">

                    <form class="form-style-9 ml-3 mr-3" action="<c:url value="/login"/>" method="post">
                        <h3 class="text-center"> Авторизация </h3>


                        <div class="row mt-4">
                            <div class="col-12 align-left">
                                <label for="username"><span>Логин (email)</span>
                                    <input type="email"  id="username" autofocus name="username"
                                           class="field-style field-split align-left"
                                           placeholder=""/>
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


                        <c:if test="${param.error != null}">
                            <p class="message danger text-danger text-center font-weight-bold">
                                Неверный email или пароль!
                            </p>
                        </c:if>

                        <div class="row mt-3">

                            <div class="col-7 align-left">

                                <label for ="remember-me" class="checkbox-inline"> Запомнить меня!
                                    <input type="checkbox" class="checkbox" name="remember-me" id="remember-me">
                                </label>
                            </div>

                        </div>



                        <div class="mt-4 text-center">
                            <input type="submit" class="dev-save" value="Войти"/>
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