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
       
      
        <!-- Fixa o rodapé
        <link href="scr/css/sticky-footer-navbar.css" rel="stylesheet">
    </head>
    <body>
        <main role="main" class="container">
            <div class="container-fluid">

                <!-- Barra de navegação
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-expand navbar-dark fixed-top bg-primary">
                            <div class="collapse navbar-collapse" id="navbarNav">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="home.jsp">Home</a>
                                    </li> 
                                </ul>
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="sobre.jsp">Sobre</a>
                                    </li> 
                                </ul>
                            </div>
                            <a href="login.jsp" class="btn btn-info navbar-right" role="button">Sign in</a>
                        </nav>
                    </div>
                </div> -->

        
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
