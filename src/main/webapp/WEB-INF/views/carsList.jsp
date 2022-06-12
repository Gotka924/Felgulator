<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="headerUser.jsp" %>


<div class="m-4 p-3 width-medium">
    <div class="dashboard-content border-dashed p-3 m-4 view-height">
        <div class="row border-bottom border-3 p-1 m-1">
<%--            <div class="col noPadding">--%>
<%--                <h3 class="color-header text-uppercase">Lista felg</h3>--%>
<%--            </div>--%>
            <div class="col d-flex justify-content-end mb-2 noPadding">
                <a href="/addPlan.jsp" class="btn btn-success rounded-0 pt-0 pb-0 pr-4 pl-4">Dodaj felgę</a>
            </div>
        </div>

        <div class="schedules-content">
            <table class="table border-bottom">
                <thead>
                <tr class="d-flex">
                    <th class="col-1">ID</th>
                    <th class="col-2">Producer</th>
                    <th class="col-2">Name</th>
<%--                    <th class="col-7">Cars</th>--%>

                </tr>
                </thead>

                <c:forEach items="${rims}" var="rim">
                    <tbody class="text-color-lighter">
                    <tr class="d-flex">
                        <td class="col-1">${rim.id}</td>
                        <td class="col-2">${rim.producer.name}</td>
                        <td class="col-2">${rim.name}</td>
<%--                        <td class="col-2">${rim.cars.name}</td>--%>

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