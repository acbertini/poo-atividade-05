<%-- 
    Document   : quiz
    Created on : May 10, 2018, 9:37:16 AM
    Author     : AnaBertini
--%>

<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page import="br.com.fatecpg.quiz.Questao"%>
<%@page import="java.util.ArrayList"%>
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

        <!-- Conteúdo da página -->
        <br><br><br>

        <form action = "home.jsp">
            <%  Usuario usuario = new Usuario("Nome usuário");
                Quiz quiz = new Quiz(usuario);
                for (int i = 0; i < 5; i++) {
                    Questao q = quiz.getQuestao(i);
            %>
            <h4><%=q.getPergunta()%></h4>
            <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[0]%>"/><%=q.getAlternativas()[0]%>
            <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[1]%>"/><%=q.getAlternativas()[1]%>
            <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[2]%>"/><%=q.getAlternativas()[2]%>
            <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[3]%>"/><%=q.getAlternativas()[3]%>
            <%}%>
            <hr/>
            <input type="submit" name="tested" value="Enviar" />
        </form>
    </body>
</html>
