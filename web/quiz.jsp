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
        <title>Quiz</title>
        <%@include file="WEB-INF/jspf/menu.jspf" %>   
        <script src='js/jquery.min.js'></script>
        <script src='js/bootstrap.min.js'></script>
        <script src='js/scripts.js'></script>
        <link href='src/css/bootstrap.css' rel='stylesheet'>
    </head>

    <body>
        <!-- Conteúdo da página -->
        <br><br><br>
        <div class="row">
            <div class="form-group col-md-8">
                <form action = "home.jsp">
                    <%  
                        Usuario usuario = new Usuario("nome");
                        Quiz quiz = new Quiz(usuario);
                        usuario.getTestesFinalizados().add(quiz);
                        double acertos = 0d;
                        double pontuacao = 0d;
                        for (int i = 0; i < 5; i++) {
                            Questao q = quiz.getQuestao(i);
                    %>
                    <h4><%=q.getPergunta()%></h4>
                    <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[0]%>"/><%=q.getAlternativas()[0]%>
                    <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[1]%>"/><%=q.getAlternativas()[1]%>
                    <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[2]%>"/><%=q.getAlternativas()[2]%>
                    <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[3]%>"/><%=q.getAlternativas()[3]%>

                    <%  String resposta = request.getParameter(q.getAlternativas().toString());
                            if (q.getResposta() == resposta) {
                                acertos++;
                            }
                            pontuacao = acertos / 5;
                        }%>
                    <hr/>
                    <input type="submit" name="teste" value="Enviar" />
                    <% quiz.finalizaTeste(pontuacao);%>
                </form>
            </div>
        </div>
    </body>
    <br/><br/><br/><br/><br/>
    <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>
