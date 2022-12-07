
<c:if test="${ empty selected }">
    <!-- redirect to model -->

    <c:redirect url="/models/factureModel2.jsp"/>
</c:if>
<c:redirect url="/views/factureForm.jsp"/>
