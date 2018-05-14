<%-- 
    Document   : login
    Created on : May 12, 2018, 5:28:44 PM
    Author     : Janaina
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
         <!--@include file="WEB-INF/jspf/menu.jspf" %>   -->   
        <script src='js/jquery.min.js'></script>
        <script src='js/bootstrap.min.js'></script>
        <script src='js/scripts.js'></script>
        <link href='src/css/bootstrap.css' rel='stylesheet'>        
    </head>
    <body>
        <br/>  <br/>  <br/>
        <div>  
            <center>
                <form action="Login" method="post">
                    Login: <input type="text" name="login" />
                    <input type="submit" name="entrar" value="Entrar"/>
                    
                     <!-- <button class="btn btn-info btn-sm" type="submit" name="entrar">Entrar</button>-->
                 </form>
            <center>
        </div>
    </body>
</html>
