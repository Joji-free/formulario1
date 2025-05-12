<%--
  Created by IntelliJ IDEA.
  User: ander
  Date: 10/5/2025
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Map"%>
<%
    Map<String, String> errores = (Map<String, String>) request.getAttribute("errores");
%>
<html lang="es">
<head>
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
    <title>Formulario usuario</title>
</head>
<body class="container mt-5">
<h3 class="mb-4 text-center">Formulario Usuario</h3>

<% if (errores != null && !errores.isEmpty()) { %>
<div class="alert alert-danger">
    <ul class="list-unstyled">
        <% for (String error : errores.values()) { %>
        <li><%= error %></li>
        <% } %>
    </ul>
</div>
<% } %>

<form action="/app_formulario/registro" method="post" class="border p-4 rounded bg-light">
    <div class="mb-3">
        <label for="username" class="form-label">Usuario</label>
        <input type="text" name="username" id="username" class="form-control">
    </div>
    <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" name="password" id="password" class="form-control">
    </div>
    <div class="mb-3">
        <label for="email" class="form-label">Email</label>
        <input type="email" name="email" id="email" class="form-control">
    </div>
    <div class="mb-3">
        <label for="pais" class="form-label">País</label>
        <select name="pais" id="pais" class="form-select">
            <option value="">Seleccionar</option>
            <option value="ES">España</option>
            <option value="EC">Ecuador</option>
            <option value="PE">Perú</option>
            <option value="CO">Colombia</option>
            <option value="BR">Brasil</option>
            <option value="AR">Argentina</option>
            <option value="VE">Venezuela</option>
        </select>
    </div>
    <div class="mb-3">
        <label for="lenguajes" class="form-label">Lenguajes</label>
        <select name="lenguajes" id="lenguajes" class="form-select">
            <option value="">Seleccionar</option>
            <option value="Java">Java</option>
            <option value="Python">Python</option>
            <option value="C#">C#</option>
            <option value="C++">C++</option>
            <option value="Angular">Angular</option>
        </select>
    </div>

    <div class="mb-3">
        <label class="form-label">Roles</label>
        <div class="form-check">
            <input type="checkbox" name="roles" value="ROLE_ADMIN" class="form-check-input">
            <label class="form-check-label">Administrador</label>
        </div>
        <div class="form-check">
            <input type="checkbox" name="roles" value="ROLE_USER" class="form-check-input">
            <label class="form-check-label">Usuario</label>
        </div>
        <div class="form-check">
            <input type="checkbox" name="roles" value="ROLE_MODERADOR" class="form-check-input">
            <label class="form-check-label">Moderador</label>
        </div>
    </div>

    <div class="mb-3">
        <label class="form-label">Idiomas</label>
        <div class="form-check">
            <input type="radio" name="idiomas" value="es" class="form-check-input">
            <label class="form-check-label">Español</label>
        </div>
        <div class="form-check">
            <input type="radio" name="idiomas" value="en" class="form-check-input">
            <label class="form-check-label">Inglés</label>
        </div>
        <div class="form-check">
            <input type="radio" name="idiomas" value="ru" class="form-check-input">
            <label class="form-check-label">Ruso</label>
        </div>
    </div>

    <div class="mb-3 form-check">
        <input type="checkbox" name="habilitar" id="habilitar" class="form-check-input" checked>
        <label for="habilitar" class="form-check-label">Habilitar</label>
    </div>

    <input type="hidden" name="secreto" value="123456">

    <button type="submit" class="btn btn-primary">Enviar</button>
</form>
</body>
</html>