
<c:if test="${empty show}">
    <c:set var="select" value="true" scope="session"/>
    <c:redirect url="/models/articleModel.jsp"/>
</c:if>

<c:remove var="show" scope="session"/>

<div class="table-container">

    <h1>List des articles</h1>

    <table class="table">
        <thead>
          <tr>
            <th scope="col">Id</th>
            <th scope="col">Nome d'article</th>
            <th scope="col">Qauntete</th>
            <th scope="col">Prix vente</th>
          </tr>
        </thead>
        <tbody>
          
          <c:forEach var="article" items="${articles.rows}">
            <tr>
                <th scope="row"><c:out value="${article.reference_article}"/></th>
                <td><c:out value="${article.nom_article}"/></td>
                <td><c:out value="${article.quantite}"/></td>
                <td><c:out value="${article.prix_vente}"/></td>
            </tr>
          </c:forEach>
        </tbody>
      </table>

</div>

<c:remove var="articles" scope="session"/>

</body>
</html>