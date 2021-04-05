<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Информация о сотруднике</title>
    <link rel="stylesheet" href="css/materialize.css">
</head>
<body>
<div class="container">
    <h2>Информация о сотруднике</h2>
    <br>
    <form:form action="/saveEmployee" modelAttribute="employee">
        <form:hidden path="id"/>

        Фамилия <form:input path="surname"/>
        <br>
        <br>
        Имя <form:input path="name"/>
        <br>
        <br>
        Отчество <form:input path="patronymic"/>
        <br>
        <br>
        Должность <form:input path="position"/>
        <br>
        <br>
        Подразделение <form:input path="department"/>
        <br>
        <br>
        Город <form:input path="city"/>
        <br>
        <br>
        Телефон газовый <form:input path="phoneGaz"/>
        <br>
        <br>
        Телефон мобильный <form:input path="phoneMobile"/>
        <br>
        <br>
        e-mail <form:input path="email"/>
        <br>
        <br>
        <input class="waves-effect waves-light btn-small" type="submit" value="ОК">
        <input class="waves-effect yellow black-text btn-small" type="button" value="Отмена" onclick="window.location.href = '/employees'"/>
    </form:form>
</div>
</body>
</html>
