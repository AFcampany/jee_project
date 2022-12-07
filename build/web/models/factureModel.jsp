<sql:setDataSource 
var="db" 
driver="com.mysql.jdbc.Driver"  
url="jdbc:mysql://localhost/commerciale"  
user="root"  
password=""
/>
<!-- non confermer -->
<c:if test="${ select }">
    <c:remove var="select" scope="session"/>

    <sql:query dataSource="${db}" var="articles_query">  
        SELECT * FROM article;  
    </sql:query>

    <sql:query dataSource="${db}" var="articles_query">  
        SELECT * FROM article;  
    </sql:query>

    <c:set var="show" value="true" scope="session"/>

    <c:set var="articles" value="${articles_query}" scope="session"/>
    <c:set var="articles" value="${articles_query}" scope="session"/>

    <c:redirect url="/views/article.jsp"/>
</c:if>


<c:if test="${ id_client != null && mode_paiement != null && date != null && reference_articles != null && quantite != null }">

    <sql:update dataSource="${db}" var="insert">  
        INSERT INTO facture ( date_facture, mode_paiement, id_client ) 
        VALUES ( ?, ?, ? );
    
        <sql:param value="${date}"/>
        <sql:param value="${mode_paiement}"/>
        <sql:param value="${id_client}"/>
    </sql:update>

    <sql:query dataSource="${db}" var="num">  
        SELECT MAX(num_facture) as num_facture FROM facture;  
    </sql:query>
<c:set var="i" value="0"/>

<c:forEach var="item" items="${reference_articles}">

    <sql:update dataSource="${db}" var="insert2">  
        INSERT INTO ligne_facture VALUES ( ?, ?, ? );
        <sql:param value="${item}"/>
        <sql:param value="${num.rows[0].num_facture}"/>
        <sql:param value="${quantite[i]}"/>
    </sql:update>

    <c:set var="i" value="${i+1}"/>

</c:forEach>

<c:set var="update" value="true" scope="session"/>
<c:redirect url="/controllers/factureController.jsp"/>
</c:if>
