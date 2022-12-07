
<%-- <c:if test="${ connection && auth }">
 <c:redirect url="/views/home.jsp"/>
</c:if> --%>

<c:if test="${ param.get == 'get'}" >
    <c:redirect url="/views/login.jsp"/>
</c:if>

<c:choose>
    <c:when test="${ param.user == 'admin' && param.password == 'admin' }">
        <c:set var="auth" value="true" scope="session"/>
        <c:redirect url="/views/home.jsp"/>
    </c:when>
    <c:otherwise>
        <c:if test="${!empty param.user}">
            <c:set var="user" value="${param.user}" scope="session"/>
        </c:if>
        <c:redirect url="/views/login.jsp"/>
    </c:otherwise>
</c:choose>

</body>
</html>