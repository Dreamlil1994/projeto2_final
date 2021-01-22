/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.bean;

import br.com.controle.Usuario;
import br.com.model.ManterUsuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 55619
 */
public class Servlet_Alterar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          int vcodigo = 0;
          String vnome = "";
          String vemail = "";
           String vproduto="";
          
          String vcpf="";
          String vsexo="";
          String vsenha="";
         
          vcodigo = Integer.valueOf(request.getParameter("codigo"));
          vnome= request.getParameter("nome");
          vemail = request.getParameter("email");
          vproduto = request.getParameter("produto");
          
          vcpf = request.getParameter("cpf");
          vsexo = request.getParameter("sexo");
          vsenha = request.getParameter("senha");
          //out.println(" servlet alterar "); 
          //out.println("variavel "+vcodigo);
           
            Usuario u = new Usuario();
            ManterUsuario dao = new ManterUsuario();
            u.setCodigo(vcodigo);
            u.setNome(vnome);
            u.setEmail(vemail);
            u.setProduto(vproduto);
           
            u.setCpf(vcpf);
            u.setSexo(vsexo);
            u.setSenha(vsenha);
            dao.alterar(u);
            RequestDispatcher enviar = request
		.getRequestDispatcher("lista.jsp");
			enviar.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Servlet_Alterar.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Servlet_Alterar.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
