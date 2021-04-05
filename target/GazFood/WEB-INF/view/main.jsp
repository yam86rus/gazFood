<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/materialize.css">
    <link rel="stylesheet" href="css/main.css.css">
</head>
<body>
<div class="page">
    <%--Подключаем header--%>
    <jsp:include page="header.jsp"/>
        <h2>Настрока корпоративного сайта</h2>


    <security:authorize access="hasAnyRole('ROLE_ADMIN')">
        <h1>
            Only for admin
        </h1>
    </security:authorize>
    <security:authorize access="hasAnyRole('ROLE_HR','ROLE_ADMIN')">
        <h1>
            Only for hr
        </h1>
    </security:authorize>
    <security:authorize access="hasAnyRole('ROLE_USER','ROLE_ADMIN')">
        <h1>
            Only for user
        </h1>
    </security:authorize>


    <%--Подключаем footer--%>
    <jsp:include page="footer.jsp"/>
</div>

<%--<blockquote>--%>
<%--    <p>Каждый живой, каждый настоящий — вселенски, безобразно одинок.--%>
<%--        Только косоротая чернь бывает «вместе».</p>--%>
<%--</blockquote>--%>


</body>
</html>
