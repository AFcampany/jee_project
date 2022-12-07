

<div class="login">
    <form method="post" action="/jee_project/controllers/loged.jsp">
        <div class="mb-3">
          <label for="user" class="form-label">User Name</label>
          <input type="text" 
            value='<c:if test="${!empty user}"><c:out value="${user}"/></c:if>'
            name="user" 
            class="form-control"
            id="user" >
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">Password</label>
          <input type="password" name="password" class="form-control" id="password">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>


<c:remove var="user" scope="session"/>

</body>
</html>