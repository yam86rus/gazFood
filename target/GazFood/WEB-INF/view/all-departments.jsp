<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Максим
  Date: 02.03.2021
  Time: 12:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Департаменты</title>
    <link rel="stylesheet" href="css/materialize.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%--Подключаем header--%>
<jsp:include page="header.jsp"/>
<h2>Департаменты: ${allDeprts.size()} шт.</h2>
<input class="waves-effect waves-light btn-small" type="button" value="Добавить"
       onclick="window.location.href = 'addNewDepartment'"/>
<table>
    <tr>
        <th>Департамент</th>
    </tr>
    <c:forEach var="deps" items="${allDeprts}">

        <c:url var="updateButton" value="/updateDepartment">
            <c:param name="departmentId" value="${deps.id}"/>
        </c:url>
        <c:url var="deleteButton" value="/deleteDepartment">
            <c:param name="departmentId" value="${deps.id}"/>
        </c:url>

        <%--        <c:url var="deleteButton" value="/deleteDepartment">--%>
        <%--            <c:param name="cassaId" value="${items.id}"/>--%>
        <%--        </c:url>--%>
        <tr>
            <td>${deps.department}</td>
            <td>
                <input class="waves-effect waves-light btn-small" type="button" value="Изменить"
                       onclick="window.location.href= '${updateButton}'"/>
                <input class="waves-effect red lighten-2 btn-small" type="button" value="Удалить"
                       onclick="window.location.href= '${deleteButton}'"/></td>
        </tr>
    </c:forEach>
</table>
<br>

</body>
</html>
