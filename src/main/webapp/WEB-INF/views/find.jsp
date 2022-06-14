<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="headerUser.jsp" %>


<div class="m-4 p-3 width-medium">
    <div class="dashboard-content border-dashed p-3 m-4 view-height">
        <div class="row border-bottom border-3 p-1 m-1">
            <div class="col noPadding">
                <h3 class="color-header text-uppercase">Lista felg</h3>
            </div>
            <div class="col d-flex justify-content-end mb-2 noPadding">
                <a href="/" class="btn btn-success rounded-0 pt-0 pb-0 pr-4 pl-4">Wróć do strony głównej</a>
            </div>
        </div>

        <div class="schedules-content">
            <table class="table border-bottom">
                <thead>
                <tr class="d-flex">
                    <th class="col-2">Nazwa</th>
                    <th class="col-2">Producent</th>
                    <th class="col-1">Szerokość</th>
                    <th class="col-1">ET(offset)</th>
                    <th class="col-1">Średnica felgi</th>
                    <th class="col-1">Średnica osadzenia śrub</th>
                    <th class="col-1">Otwór centrujący</th>
                    <th class="col-1">Ilość śrub</th>

                </tr>
                </thead>

                <c:forEach items="${rims}" var="rim">
                    <tbody class="text-color-lighter">
                    <tr class="d-flex">
                        <td class="col-2">${rim.name}</td>
                        <td class="col-2">${rim.producer.name}</td>
                        <td class="col-1">${rim.width}</td>
                        <td class="col-1">${rim.et}</td>
                        <td class="col-1">${rim.avg}</td>
                        <td class="col-1">${rim.boltPattern}</td>
                        <td class="col-1">${rim.centreBore}</td>
                        <td class="col-1">${rim.boltsNumber}</td>

                        <td class="col-2">
                            <a href="<c:out value="/rim/show/${rim.id}"/>">Pokaż szczegóły felgi</a>
                        </td>

                    </tr>
                    </tbody>
                </c:forEach>

            </table>
        </div>
    </div>
</div>
</div>
</section>
<%@ include file="footer.jsp"%>

