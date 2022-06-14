<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="headerUser.jsp" %>


<%--<div class="m-4 p-3 width-medium">--%>
<%--    <div class="dashboard-content border-dashed p-3 m-4 view-height">--%>


<html>
<head>
    <title>Pokaż szczegóły felgi</title>
</head>
<body>
<div class="m-4 p-3 width-medium">
    <div class="dashboard-content border-dashed p-3 m-4 view-height">
        <div class="col d-flex justify-content-end mb-2 noPadding">
            <a href="/rim/list" class="btn btn-success rounded-0 pt-0 pb-0 pr-4 pl-4">Wróć do strony głównej</a>
        </div>

<table><tr><td>
<h1>Szczegóły felgi</h1>
<br>
<br>
<br>
<c:forEach items="${rims}" var="rim">
    <p><strong>Nazwa: </strong>${rim.name}</p>
    <p><strong>Szerokość: </strong>${rim.width}</p>
    <p><strong>ET: </strong>${rim.et}</p>
    <p><strong>Średnica: </strong>${rim.avg}</p>
    <p><strong>Srednica osadzenia śrub: </strong>${rim.boltPattern}</p>
    <p><strong>DC: </strong>${rim.centreBore}</p>
    <p><strong>Ilość śrub: </strong>${rim.boltsNumber}</p>
    <p><strong>Producent: </strong>${rim.producer.name}</p>
</td>
    <td>
        <div style="margin-left: 330px">
            <img src="/images/${rim.pic}" width="80%" height="80%">
        </div>

    </td>
</tr>
</table>

</c:forEach>
    </div>
</div>


</body>
</html>
<%@ include file="footer.jsp" %>