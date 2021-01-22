/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.model;

/**
 *
 * @author 55619
 */
import java.sql.SQLException;

public class Teste extends DAO{
    public static void main(String[] args) throws SQLException {
        DAO cx = new DAO();
        cx.abrirBanco();
    }
    
}
