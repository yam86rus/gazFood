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
</head>
<body>
<h2>Кассовые узлы</h2>
<table>
    <tr>
        <th>Название кассы</th>
        <th>prefix</th>
        <th>ammy</th>
        <th>Имя компьютера</th>
        <th>Адрес установки</th>
        <th>Номер телефона</th>
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
            <td>
                <input type="button" value="Update" onclick="window.location.href= '${updateButton}'"/>
                <input type="button" value="Delete" onclick="window.location.href= '${deleteButton}'"/>
            </td>
        </tr>

    </c:forEach>
</table>
<input type="button" value="Добавить"
        onclick="window.location.href = '<c:url value="/cassa"/>'"/>
</body>
</html>
