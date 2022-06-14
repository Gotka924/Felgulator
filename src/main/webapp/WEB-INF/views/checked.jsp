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
            <div>
            <label ><strong>Oś przednia:</strong></label>
                <div>
                    <link rel="preload" href="ok-icon.svg" as="image">
                    ${front}
                    <br>
                </div>
                Maksymalna grubość dystansu: <b>${xp} mm</b>
                <br>
                </div>
            <div style="margin-left: 30px">
            <b>          Oś tylna:</b>
            <div>
                    ${rear}
            <br>
            </div>
                Maksymalna grubość dystansu:<b> ${xt} mm</b>
            <br>
            </div>
        </div>
            <div>
                <img src="/images/dystans.png">
            </div>

    </div>
    <div>
       Czy chcesz zachować dane felgi w bazie?
        <a href="/rim/add/"> <b> Tak </b>
        <a href="/"> <b> Nie</b></a>
    </div>
    <br>
    <br>
    <br>
    <br>

</div>

</body>
</html>

<%@ include file="footer.jsp"%>

