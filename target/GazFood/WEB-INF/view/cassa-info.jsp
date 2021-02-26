<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Максим
  Date: 24.02.2021
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cassa info</title>
    <link rel="stylesheet" href="css/materialize.css">
</head>
<body>

<div class="container">
    <h2>Информация по кассовому узлу</h2>
    <form:form class="col s12" action="saveCassa" modelAttribute="cassa">

        <form:hidden path="id"/>

        <form:input id="cassaName" path="cassaName"/>
        <label for="cassaName">Название кассы</label>

        <form:input id="prefix" path="prefix"/>
        <label for="prefix">Prefix</label>

        <form:input id="ammy" path="ammy"/>
        <label for="ammy">Ammy</label>

        <form:input id="computerName" path="computerName"/>
        <label for="computerName">Имя компьютера</label>

        <form:input id="cassaAdres" path="cassaAdres"/>
        <label for="cassaAdres">Адрес</label>

        <form:input path="simNumber"/>
        <label for="simNumber">Номер sim-карты</label>
        <br>

        <input class="waves-effect waves-light btn-small" type="submit" value="OK">
        <input class="waves-effect yellow black-text btn-small" type="button" value="Отмена"
               onclick="window.location.href = '/cassa'"/>

    </form:form>


</div>
</body>
</html>
