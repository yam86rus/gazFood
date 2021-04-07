<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <%@ page isELIgnored="false" %>
    <title>Title</title>
    <link rel="stylesheet" href="css/materialize.css">
</head>
<body>
<div class="container">
    <h2>Информация по вакансии</h2>
    <br>
    <form:form action="/saveVacancy" modelAttribute="vacancy">
        <form:hidden path="id"/>

        Название вакансии <form:input path="vacancy"/>
        <br>
        <br>
        Описание <form:input path="description"/>
        <br>
        <br>
        Требования <form:input path="requirements"/>
        <br>
        <br>
        Условия <form:input path="conditions"/>
        <br>
        <br>
        Контакты <form:input path="contacts"/>

        <input class="waves-effect waves-light btn-small" type="submit" value="ОК">
        <input class="waves-effect yellow black-text btn-small" type="button" value="Отмена" onclick="window.location.href = '/vacancies'"/>

    </form:form>
</div>
</body>
</html>
