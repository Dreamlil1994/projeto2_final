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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 55619
 */
@WebServlet(name = "ServletInserir", urlPatterns = {"/projeto.do"})
public class ServletInserir extends HttpServlet {

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
            String vnome;
            String vemail;
            String vproduto;
           
              String vcpf;
               String vsexo;
            String vsenha;
            
            vnome=request.getParameter("nome");
            vemail=request.getParameter("email");
            vproduto=request.getParameter("produto");
             
              vcpf=request.getParameter("cpf");
               vsexo=request.getParameter("sexo");
            
            vsenha=request.getParameter("senha");
           // out.println("<h1>Inserir " + vnome+ " "+vemail +"</h1>");
            Usuario us = new Usuario();
            ManterUsuario dao = new ManterUsuario();
            
            us.setNome(vnome);
            us.setEmail(vemail);
             us.setProduto(vproduto);
             
               us.setCpf(vcpf);
                us.setSexo(vsexo);
              us.setSenha(vsenha);
            
            dao.inserir(us);
             RequestDispatcher enviar = request
		.getRequestDispatcher("cadasatrar_usuario.jsp");
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
            Logger.getLogger(ServletInserir.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ServletInserir.class.getName()).log(Level.SEVERE, null, ex);
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