<%-- 
    Document   : index
    Created on : Jun 18, 2016, 2:52:01 PM
    Author     : jscruz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Basic Form</title>
    </head>
    <body>
        <h1>Basic Form</h1>
        <form method="POST" action="persona.do">
            <div>
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" size="20">
            </div>
            
            <div>
                <label for="apellido">Apellido:</label>
                <input type="text" id="apellido" name="apellido">
            </div>
            
            <div>
                <label for="domicilio">Domicilio:</label>
                <input type="text" id="domicilio" name="domicilio">
            </div>
            
            <div>
                <label for="pais">Pais:</label>
                <input type="text" id="pais" name="pais"> 
            </div>
            
            <div>
                <input type="submit" value="Enviar Datos"/>
            </div>
        </form>
    </body>
</html>
