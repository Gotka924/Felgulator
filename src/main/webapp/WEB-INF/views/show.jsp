<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="headerUser.jsp" %>


<div class="m-4 p-3 width-medium">
    <div class="dashboard-content border-dashed p-3 m-4 view-height">


<html>
<head>
    <title>Pokaż szczegóły felgi</title>
</head>
<body>

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
        <img src="/images/felgi.jpg">
        </div>

    </td>
</tr>
</table>

</c:forEach>





<%--<table>--%>
<%--    <thead>--%>
<%--    <th>Nazwa</th>--%>
<%--    <th>Szerokość</th>--%>
<%--    <th>ET</th>--%>
<%--    <th>Średnica</th>--%>
<%--    <th>Srednica osadzenia śrub</th>--%>
<%--    <th>DC</th>--%>
<%--    <th>Ilość śrub</th>--%>
<%--    <th>Producent</th>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <tr>--%>
<%--<c:forEach items="${rims}" var="rim">--%>
<%--        <td><c:out value="${rim.name}"/></td>--%>
<%--        <td><c:out value="${rim.width}"/></td>--%>
<%--        <td><c:out value="${rim.et}"/></td>--%>
<%--        <td><c:out value="${rim.avg}"/></td>--%>
<%--        <td><c:out value="${rim.boltPattern}"/></td>--%>
<%--        <td><c:out value="${rim.centreBore}"/></td>--%>
<%--        <td><c:out value="${rim.boltsNumber}"/></td>--%>
<%--        <td><c:out value="${rim.producer.name}"/></td>--%>
<%--</c:forEach>--%>
<%--    </tr>--%>
<%--    </tbody>--%>
<%--</table>--%>

</body>
</html>
