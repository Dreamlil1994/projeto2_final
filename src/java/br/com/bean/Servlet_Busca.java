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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 55619
 */
public class Servlet_Busca extends HttpServlet {

     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           int codigo = Integer.parseInt(request.getParameter("codigo"));
             Usuario u = new Usuario();

            try {
                   ManterUsuario dao = new ManterUsuario();
                   u = dao.pesquisar(codigo);
                   RequestDispatcher rd = 
                    request.getRequestDispatcher("alterar.jsp");
                    rd.forward(request, response);}
               catch(Exception e){

                       }
        	String msg = "";
                
		if (u == null) {

			msg = "Não foram encontrados registros.";

			request.setAttribute("msgResposta", msg);

			RequestDispatcher enviar = request
					.getRequestDispatcher("lista.jsp");
			enviar.forward(request, response);

		} else {
			request.setAttribute("uCodigo", u.getCodigo());
                        request.setAttribute("uNome", u.getNome());
                        request.setAttribute("uEmail", u.getEmail());
                        request.setAttribute("uProduto", u.getProduto());
                        
                        request.setAttribute("uCpf", u.getCpf());
                        request.setAttribute("uSexo", u.getSexo());
                        request.setAttribute("uSenha", u.getSenha());
                        
                        RequestDispatcher lista = request
					.getRequestDispatcher("alterar.jsp");
			lista.forward(request, response);
		}
            
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
        processRequest(request, response);
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
        processRequest(request, response);
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
