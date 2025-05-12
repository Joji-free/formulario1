<%--
  Created by IntelliJ IDEA.
  User: ander
  Date: 10/5/2025
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Map" %>
<%
    Map<String, String> errores = (Map<String, String>) request.getAttribute("errores");
%>
<html lang="en">
<head>
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet"/>
    <title>Formulario usuario</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 20px;
            background-color: #f5f5f5;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h3 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"],
        select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .checkbox-group, .radio-group {
            margin-bottom: 10px;
        }

        .checkbox-group label, .radio-group label {
            display: inline;
            font-weight: normal;
            margin-left: 5px;
        }

        .error-list {
            color: #d9534f;
            background-color: #f2dede;
            padding: 10px;
            border-radius: 4px;
            margin-bottom: 20px;
            list-style-type: none;
        }

        .error-list li {
            margin-bottom: 5px;
        }

        .btn-submit {
            background-color: #dc3545; /* Cambiado a rojo */
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease; /* Efecto de transición suave */
        }

        .btn-submit:hover {
            background-color: #c82333; /* Rojo más oscuro al pasar el mouse */
        }
    </style>
</head>
<body>
<div class="container">
    <h3>Formulario de Usuario</h3>
    <%
        if (errores != null && errores.size() > 0) {
    %>
    <ul class="error-list">
        <% for (String error : errores.values()) {%>
        <li><%=error%></li>
        <%}%>
    </ul>
    <%}%>
    <form action="/app_formulario/registro" method="post">
        <div class="form-group">
            <label for="username">Usuario:</label>
            <div>
                <input type="text" name="username" id="username" placeholder="Ingrese su nombre de usuario">
            </div>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <div>
                <input type="password" name="password" id="password" placeholder="Ingrese su contraseña">
            </div>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <div>
                <input type="email" name="email" id="email" placeholder="Ingrese su correo electrónico">
            </div>
        </div>
        <div class="form-group">
            <label for="pais">País:</label>
            <div>
                <select name="pais" id="pais">
                    <option value="">----- Seleccionar -----</option>
                    <option value="ES">España</option>
                    <option value="EC">Ecuador</option>
                    <option value="PE">Perú</option>
                    <option value="CO">Colombia</option>
                    <option value="BR">Brazil</option>
                    <option value="AR">Argentina</option>
                    <option value="VE">Venezuela</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="Lenguajes">Lenguajes de programación:</label>
            <div>
                <select name="Lenguajes" id="Lenguajes">
                    <option value="">-- Seleccionar -----</option>
                    <option value="Java">Java</option>
                    <option value="Python">Python</option>
                    <option value="C#">C#</option>
                    <option value="C++">C++</option>
                    <option value="Angular">Angular</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label>Roles:</label>
            <div class="checkbox-group">
                <input type="checkbox" name="roles" value="ROLE_ADMIN" id="role_admin">
                <label for="role_admin">Administrador</label>
            </div>
            <div class="checkbox-group">
                <input type="checkbox" name="roles" value="ROLE_USER" id="role_user">
                <label for="role_user">Usuario</label>
            </div>
            <div class="checkbox-group">
                <input type="checkbox" name="roles" value="ROLE_MODERADOR" id="role_mod">
                <label for="role_mod">Moderador</label>
            </div>
        </div>
        <div class="form-group">
            <label>Idiomas:</label>
            <div class="radio-group">
                <input type="radio" name="idioma" value="es" id="idioma_es">
                <label for="idioma_es">Español</label>
            </div>
            <div class="radio-group">
                <input type="radio" name="idioma" value="en" id="idioma_en">
                <label for="idioma_en">Inglés</label>
            </div>
            <div class="radio-group">
                <input type="radio" name="idioma" value="ru" id="idioma_ru">
                <label for="idioma_ru">Ruso</label>
            </div>
        </div>
        <div class="form-group">
            <label for="habilitar">Habilitar:</label>
            <div>
                <input type="checkbox" name="habilitar" id="habilitar" checked>
            </div>
        </div>
        <div class="form-group">
            <div>
                <input type="submit" value="Enviar" class="btn-submit">
            </div>
        </div>
        <input type="hidden" name="secreto" value="123456">
    </form>
</div>
</body>
</html>