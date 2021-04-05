<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <form:errors cssStyle="color: red" path="cassaName"/>

        <form:input id="prefix" path="prefix"/>
        <label for="prefix">Prefix</label>
        <form:errors cssStyle="color: red" path="prefix"/>

        <form:input id="ammy" path="ammy"/>
        <label for="ammy">Ammy</label>
        <form:errors cssStyle="color: red" path="ammy"/>

        <form:input id="computerName" path="computerName"/>
        <label for="computerName">Имя компьютера</label>
        <form:errors cssStyle="color: red" path="computerName"/>

        <form:input id="cassaAdres" path="cassaAdres"/>
        <label for="cassaAdres">Адрес</label>
        <form:errors cssStyle="color: red" path="cassaAdres"/>

        <form:input path="simNumber"/>
        <label for="simNumber">Обновление</label>
        <form:errors cssStyle="color: red" path="simNumber"/>

        <form:input path="planUpdate"/>
        <label for="planUpdate">Плановая дата обновления</label>
        <form:errors cssStyle="color: red" path="planUpdate"/>

        <form:input id="anyDesk" path="anyDesk"/>
        <label for="anyDesk">AnyDesk</label>
        <form:errors cssStyle="color: red" path="anyDesk"/>

        <form:input id="fnDeadLineData" path="fnDeadLineData"/>
        <label for="anyDesk">Срок деййствия ФН</label>
        <form:errors cssStyle="color: red" path="fnDeadLineData"/>

        <form:input id="kpp" path="kpp"/>
        <label for="anyDesk">КПП</label>
        <form:errors cssStyle="color: red" path="kpp"/>

        <form:input id="" path="rnkkt"/>
        <label for="anyDesk">Срок действия ФН</label>
        <form:errors cssStyle="color: red" path="kpp"/>

        <form:input id="" path="fnNumber"/>
        <label for="anyDesk">Заводской номер фискального накопителя:</label>
        <form:errors cssStyle="color: red" path="kpp"/>

        <br>
        <input class="waves-effect waves-light btn-small" type="submit" value="OK">
        <input class="waves-effect yellow black-text btn-small" type="button" value="Отмена"
               onclick="window.location.href = '/cassa'"/>

    </form:form>


</div>
</body>
</html>
