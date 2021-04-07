<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav>
    <div class="nav-wrapper blue">
        <div class="container">
            <a href="<c:url value="/"/>" class="brand-logo"><img src="img/logo3.png" alt="logo"></a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">

                <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_SUPERADMIN')">
                    <li><a href="<c:url value="/cassa"/>">Кассовые узлы</a></li>
                </security:authorize>

                <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_SUPERADMIN','SECRETARY')">
                    <li><a href="<c:url value="/employees"/>">Сотрудники</a></li>
                </security:authorize>

                <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_SUPERADMIN','ROLE_HR')">
                    <li><a href="<c:url value="/vacancies"/>">Вакансии</a></li>
                </security:authorize>



                <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_SUPERADMIN')">
                    <li><a href="<c:url value="/departments"/>">Департаменты</a></li>
                </security:authorize>

                <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_SUPERADMIN')">
                    <li><a href="<c:url value="/city"/>">Города</a></li>
                </security:authorize>

                <security:authorize access="isAuthenticated()">
                    <li>Hello, <b><c:out value="${pageContext.request.remoteUser}"/></b></li>
                </security:authorize>

                <c:url var="logoutUrl" value="/logout"/>
                <%--                <li>--%>
                <%--                    <form class="form-inline" action="${logoutUrl}" method="post">--%>
                <%--                        <input type="submit" value="выйти"/>--%>
                <%--                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
                <%--                    </form>--%>
                <%--                </li>--%>
                <security:authorize access="isAuthenticated()">
                    <li><a href="<c:url value="/logout"/>">Выйти</a></li>
                </security:authorize>
            </ul>
        </div>
    </div>
</nav>
