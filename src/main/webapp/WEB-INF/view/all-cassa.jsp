<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Максим
  Date: 24.02.2021
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/materialize.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<%--Подключаем header--%>
<jsp:include page="header.jsp"/>

<h2>Кассовые узлы: ${allCassa.size()} шт.</h2>
<input class="waves-effect waves-light btn-small" type="button" value="Добавить"
       onclick="window.location.href = 'addNewCassa'"/>
<table class="highlight myTable">
    <tr>
        <th>Название кассы</th>
        <th>prefix</th>
        <th>ammy</th>
        <th>Имя компьютера</th>
        <th>Адрес установки</th>
        <th>Обновление</th>
        <th>Плановая дата обновления</th>
        <th>Операции</th>
    </tr>
    <c:forEach var="items" items="${allCassa}">
        <c:url var="updateButton" value="/updateInfo">
            <c:param name="cassaId" value="${items.id}"/>
        </c:url>

        <c:url var="deleteButton" value="/deleteCassa">
            <c:param name="cassaId" value="${items.id}"/>
        </c:url>
        <tr>
            <td>${items.cassaName}</td>
            <td>${items.prefix}</td>
            <td>${items.ammy}</td>
            <td>${items.computerName}</td>
            <td>${items.cassaAdres}</td>
            <td>${items.simNumber}</td>
            <td>${items.planUpdate}</td>
            <td>
                <input class="waves-effect waves-light btn-small" type="button" value="Изменить" onclick="window.location.href= '${updateButton}'"/>
<%--                <input class="waves-effect red lighten-2 btn-small" type="button" value="Удалить" onclick="window.location.href= '${deleteButton}'"/>--%>
            </td>
        </tr>

    </c:forEach>
</table>
<br>
<input class="waves-effect waves-light btn-small" type="button" value="Добавить"
        onclick="window.location.href = 'addNewCassa'"/>
<br>

</body>

<script src="js/all-cassa.js"></script>
</html>
