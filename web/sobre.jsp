<%-- 
    Document   : sobre
    Created on : May 12, 2018, 8:40:34 PM
    Author     : AnaBertini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sobre</title>
        <%@include file="WEB-INF/jspf/menu.jspf" %>   
        <script src='js/jquery.min.js'></script>
        <script src='js/bootstrap.min.js'></script>
        <script src='js/scripts.js'></script>
        <link href='src/css/bootstrap.css' rel='stylesheet'>
    </head>
    <body>
       <div class="container-fluid">
                    <div class="row">
                        
                    	<div class="col-md-12">
                        
                        <center><h2>Equipe</h2></center>
                        
                        <br/>
                       <div class="panel"> 
                         <div class='row'>
                         	
                             <div class='col-sm-4 col-md-4'>
                                <div class="media">
                                  <div class="media-left">
                                    
                                      <img class="img-circle" src="https://avatars3.githubusercontent.com/u/26040050?s=460&v=4" alt="..." width="200px" height="200px">
                                    
                                  </div>
                                  <div class="media-body">
                                        <h4 class="media-heading">Ana Bertini</h4>
                                        <p>Responsável pelo Quiz</p>
                                        <p>Github: @acbertini</p>
                                  </div>
                            </div>
                           </div> 
      
                           
                           <div class='col-sm-4 col-md-4'>
                                <div class="media">
                                  <div class="media-left">
                                    
                                      <img class="img-circle" src="https://avatars0.githubusercontent.com/u/25805720?s=400&v=4" alt="..." width="200px" height="200px">
                                   
                                  </div>
                                  <div class="media-body">
                                        <h4 class="media-heading">Felipe Lima</h4>
                                        <p>Responsável por </p>
                                        <p>Github: @FelipeLimaDeOliveira</p>
                               </div>
                            </div>
                           </div>    
                             
                             <div class='col-sm-4 col-md-4'>
                                <div class="media">
                                  <div class="media-left">
                                
                                   <img class="img-circle" src="https://avatars2.githubusercontent.com/u/36889842?s=460&v=4" alt="..."  width="200px" height="200px">
                                   
                                  </div>
                                  <div class="media-body">
                                        <h4 class="media-heading">Janaina Dias</h4>
                                        <p>Responsável pelo Controle de Sessão</p>
                                        <p>Github: @janainadias95</p>
                                  </div>
                            </div>
                           </div>
                             
                         </div>
                       </div>   
                  </div>
             </div>
         </div>            
         
    </body>
    <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>
