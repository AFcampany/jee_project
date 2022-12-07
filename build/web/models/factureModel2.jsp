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

<sql:query dataSource="${db}" var="articles">  
    SELECT reference_article, nom_article FROM article; 
</sql:query>

<c:set var="queryClient" value="${clients}" scope="session"/>
<c:set var="queryArticle" value="${articles}" scope="session"/>
<c:set var="selected" value="true" scope="session"/>




<c:redirect url="/controllers/factureController2.jsp"/>
