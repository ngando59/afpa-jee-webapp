<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<header>
		<h1><a href="/WebApp/">WebApp</a></h1>
		<div class="cart">
			<i class="fas fa-cart-arrow-down"></i><a class="" href="/WebApp/cart">Panier (0) - 0.00 €</a>
			<c:if test="${sessionScope.isConnected}">
				| <i class="fas fa-sign-in-alt"></i><a class="" href="/WebApp/account">${sessionScope.login}</a>
			</c:if>			
		</div>
		
	</header>
	<nav>
		<a class="<c:if test="${page == 'home'}">active</c:if>" href="/WebApp/">Accueil</a>
		<c:if test="${sessionScope.uGrant.equals('full')}">
		<a class="<c:if test="${(page == 'admin-users') || (page == 'admin-user') || ( (page == 'admin') )}">active</c:if>" href="/WebApp/administration">Administration</a>
		</c:if>
		<c:choose>
			<c:when test="${sessionScope.isConnected}">
				<a class="<c:if test="${page == 'account'}">active</c:if>" href="/WebApp/account">Mon compte</a>	
			</c:when>
			<c:otherwise>
				<a class="<c:if test="${page == 'login'}">active</c:if>" href="/WebApp/login">Connexion</a>	
			</c:otherwise>
		</c:choose>	
		<a class="<c:if test="${page == 'products'}">active</c:if>" href="/WebApp/products">Nos produits</a>	
		<a class="<c:if test="${page == 'contact'}">active</c:if>" href="/WebApp/contact">Contact</a>
	</nav>