<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- client error -->
<c:set var="err_id_client" value="cliente de cette facture est requis"/>
<c:set var="err_nom_client" value="Nom de cliente est requis"/>
<c:set var="err_telephone" value="Numero de telephone est requis"/>
<c:set var="err_email" value="Email est requis"/>
<!-- facture error -->
<c:set var="num_facture" value="Num facture est requis"/>
<c:set var="err_date_facture" value="Date de facture est requis"/>
<c:set var="err_mode_paiment" value="Mode paiment est requis"/>
<!-- article error -->
<c:set var="err_num_article" value="les articles de cette facture est requis"/>
<c:set var="err_nom_article" value="Nom article est requis"/>
<c:set var="err_quantite" value="Quantete est requis"/>
<c:set var="err_prix_vente" value="Prix est requis"/>
<!-- ligne-facture error -->
<c:set var="err_quantete_vendue" value="Qauntete vendue est requis"/>

