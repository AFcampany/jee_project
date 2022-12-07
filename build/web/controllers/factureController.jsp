

<c:if test="${update}">
        <!-- redirect to facture form avec succes -->
    <c:set var="success" value="Ajout facture reussi" scope="session"/>
    <c:remove var="update" scope="session"/>
    
    <c:remove var="id_client" scope="session"/>
    <c:remove var="date" scope="session"/>
    <c:remove var="mode_paiement" scope="session"/>
    <c:remove var="reference_articles" scope="session"/>
    <c:remove var="quantite" scope="session"/>
    <h1>${update}</h1>
    <c:redirect url="/views/factureForm.jsp"/>
</c:if>

<c:set var="id_client" value="${param.id_client}" scope="session"/>
<c:set var="date" value="${param.date}" scope="session"/>
<c:set var="mode_paiement" value="${param.mode_paiement}" scope="session"/>
<c:set var="reference_articles" value="${paramValues.articles}" scope="session"/>
<c:set var="quantite" value="${paramValues.quan}" scope="session"/>

<c:choose>
    
   <c:when test="${ param.id_client != '' && param.date != '' && 
                     param.mode_paiement != '' && !empty paramValues.articles &&
                    !empty paramValues.quan}" >
        <h1>modele</h1>
        <c:redirect url="/models/factureModel.jsp"/>

    </c:when> 
    <c:otherwise>
        <c:if test="${empty param.id_client}">
            <c:set var="e_id_client" value="${err_id_client}" scope="session"/>
        </c:if>
        <c:if test="${empty param.date}">
            <c:set var="e_date_facture" value="${err_date_facture}" scope="session"/>
        </c:if>
        <c:if test="${empty param.mode_paiement}">
            <c:set var="e_mode_paiment" value="${err_mode_paiment}" scope="session"/>
        </c:if>

        <c:if test="${empty paramValues.articles}">
            <c:set var="e_num_article" value="${err_num_article}" scope="session"/>
        </c:if>

        <c:if test="${empty paramValues.quan}">
            <c:set var="e_quantete_vendue" value="${err_quantete_vendue}" scope="session"/>
        </c:if>
        <c:redirect url="/views/factureForm.jsp"/>

    </c:otherwise>
</c:choose>



