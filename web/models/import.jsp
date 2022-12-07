<sql:setDataSource 
var="db" 
driver="com.mysql.jdbc.Driver"  
url="jdbc:mysql://localhost/commerciale"  
user="root"  
password=""
/>

<sql:query dataSource="${db}" var="clients">  
        SELECT id_client, nom_client FROM client;  
</sql:query>

<c:set var="query" value="${clients}" scope="session"/>
<c:redirect url="/views/import.jsp"/> 