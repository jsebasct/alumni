<%-- 
    Document   : PersonRegister
    Created on : Jan 17, 2016, 4:07:04 PM
    Author     : jscruz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Formulario de Inscripcion</h1>
        <hr/>
        <form method="POST" action="register.do">

            <label for="nombre">Nombre:</label>
            <input id="nombre" type="text" name="nombre"/>
            <br/>

            <label for="apellido">Apellido:</label>
            <input id="apellido" type="text" name="apellido"/>
            <br/>

            <label for="direccion">Direccion:</label>
            <input id="direccion" type="text" name="direccion"/>
            <br/>

            <label for="sexo"> Sexo:</label>
            <input id="sexo" type="radio" name="genero" value="M">Masculino</input>
            <input type="radio" name="genero" value="F">Femenino</input>
            <br/>

            <label for="trabajo">Puesto de Trabajo:</label>
            <select id="trabajo" name="trabajo">
                <option value="Gerente">Gerente</option>
                <option value="Lider">Lider de Proyecto</option>
                <option value="Programador">Programador</option>
                <option value="Tester">Tester</option>
            </select>
            <br/>

            <label for="experiencia">Tiene experiencia:</label>
            <input id="experiencia" type="checkbox" name="experiencia" value="Tiene"/> 
            <br/>
            
            <hr/>
            <input type="submit" value="Registrame"/>
        </form>
    </body>
</html>
