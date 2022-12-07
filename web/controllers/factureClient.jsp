
<c:set var="select_from_article" value="false" scope="session"/>
<c:set var="select_from_client" value="false" scope="session"/>

<c:redirect url="/controllers/factureController.jsp"/>


<c:redirect url="/controllers/factureController2.jsp">
        <c:param name="get" value="get" />
</c:redirect>