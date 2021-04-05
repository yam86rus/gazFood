<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <%@ page isELIgnored="false" %>
    <title>Сотрудники</title>
    <link rel="stylesheet" href="css/materialize.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="page">
    <%--Подключаем header--%>
    <jsp:include page="header.jsp"/>


    <div class="container">
        <h2>Сотрудники: ${allEmps.size()} шт.</h2>
        <input class="waves-effect waves-light btn-small" type="button" value="Добавить"
               onclick="window.location.href = 'addNewEmployee'"/>
        <table class="highlight">
            <tr>
                <th>Фамилия</th>
                <th>Имя</th>
                <th>Отчество</th>
                <th>Должность</th>
                <th>Отдел</th>
                <th>Город</th>
                <th>Телефон газовый</th>
                <th>Телефон сотовый</th>
                <th>e-mail</th>
                <th>Операции</th>
            </tr>
            <c:forEach var="emp" items="${allEmps}">
                <c:url var="updateButton" value="/updateEmployee">
                    <c:param name="empId" value="${emp.id}"/>
                </c:url>

                <c:url var="deleteButton" value="/deleteEmployee">
                    <c:param name="empId" value="${emp.id}"/>
                </c:url>

                <tr>
                    <td>${emp.surname}</td>
                    <td>${emp.name}</td>
                    <td>${emp.patronymic}</td>
                    <td>${emp.position}</td>
                    <td>${emp.department}</td>
                    <td>${emp.city}</td>
                    <td>${emp.phoneGaz}</td>
                    <td>${emp.phoneMobile}</td>
                    <td>${emp.email}</td>
                        <%--            <security:authorize access="hasAnyRole('SECRETARY','ADMINISTRATOR')">--%>
                    <td>
                        <input class="waves-effect waves-light btn-small" type="button" value="Изменить" onclick="window.location.href='${updateButton}'"/>
                            <security:authorize access="hasAnyRole('ROLE_SECRETARY','ROLE_SUPERADMIN')">
                        <input class="waves-effect red lighten-2 btn-small" type="button" value="Удалить" onclick="window.location.href='${deleteButton}'"/>
                            </security:authorize>

                    </td>
                        <%--            </security:authorize>--%>
                </tr>
            </c:forEach>
        </table>

        <%--<security:authorize access="hasAnyRole('SECRETARY','ADMINISTRATOR')">--%>

        <input class="waves-effect waves-light btn-small" type="button" value="Добавить"
               onclick="window.location.href = 'addNewEmployee'"/>
        <%--</security:authorize>--%>
    </div>
</div>
</body>
</html>
