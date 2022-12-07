
<sql:setDataSource 
var="db" 
driver="com.mysql.jdbc.Driver"  
url="jdbc:mysql://localhost/commerciale"  
user="root"  
password=""
/>

<c:if test="${ select }">
    <c:remove var="select" scope="session"/>

    <sql:query dataSource="${db}" var="articles_query">  
        SELECT * FROM article;  
    </sql:query>

    <c:set var="show" value="true" scope="session"/>
    <c:set var="articles" value="${articles_query}" scope="session"/>

    <c:redirect url="/views/article.jsp"/>
</c:if>


<c:if test="${ nom_article != null && quantite != null && prix_vente != null }">

 <sql:update dataSource="${db}" var="insert">  
    INSERT INTO article ( nom_article, quantite, prix_vente) 
    VALUES( ?, ?, ?);
    <sql:param value="${nom_article}"/>
    <sql:param value="${quantite}"/>
    <sql:param value="${prix_vente}"/>
</sql:update>

<c:set var="update" value="true" scope="session"/>
<c:redirect url="/controllers/articleController.jsp"/>
</c:if>
