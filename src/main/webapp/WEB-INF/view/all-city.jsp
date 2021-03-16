<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Максим
  Date: 03.03.2021
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Города</title>
    <link rel="stylesheet" href="css/materialize.css">
</head>
<body>
<div class="page">
<%--Подключаем header--%>
<jsp:include page="header.jsp"/>
<div class="container">
    <h2>Города: ${allCities.size()} шт.</h2>
    <table>
        <tr>
            <th>Название города</th>
        </tr>
        <c:forEach var="cities" items="${allCities}">
            <tr>
                <td>
                        ${cities.city}
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
