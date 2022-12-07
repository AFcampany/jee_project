
<sql:setDataSource 
var="db" 
driver="com.mysql.jdbc.Driver"  
url="jdbc:mysql://localhost/commerciale"  
user="root"  
password=""
/>

<c:if test="${ select }">
    <c:remove var="select" scope="session"/>

    <sql:query dataSource="${db}" var="clients_query">  
        SELECT * FROM client;  
    </sql:query>

    <c:set var="show" value="true" scope="session"/>
    <c:set var="clients" value="${clients_query}" scope="session"/>

    <c:redirect url="/views/client.jsp"/>
</c:if>


<c:if test="${ nom_client != null && telephone != null && email != null }">
 <sql:update dataSource="${db}" var="insert">  
    INSERT INTO client (nom_client, telephone, email) 
    VALUES ( ?, ?, ? );

    <sql:param value="${nom_client}"/>
    <sql:param value="${telephone}"/>
    <sql:param value="${email}"/>
</sql:update>
<c:set var="update" value="true" scope="session"/>
<c:redirect url="/controllers/clientController.jsp"/>
</c:if>
