<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html class="h-100">
<head class="h-100">
    <title>О проекте</title>
    <meta charset="utf-8">
    <%@include file="templates/meta.jspf"%>

</head>

<body class="h-100">


<%@include file="templates/header.jspf" %>

<main role="main" class="h-100" style="margin-top: 10%">

    <div class="mt-5">


        <div class="ml-3 mr-3">
            <div class="row">


                <div class="col-7 ml-5">

                    <p class="lead">
                        Робот-юрист автоматически составит для Вас процессуальные документы на основании описания вашей ситуации.
                    </p>
                    <br>
                    <p class="lead">
                        Зарегистрируйтесь и пройдите авторизацию, чтобы получить возможность воспользоваться сервисом.
                    </p>


                </div>
                <div class="col-4 mr-5">


                    <img src="<c:url value="/images/robot.jpg"/>"
                         class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto "
                         width="500" height="500" alt="robot-lawyer">

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