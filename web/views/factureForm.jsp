
<c:if test="${ empty selected }">
  <c:redirect url="/controllers/factureController2.jsp"/> 
</c:if>


<c:remove var="selected" scope="session"/>
  
<div class="form">
  <h1></h1>
  <c:if test="${!empty success}">
    <div class="alert alert-success">
      <c:out value="${success}" default="s"/>
    </div>
    <c:remove var="success" scope="session"/>
  </c:if>
    <h1>Ajouter Facture</h1>
    <form class="form-facture" method="post" action="/jee_project/controllers/factureController.jsp">
      <div class="mb-3">
        <label class="form-label">Selctioner un client</label>
        <!-- list des clients select option-->
        <select 
        class='form-select <c:if test="${!empty e_id_client}">is-invalid</c:if>'
        name="id_client">
          <option disabled selected>Ovrire liste des clients</option>
          <c:if test="${ !empty queryClient }">
          <c:forEach var="row" items="${queryClient.rows}">
            <option value="${row.id_client}">${row.nom_client}</option>
          </c:forEach>          
          </c:if>
        </select>
        <div class="invalid-feedback"><c:out value="${e_id_client}" default=""/></div>
      </div>
        <div class="mb-3">
          <label class="form-label">Date de facture</label>
          <input type="date" name="date" 
          class='form-control <c:if test="${!empty e_date_facture}">is-invalid</c:if>'>
          <div class="invalid-feedback"><c:out value="${e_date_facture}" default=""/></div>
        </div>
        <div class="mb-3">
            <label class="form-label">Mode Paiement</label>
            <select 
            class='form-select <c:if test="${!empty e_mode_paiment}">is-invalid</c:if>'
            name="mode_paiement">
              <option selected disabled>Selcetioner le mode de paiment</option>
              <option value="1">ccp</option>
              <option value="2">cash</option>
              <option value="3">cash on dilery</option>
            </select>
            <div class="invalid-feedback"><c:out value="${e_mode_paiment}" default=""/></div>
        </div>
        <div class="mb-3">
            <!-- list des article select option-->
          <label class="form-label">Les Article</label>
          <select 
          class='form-select select <c:if test="${!empty e_num_article}">is-invalid</c:if>'>
            <option class="disabled"  disabled selected>Ovrire liste des article</option>
            <c:if test="${ !empty queryArticle }">
            <c:forEach var="row" items="${queryArticle.rows}">
              <option value="${row.reference_article}">${row.nom_article}</option>
            </c:forEach>
            </c:if>
          </select>
          <div class="invalid-feedback"><c:out value="${e_num_article}" default=""/></div>
        </div>
        <!-- hiden input -->
        <div 
        class='article <c:if test="${!empty e_num_article}">is-invalid</c:if>'>
          <label class="form-label">Les article ajouter</label>
          <!-- button + div + input -->
          <div class="invalid-feedback"><c:out value="${e_num_article}" default=""/></div>
        </div>
        <button type="submit" class="btn btn-primary">Ajouter</button>
    </form>
</div>
        

<c:remove var="id_client" scope="session"/>
<c:remove var="date" scope="session"/>
<c:remove var="mode_paiement" scope="session"/>
<c:remove var="reference_articles" scope="session"/>
<c:remove var="quantite_vendue" scope="session"/>

<c:remove var="e_id_client" scope="session"/>
<c:remove var="e_date_facture" scope="session"/>
<c:remove var="e_mode_paiment" scope="session"/>
<c:remove var="e_num_article" scope="session"/>
<c:remove var="e_quantete_vendue" scope="session"/>

<script src="../js/factureForm.js"></script>

</body>
</html>