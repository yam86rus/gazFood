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
    <div class="container">
<security:authorize access="isAnonymous()">
    <br>
    Добро пожаловать!
    <br>
    <br>
    Для начала работы необходимо, авторизироваться!
    <br>
    <br>
    <a href="<c:url value="/login"/>">Войти</a>
</security:authorize>

        <security:authorize access="hasAnyRole('ROLE_SECRETARY')">
            <h6>
                Для Вас доступно полное редактирование раздела "Сотрудники".
                <br>
                <br>
                Доступны операции по созданию, просмотру, редактированию и удалению сотрудников.
                <br>
                <br>
                Внимание!
                Удаленные данные в разделе "Сотрудники" - восcтановить нельзя.
                <br>
                Будьте внимательнее!
            </h6>
        </security:authorize>
        <security:authorize access="hasAnyRole('ROLE_ADMIN')">
            <h6>
                Привет, Админ!!
                <br>
                <br>
                Для тебя доступны: чтение, создание, изменение информации во всех таблицах.
                <br>
                Недоступны операции - операции удаления. Данный доступ предоставлен пользователю с ролью "Суперадмин"
            </h6>
        </security:authorize>
        <security:authorize access="hasAnyRole('ROLE_SUPERADMIN')">
            <h6>
                Привет, Суперадмин!!
                <br>
                <br>
                для тебя открыты все операции со всеми существующими таблицами.
                <br>
                Внимание!!
                <br>
                Удаленние данных из существующий таблиц - процесс необратимый.
                Будь осторожен.
            </h6>
        </security:authorize>



    </div>
        <%--Подключаем footer--%>
        <jsp:include page="footer.jsp"/>
    <%--<blockquote>--%>
    <%--    <p>Каждый живой, каждый настоящий — вселенски, безобразно одинок.--%>
    <%--        Только косоротая чернь бывает «вместе».</p>--%>
    <%--</blockquote>--%>

</div>
</body>
</html>
