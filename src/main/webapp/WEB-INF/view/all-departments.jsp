<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Департаменты</title>
    <link rel="stylesheet" href="css/materialize.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="page">
    <%--Подключаем header--%>
    <jsp:include page="header.jsp"/>
    <div class="container">
        <h2>Департаменты: ${allDeprts.size()} шт.</h2>
        <input class="waves-effect waves-light btn-small" type="button" value="Добавить"
               onclick="window.location.href = 'addNewDepartment'"/>
        <table class="highlight">
            <tr>
                <th>Департамент</th>
                <th>Операции</th>
            </tr>
            <c:forEach var="deps" items="${allDeprts}">

                <c:url var="updateButton" value="/updateDepartment">
                    <c:param name="departmentId" value="${deps.id}"/>
                </c:url>

                <c:url var="deleteButton" value="/deleteDepartment">
                    <c:param name="departmentId" value="${deps.id}"/>
                </c:url>

                <tr>
                    <td>${deps.department}</td>
                    <td>
                        <input class="waves-effect waves-light btn-small" type="button" value="Изменить"
                               onclick="window.location.href= '${updateButton}'"/>

                        <security:authorize access="hasAnyRole('ROLE_SUPERADMIN')">
                            <input class="waves-effect red lighten-2 btn-small" type="button" value="Удалить"
                                   onclick="window.location.href= '${deleteButton}'"/>
                        </security:authorize>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <%--Подключаем footer--%>
    <jsp:include page="footer.jsp"/>
</div>
</body>
</html>
