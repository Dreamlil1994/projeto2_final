/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class CriarConexao {
    public static Connection getConexao() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.print("conectou");
            return DriverManager.getConnection("jdbc:mysql://localhost:3307/loginteste", "root", "");
        } catch (SQLException e) {
            throw new SQLException(e);
        } catch (ClassNotFoundException e1) {
            throw new SQLException(e1);
        }

    }
}
    

