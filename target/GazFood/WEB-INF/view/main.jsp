<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Максим
  Date: 24.02.2021
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/materialize.css">
</head>
<body>


<nav>
    <div class="nav-wrapper blue">
        <a href="<c:url value="/"/>" class="brand-logo">Газпром питание</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="<c:url value="/cassa"/>">Кассовые узлы</a></li>
            <li><a href="#">Сотрудники</a></li>
        </ul>
    </div>
</nav>

<%--<blockquote>--%>
<%--    <p>Каждый живой, каждый настоящий — вселенски, безобразно одинок.--%>
<%--        Только косоротая чернь бывает «вместе».</p>--%>
<%--</blockquote>--%>


</body>
</html>
