
<c:if test="${update}">
    <c:set var="success" value="Ajout article reussi" scope="session"/>
    <c:remove var="update" scope="session"/>

    <c:remove var="nom_article" scope="session"/>
    <c:remove var="quantite" scope="session"/>
    <c:remove var="prix_vente" scope="session"/>

    <c:redirect url="/views/articleForm.jsp"/>
</c:if>

<c:set var="nom_article" value="${param.nom_article}" scope="session"/>
<c:set var="quantite" value="${param.quantite}" scope="session"/>
<c:set var="prix_vente" value="${param.prix_vente}" scope="session"/>
<c:out value="${nom_article}" default="non"/>
<c:out value="${quantite}" default="non"/>
<c:out value="${prix_vente}" default="non"/>

<c:choose>
    <c:when test="${ param.nom_article != '' && param.quantite != '' && param.prix_vente != '' }">
        
        <c:redirect url="/models/articleModel.jsp"/>

    </c:when>
    <c:otherwise>
        <c:if test="${empty param.nom_article}">
            <c:set var="e_nom_article" value="${err_nom_article}" scope="session"/>
        </c:if>
        <c:if test="${empty param.quantite}">
            <c:set var="e_quantite" value="${err_quantite}" scope="session"/>
        </c:if>
        <c:if test="${empty param.prix_vente}">
            <c:set var="e_prix_vente" value="${err_prix_vente}" scope="session"/>
        </c:if>

        <c:redirect url="/views/articleForm.jsp"/>
    </c:otherwise>
</c:choose>

</body>
</html>