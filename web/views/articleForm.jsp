

<div class="form">
  <c:if test="${!empty success}">
    <div class="alert alert-success">
      <c:out value="${success}" default="s"/>
    </div>
    <c:remove var="success" scope="session"/>
  </c:if>
    <h1>Ajouter Article</h1>
    <form method="post" action="/jee_project/controllers/articleController.jsp">
        <div class="mb-3">
          <label class="form-label">Nom D'article</label>
          <input type="text" name="nom_article" 
          class='form-control <c:if test="${!empty e_nom_article}">is-invalid</c:if>'
          value='<c:out value="${nom_article}"/>'>
          <div class="invalid-feedback"><c:out value="${e_nom_article}" default=""/></div>
        </div>
        <div class="mb-3">
          <label class="form-label">Quantite</label>
          <input type="number" name="quantite"
          class='form-control <c:if test="${!empty e_quantite}">is-invalid</c:if>'
          value='<c:out value="${quantite}"/>'>
          <div class="invalid-feedback"><c:out value="${e_quantite}" default=""/></div>
        </div>
        <div class="mb-3">
            <label class="form-label">Prix D'article</label>
            <input type="number" name="prix_vente" 
            class='form-control <c:if test="${!empty e_prix_vente}">is-invalid</c:if>'
            value='<c:out value="${prix_vente}"/>'>
            <div class="invalid-feedback"><c:out value="${e_prix_vente}" default=""/></div>
          </div>
        <button type="submit" class="btn btn-primary">Ajouter</button>
    </form>
</div>

<c:remove var="nom_article" scope="session"/>
<c:remove var="quantite" scope="session"/>
<c:remove var="prix_vente" scope="session"/>

<c:remove var="e_nom_article" scope="session"/>
<c:remove var="e_quantite" scope="session"/>
<c:remove var="e_prix_vente" scope="session"/>

</body>
</html>