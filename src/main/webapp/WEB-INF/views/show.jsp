<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Pokaż szczegóły felgi</title>
</head>
<body>
<table border="1">
    <thead>
    <th>Nazwa</th>
    <th>Szerokość</th>
    <th>ET</th>
    <th>Średnica</th>
    <th>Srednica osadzenia śrub</th>
    <th>DC</th>
    <th>Ilość śrub</th>
    <th>Producent</th>
    </thead>
    <tbody>
    <tr>
        <td><c:out value="${rim.name}"/></td>
        <td><c:out value="${rim.width}"/></td>
        <td><c:out value="${rim.et}"/></td>
        <td><c:out value="${rim.avg}"/></td>
        <td><c:out value="${rim.boltPattern}"/></td>
        <td><c:out value="${rim.centreBore}"/></td>
        <td><c:out value="${rim.boltsNumber}"/></td>
        <td><c:out value="${rim.producer.name}"/></td>
    </tr>
    </tbody>
</table>

</body>
</html>
