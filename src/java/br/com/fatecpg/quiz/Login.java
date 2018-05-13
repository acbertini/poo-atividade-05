/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author janainahp
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    
    @Override
     protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                response.setContentType("text/html");
                if(request.getParameter("entrar") != null){
                    String usuario = request.getParameter("login");
                    HttpSession session = request.getSession(true);
                    session.setAttribute("user", usuario);
                    response.sendRedirect("home.jsp");
                    
                }
//                else if(request.getParameter("sair")!= null)
//                {
//                    HttpSession session = request.getSession(false);
//                    
//                    session.removeAttribute("user");
//                    session.invalidate();
//                    session = request.getSession(false);
//                    response.sendRedirect("login.jsp");
//                }
               
       
        }

   
   
}
