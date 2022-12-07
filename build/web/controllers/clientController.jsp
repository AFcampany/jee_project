

<c:if test="${update}">
    <c:set var="success" value="Ajout client reussi" scope="session"/>
    <c:remove var="update" scope="session"/>
    
    <c:remove var="nom_client" scope="session"/>
    <c:remove var="telephone" scope="session"/>
    <c:remove var="email" scope="session"/>

    <c:redirect url="/views/clientForm.jsp"/>
</c:if>

<c:set var="nom_client" value="${param.nom_client}" scope="session"/>
<c:set var="telephone" value="${param.telephone}" scope="session"/>
<c:set var="email" value="${param.email}" scope="session"/>



<c:choose>
    <c:when test="${ param.nom_client != '' && param.telephone != '' && param.email != '' }">
        
        <c:redirect url="/models/clientModel.jsp"/>

    </c:when>
    <c:otherwise>
        <c:if test="${empty param.nom_client}">
            <c:set var="e_nom" value="${err_nom_client}" scope="session"/>
        </c:if>
        <c:if test="${empty param.telephone}">
            <c:set var="e_telephone" value="${err_telephone}" scope="session"/>
        </c:if>
        <c:if test="${empty param.email}">
            <c:set var="e_email" value="${err_email}" scope="session"/>
        </c:if>

        <c:redirect url="/views/clientForm.jsp"/>
    </c:otherwise>
</c:choose>

</body>
</html>