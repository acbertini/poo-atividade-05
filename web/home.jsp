<%-- 
    Document   : home
    Created on : May 10, 2018, 9:36:58 AM
    Author     : AnaBertini
--%>

<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz!</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!-- Fixa o rodapé -->
        <link href="scr/css/sticky-footer-navbar.css" rel="stylesheet">
    </head>
    <body>
        <main role="main" class="container">
            <div class="container-fluid">

                <!-- Barra de navegação -->
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
                </div>

                <!-- Conteudo da página -->                
                <div class="row">
                    <div class="col-md-8">
                        <br><br><br>
                        <h2><a href="quiz.jsp">Realizar QUIZ</a></h2>
                    </div>
                    <div class="col-md-4">
                        <div class="row">
                            <div class="col-md-12">
                                <br><br><br>
                                <h5>Top 10</h5>
                                <table style="width:100%">
                                    <tr>
                                        <th>Ranking</th>
                                        <th>Usuario</th> 
                                        <th>Pontuacao</th>
                                    </tr>
                                    <%  if (!Quiz.topDez.isEmpty()) {
                                            for (int i = 0; i < Quiz.topDez.size(); i++) {%>
                                    <tr>
                                        <td><%=i%></td>
                                        <td><%=Quiz.topDez.get(i).getUser()%></td> 
                                        <td><%=Quiz.topDez.get(i).getPontuacao()%></td>
                                    </tr>
                                    <%}
                                        }%>
                                </table> 
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <br>
                                <h5>Ultimos 10</h5>
                                <table style="width:100%">
                                    <tr>
                                        <th>Usuario</th> 
                                        <th>Pontuacao</th>
                                    </tr>
                                    <%  if (!Quiz.ultimosDez.isEmpty()) {
                                            for (int i = 0; i < Quiz.topDez.size(); i++) {%>
                                    <tr>
                                        <td><%=Quiz.topDez.get(i).getUser()%></td> 
                                        <td><%=Quiz.topDez.get(i).getPontuacao()%></td>
                                    </tr>
                                    <%}
                                        }%>
                                </table> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
