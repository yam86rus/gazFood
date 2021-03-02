<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Максим
  Date: 02.03.2021
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/materialize.css">
</head>
<body>

<div class="container">
    <h2>Информация по департаменту</h2>
    <form:form class="col s12" action="saveDepartment" modelAttribute="departments">

        <form:hidden path="id"/>

        <form:input id="department" path="department"/>
        <label for="department">Название департамента</label>
<%--        <form:errors cssStyle="color: red" path="department"/>--%>
        <br>
        <input class="waves-effect waves-light btn-small" type="submit" value="OK">
        <input class="waves-effect yellow black-text btn-small" type="button" value="Отмена"
               onclick="window.location.href = '/departments'"/>

    </form:form>

</div>
</body>
</html>
