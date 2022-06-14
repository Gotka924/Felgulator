<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="headerUser.jsp" %>


<section class="dashboard-section">
    <div class="row dashboard-nowrap">
        <ul class="nav flex-column long-bg">
            <%--            <li class="nav-item">--%>
            <%--                <a class="nav-link" href="/rim/dashboard/">--%>
            <%--                    <span>Pulpit</span>--%>
            <%--                    <i class="fas fa-angle-right"></i>--%>
            <%--                </a>--%>
            <%--            </li>--%>
            <li class="nav-item">
                <a class="nav-link" href="/rim/list/">
                    <span>Lista felg</span>
                    <i class="fas fa-angle-right"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/rim/find/{name}">
                    <span>Wyszukaj felgę</span>
                    <i class="fas fa-angle-right"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/rim/carsList">
                    <span>Modele aut z dopasowanymi felgami</span>
                    <i class="fas fa-angle-right"></i>
                </a>
            </li>

        </ul>

        <div class="m-4 p-4 width-medium">
            <div class="dashboard-header m-4">
                <div class="dashboard-menu">

                    <div>
                        <img src="/images/felga_parametry.gif" width="53%" height="53%">
                    </div>
                    <div class="menu-item border-dashed">
                        <a href="/rim/search/">
                            <i class="far fa-plus-square icon-plus-square"></i>
                            <span class="title">Sprawdź felgę</span>
                        </a>
                    </div>
                    <div class="menu-item border-dashed">
                        <a href="/rim/list/">
                            <i class="far fa-plus-square icon-plus-square"></i>
                            <span class="title">Przejrzyj bazę</span>
                        </a>
                    </div>

                </div>

                <div class="dashboard-alerts">
                    <div class="alert-item alert-info">
                        <i class="fas icon-circle fa-info-circle"></i>
                        <%--                              przekazanie attributeName z RimController--%>
                        <span class="font-weight-bold">Liczba dodanych felg do bazy: ${RimCount}</span>

                    </div>

                </div>
            </div>
            <div class="m-4 p-4 border-dashed">
                <h2 class="dashboard-content-title">

                    <span>Ostatnio dodane felgi:</span>

                </h2>

                <div class="schedules-content">
                    <table class="table border-bottom">
                        <thead>
                        <tr class="d-flex">
                            <th class="col-1">ID</th>
                            <th class="col-2">Producer</th>
                            <th class="col-2">Name</th>
                            <th class="col-7">Description</th>
                        </tr>
                        </thead>

                        <c:forEach items="${rims}" var="rim" end="2" >
                            <tbody class="text-color-lighter">
                            <tr class="d-flex">
                                <td class="col-1">${rim.id}</td>

                                <td class="col-2">${rim.producer.name}</td>
                                <td class="col-2">${rim.name}</td>
                                <td class="col-7">${rim.width}x${rim.avg} ${rim.boltPattern}x${rim.boltsNumber} ET${rim.et} DC${rim.centreBore}</td>
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