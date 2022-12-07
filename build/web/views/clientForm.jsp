

<div class="form">
  
  <c:if test="${!empty success}">
    <div class="alert alert-success">
      <c:out value="${success}" default="s"/>
    </div>
    <c:remove var="success" scope="session"/>
  </c:if>

    <h1>Ajouter Clients</h1>
    <form method="post" action="/jee_project/controllers/clientController.jsp">
        <div class="mb-3">
          <label class="form-label">Nom De Client</label>
          <input type="text" name="nom_client" 
          class='form-control <c:if test="${!empty e_nom}">is-invalid</c:if>'
          value='<c:out value="${nom_client}" default=""/>'>
          <div class="invalid-feedback"><c:out value="${e_nom}" default=""/></div>
        </div>
        <div class="mb-3">
          <label class="form-label">Numero Telephone</label>
          <input type="text" name="telephone" 
          class='form-control <c:if test="${!empty e_telephone}">is-invalid</c:if>'
          value='<c:out value="${telephone}"/>'>
        <div class="invalid-feedback"><c:out value="${e_telephone}" default=""/></div>
        </div>
        <div class="mb-3">
            <label class="form-label">Email</label>
            <input type="email" name="email" 
            class='form-control <c:if test="${!empty e_email}">is-invalid</c:if>'
            value='<c:out value="${email}"/>'>
          <div class="invalid-feedback"><c:out value="${e_email}" default=""/></div>
        </div>
        <button type="submit" class="btn btn-primary">Ajouter</button>
    </form>
    <h1>${success}</h1>
    
</div>

<c:remove var="nom_client" scope="session"/>
<c:remove var="telephone" scope="session"/>
<c:remove var="email" scope="session"/>

<c:remove var="e_nom" scope="session"/>
<c:remove var="e_telephone" scope="session"/>
<c:remove var="e_email" scope="session"/>

</body>
</html>        

