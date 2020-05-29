<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head class="h-100">
    <title>Ошибка</title>

    <%@include file="templates/meta.jspf"%>

</head>

<body class="h-100 mb-5">


<%@include file="templates/header.jspf" %>


<main role="main" class="container h-100">

    <div style="margin-top: 20%">


        <div class="ml-3 mt-5 mr-3">
            <div class="row mt-5">


                <div class="col-3"></div>

                <div class="mt-5">
                    <h3 class=""> Упс... произошла ошибка </h3>
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