
<c:if test="${empty show}">
  <c:set var="select" value="true" scope="session"/>
  <c:redirect url="/models/clientModel.jsp"/>
</c:if>

<c:remove var="show" scope="session"/>

<div class="table-container">

  <h1>List des clients</h1>

  <table class="table">
      <thead>
        <tr>
          <th scope="col">Id</th>
          <th scope="col">Nome et prenome</th>
          <th scope="col">telephone</th>
          <th scope="col">email</th>
        </tr>
      </thead>
      <tbody>
        
        <c:forEach var="client" items="${clients.rows}">
          <tr>
              <th scope="row"><c:out value="${client.id_client}"/></th>
              <td><c:out value="${client.nom_client}"/></td>
              <td><c:out value="${client.telephone}"/></td>
              <td><c:out value="${client.email}"/></td>
          </tr>
        </c:forEach>
      </tbody>
    </table>

</div>

<c:remove var="clients" scope="session"/>

</body>
</html>