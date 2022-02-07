<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<header>
<nav class=" navbar navbar-expand-md navbar-dark" style="background-color: darkblue;" >
<div>
<h1 style="color:white ;">Cadastro de Usuários</h1>
</div>
<ul class="navbar-nav">
<li><a href="<%=request.getContextPath()%>/lista" class="nav-link">
Usuarios</a></li>
</ul>
</nav>
</header>

<br>

<div class="container col-md-5">
<div class="card">
<div class="card-body">
<c:if test="${ user != null}">
<form action="atualizar" method="post">
</c:if>
<c:if test="${user == null}">
<form action="inserir" method="post">
</c:if>

<caption>
<h2>

<c:if test="${ user != null}">
Editar
</c:if>
<c:if test="${user == null}">
Adicionar
</c:if>
</h2>
</caption>

<c:if test="${user != null}">
 <input type="hidden" name="id" value='<c:out value="${user.id}"></c:out>'>
</c:if>

<fieldset class="form-group">
<label>Nome</label> <input type="text"
value='<c:out value="${user.name}"></c:out>'
class="form-control"
name="nome" required="required"
>
</fieldset>



<fieldset class="form-group">
<label>Nome</label> <input type="text"
value='<c:out value="${user.email}"></c:out>'
class="form-control"
name="email"
>
</fieldset>


<fieldset class="form-group">
<label>Nome</label> <input type="text"
value='<c:out value="${user.country}"></c:out>'
class="form-control"
name="country" 
>
</fieldset>

<button type="submit" class="btn btn-success">Salvar</button>

</div>
</div>
</div>
</body>
</html>