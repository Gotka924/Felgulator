<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="headerUser.jsp" %>
<html>
<head>
    <title>Wyszukaj felgę</title>
</head>

<body>

<div class="m-4 p-4 width-medium">
    <h3 class="color-header">Podaj nazwę felgi, którą chcesz wyszukać</h3>
</div>

<div class="m-4 p-4 width-medium">
    <div class="dashboard-header m-4">
        <div class="dashboard-menu">


                Wybierz felgę:

                <form:select path="rims" multiple="false">
                    <form:options items="${rims}"  itemValue="id" itemLabel="name"/>
                </form:select> <form:errors path="rims" />
                <br>
                <br>
                <br>
                <br>
            <input type="submit" value="Wyszukaj">
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

        </div>
    </div>
</div>

</body>
</html>

<%@ include file="footer.jsp"%>