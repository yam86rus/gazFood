<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/materialize.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="page">

    <%--Подключаем header--%>
    <jsp:include page="header.jsp"/>

    <h2>Кассовые узлы: ${allCassa.size()} шт.</h2>
    <div>
        <input class="waves-effect waves-light btn-small" type="button" value="Добавить"
               onclick="window.location.href = 'addNewCassa'"/>
    </div>
    <table class="highlight myTable" id="sortable">
        <tbody>
        <thead>
        <tr>
            <th>Название кассы</th>
            <th>prefix</th>
            <th>Ammyy Admin</th>
            <th>AnyDesk</th>
            <th>Имя компьютера</th>
            <%--        <th>Адрес установки</th>--%>
            <th>Обновление</th>
            <th>Плановая дата обновления</th>
            <th>Срок окончания действия ФН</th>
<%--            <th>КПП</th>--%>
            <th>Мобильный</th>
            <th>ICC</th>
            <th>Телефон</th>
            <th>Операции</th>
        </tr>
        </thead>

        <c:forEach var="items" items="${allCassa}">
            <c:url var="updateButton" value="/updateInfo">
                <c:param name="cassaId" value="${items.id}"/>
            </c:url>

            <c:url var="deleteButton" value="/deleteCassa">
                <c:param name="cassaId" value="${items.id}"/>
            </c:url>

            <tr>
                <td>${items.cassaName}</td>
                <td class="content">${items.prefix}</td>
                <td class="content">${items.ammy}</td>
                <td>${items.anyDesk}</td>
                <td>${items.computerName}</td>
                    <%--            <td>${items.cassaAdres}</td>--%>
                <td>${items.simNumber}</td>
                <td>${items.planUpdate}</td>
                <td>${items.fnDeadLineData}</td>
<%--                <td>${items.kpp}</td>--%>
<%--                <td>${items.rnkkt}</td>--%>
<%--                <td>${items.fnNumber}</td>--%>
                <td>${items.mobileNumber}</td>
                <td>${items.iccNumber}</td>
                <td>${items.phoneNumber}</td>
                <td>
                    <input class="waves-effect waves-light btn-small" type="button" value="Изменить"
                           onclick="window.location.href= '${updateButton}'"/>
                    <security:authorize access="hasAnyRole('ROLE_SUPERADMIN')">
                        <input class="waves-effect red lighten-2 btn-small" type="button" value="Удалить"
                               onclick="window.location.href= '${deleteButton}'"/>
                    </security:authorize>
                </td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
    <br>
    <div>
        <input class="waves-effect waves-light btn-small" type="button" value="Добавить"
               onclick="window.location.href = 'addNewCassa'"/>

    </div>
    <br>

    <%--Подключаем footer--%>
    <jsp:include page="footer.jsp"/>
</div>
</body>

<script src="js/all-cassa.js"></script>
</html>
