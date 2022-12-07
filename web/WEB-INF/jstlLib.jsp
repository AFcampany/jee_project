<%-- 
    Document   : jstlLib
    Created on : 2 d�c. 2022, 20:28:29
    Author     : pc
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
  <c:if test="${empty auth}">
    <c:redirect url="/views/login.jsp"/>
  </c:if>
  
    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="/home">Gestion Commerciale</a><!-- home <a> -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active"  href="/jee_project/views/client.jsp">Clients</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="/jee_project/views/article.jsp">Article</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="/jee_project/views/facture.jsp">Factures</a>
              </li>
            </ul>
            <div class="d-flex">
              <form action="/jee_project/controllers/logout.jsp" method="post">
                <button class="nav-link active" type="submit">Logout</button>
              </form>
                <!-- <a class="nav-link active" href="/logout">Logout</a> -->
            </div>
          </div>
        </div>
      </nav>


      <!-- side bare -->
      <div class="d-flex flex-column flex-shrink-0 p-3 bg-light full-height">
        <ul class="nav nav-pills flex-column mb-auto">
          <li class="nav-item">
            <a href="/jee_project/views/home.jsp" class="nav-link">
              Home
            </a>
          </li>
          <li>
            <a href="/jee_project/views/clientForm.jsp" class="nav-link link-dark">
              Ajouter client
            </a>
          </li>
          <li>
            <a href="/jee_project/views/articleForm.jsp" class="nav-link link-dark">
              Ajouter article
            </a>
          </li>
          <li>
            <a href="/jee_project/controllers/factureController2.jsp" class="nav-link link-dark">
              Ajouter facture
            </a>
          </li>
        </ul>
        
      </div>

      <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

<!-- index.jsp code -->