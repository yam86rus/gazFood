<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <%@ page isELIgnored="false" %>
    <title>Вакансии</title>
    <link rel="stylesheet" href="css/materialize.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="page">
    <%--Подключаем header--%>
    <jsp:include page="header.jsp"/>
    <div class="container">
        <h2>Вакансии ${allVacancies.size()} шт.</h2>
        <table class="highlight">
            <tr>
                <th>Название вакансии</th>
                <th>Обязаности</th>
                <th>Требования</th>
                <th>Условия</th>
                <th>Контакты</th>
                <th>Операции</th>
            </tr>
            <c:forEach var="vacancy" items="${allVacancies}">
                <c:url var="updateButton" value="/updateVacancy">
                    <c:param name="vacancyId" value="${vacancy.id}"/>
                </c:url>

                <c:url var="deleteButton" value="/deleteVacancy">
                    <c:param name="vacancyId" value="${vacancy.id}"/>
                </c:url>
                <tr>
                    <td>${vacancy.vacancy}</td>
                    <td>${vacancy.description}</td>
                    <td>${vacancy.requirements}</td>
                    <td>${vacancy.conditions}</td>
                    <td>${vacancy.contacts}</td>
                    <td>
                        <input class="waves-effect waves-light btn-small" type="button" value="Изменить" onclick="window.location.href='${updateButton}'"/>
                        <input class="waves-effect red lighten-2 btn-small" type="button" value="Удалить" onclick="window.location.href='${deleteButton}'"/>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <input class="waves-effect waves-light btn-small" type="button" value="Добавить"
               onclick="window.location.href = 'addNewVacancy'">
    </div>
</div>
</body>
</html>
