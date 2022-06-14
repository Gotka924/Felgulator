<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="headerUser.jsp" %>
<html>
<head>
    <title>Dodaj felgę do bazy</title>
</head>
<body>
<div class="m-4 p-4 width-medium">
    <h3 class="color-header">Podaj dane felgi, którą chcesz dodać</h3>
</div>
<div class="m-4 p-4 width-medium">
    <div class="dashboard-header m-4">
        <div class="dashboard-menu">

            <form:form method="post" modelAttribute="rim">
                Podaj nazwę felgi:
                <form:input path="name"/>
                <form:errors path="name"/>

                Podaj szerokość felgi:
                <form:input path="width"/>
                <form:errors path="width"/>
                <br>
                Podaj odsadzenie felgi - ET:
                <form:input path="et"/>
                <form:errors path="et"/>
                <br>
                Podaj średnicę felgi:
                <form:input path="avg"/>
                <form:errors path="avg"/>
                <br>
                Podaj średnicę osadzenia śrub:
                <form:input path="boltPattern"/>
                <form:errors path="boltPattern"/>
                <br>
                Podaj rozmiar otworu centrującego DC:
                <form:input path="centreBore"/>
                <form:errors path="centreBore"/>
                <br>
                Podaj ilość śrub:
                <form:input path="boltsNumber"/>
                <form:errors path="boltsNumber"/>
                <br>
                <form:select path="cars" multiple="false">
                    <form:options items="${cars}"  itemValue="id" itemLabel="name"/>
                </form:select> <form:errors path="cars" />
                <select name="aaa">

                    <c:forEach items="${producer}" var="info">
                        <option value="${info.id}">${info.name}</option>
                    </c:forEach>

                </select>

                <br>
                <br>
                <input type="submit" value="Dodaj felgę do bazy">

            </form:form>
        </div>
    </div>
</div>

</body>
</html>

<%@ include file="footer.jsp"%>