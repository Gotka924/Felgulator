<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="headerUser.jsp" %>
<html>
<head>
    <title>Dodaj felgę</title>
</head>

<body>

<div class="m-4 p-4 width-medium">
    <h3 class="color-header">Podaj dane felgi, którą chcesz sprawdzić</h3>
</div>

<div class="m-4 p-4 width-medium">
    <div class="dashboard-header m-4">
        <div class="dashboard-menu">

<form:form method="post" modelAttribute="rims">
    Podaj szerokość felgi[cale]:
    <form:input path="width"/>
    <form:errors path="width"/>
    <br>
    <br>
    Podaj odsadzenie felgi - ET[mm]:
    <form:input path="et"/>
    <form:errors path="et"/>
    <br>
    <br>
    <form:select path="cars" multiple="false">
        <form:options items="${cars}"  itemValue="id" itemLabel="name"/>
    </form:select> <form:errors path="cars" />
    <br>
    <br>
    <br>
    <br>

    <input type="submit" value="Sprawdź felgę">
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
</form:form>
        </div>
    </div>
</div>

</body>
</html>

<%@ include file="footer.jsp"%>

