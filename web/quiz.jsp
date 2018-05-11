<%-- 
    Document   : quiz
    Created on : May 10, 2018, 9:37:16 AM
    Author     : AnaBertini
--%>

<%@page import="br.com.fatecpg.quiz.Questao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz!</title>
    </head>
    <body>
        <h1>Quiz!!!!</h1>
        <form action = "home.jsp">
            <% for (int i=0;i<Quiz.gerarQuestoes().size(); i++){
                Questao q = Quiz.gerarQuestoes().get(i); %>
                <h2><%=q.getPergunta()%></h2>
                <input type="radio" name="<%=q.getAlternativas()%>" value="<%=q.getAlternativas()[0]%>"/><%=q.getAlternativas()[0]%>
                <input type="radio" name="<%=q.getAlternativas()%>" value="<%=q.getAlternativas()[1]%>"/><%=q.getAlternativas()[1]%>
                <input type="radio" name="<%=q.getAlternativas()%>" value="<%=q.getAlternativas()[2]%>"/><%=q.getAlternativas()[2]%>
            <%}%>
            <hr/>
            <input type="submit" name="tested" value="Enviar" />
        </form>
    </body>
</html>
