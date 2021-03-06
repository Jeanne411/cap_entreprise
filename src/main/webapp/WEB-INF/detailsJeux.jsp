<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>D?tails du jeu</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<main class="container mt-5 min-vh-100">
	<div class="container text-center">
		<div class="card mx-auto" style="width: 30rem">
			<div class="card-body">
				<h5 class="card-title">${jeu.nom}-${jeu.editeur.nom}</h5>
				<img src="/images/${jeu.image}" height="150">
				<h6 class="card-subtitle mb-2 text-muted">${jeu.modeleEconomique.nom}
					- ${jeu.classification.nom}</h6>
				<p class="card-text">${jeu.description}</p>
				  <c:if test="${sessionScope.utilisateurConnecte.pseudo ne 'franck'}">
                <a href="/avis">Retour ? la liste des avis</a>
                </c:if>
                <c:if test="${sessionScope.utilisateurConnecte.pseudo eq 'franck'}">
                <a href="/admin/jeux">Retour ? la liste des jeux</a>
                </c:if>
			</div>
		</div>
	</div>
	</main>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>