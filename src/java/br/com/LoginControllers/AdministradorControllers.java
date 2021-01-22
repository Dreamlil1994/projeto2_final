/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.LoginControllers;

import br.com.conexao.CriarConexao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 55619
 */
public class AdministradorControllers extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String emailBuscado = "";
        String senhaBuscada = "";
        Connection con;
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String sql = "Select * from login where email = ? and senha = ?";
        try {
            con = CriarConexao.getConexao();
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, senha);

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                emailBuscado = rs.getString("email");
                senhaBuscada = rs.getString("senha");
            }
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (emailBuscado.equals(email) || senhaBuscada.equals(senha)) {
            HttpSession session = request.getSession();
            session.setAttribute("email", email);
            request.getRequestDispatcher("logado_administrador.jsp").forward(request, response);
        } else {
            System.out.println(emailBuscado + "-" + email);
            System.out.println(senhaBuscada + "-" + senha);
            request.getRequestDispatcher("errodeusuario.jsp").forward(request, response);
        }

    }

}
