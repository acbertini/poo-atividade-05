<%-- 
    Document   : home
    Created on : May 10, 2018, 9:36:58 AM
    Author     : AnaBertini
--%>

<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <%@include file="WEB-INF/jspf/menu.jspf" %>   
        <script src='js/jquery.min.js'></script>
        <script src='js/bootstrap.min.js'></script>
        <script src='js/scripts.js'></script>
        <link href='src/css/bootstrap.css' rel='stylesheet'>
    </head>
    <body>
        <main role="main" class="container">
          <!-- Conteudo da página -->                
                <div class="row">
                    <div class="col-md-8">
                        <br><br><br>
                       <!-- <h2><a href="quiz.jsp">Realizar QUIZ</a></h2>-->
        
                       <h3>Usuário: <%=session.getAttribute("user")%></h3>
                       <br/><br/><br/><br/>
                      <a href="quiz.jsp"><button class="btn btn-info btn-lg">Realizar Quiz</button></a>
                      <br/>
                    
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
                                            for (int i = 0; i < Quiz.topDez.size(); i++) {
                                    %>
                                    <tr>
                                        <td><%=i%></td>
                                        <td><%=Quiz.topDez.get(i).getUser()%></td> 
                                        <td><%=Quiz.topDez.get(i).getPontuacao()%></td>
                                    </tr>
                                    <%    }
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
                                            for (int i = 0; i < Quiz.topDez.size(); i++) {
                                                Usuario user = Quiz.topDez.get(i).getUser();
                                    %>
                                    <tr>
                                        <td><%=user.getNome()%></td> 
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
    <br/><br/><br/><br/><br/>
     <%@include file="WEB-INF/jspf/footer.jspf" %>   
</html>
