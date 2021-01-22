/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.model;

import br.com.controle.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
public class ManterUsuario extends DAO {
    public void inserir(Usuario u) throws Exception {
    try {
    abrirBanco();
    String query = "INSERT INTO usuario2(codigo,nome,email,produto,cpf,sexo,senha) "
            + "values(null,?,?,?,?,?,?)";
    pst=(PreparedStatement) con.prepareStatement(query);
    pst.setString(1, u.getNome());
    pst.setString(2, u.getEmail());
     pst.setString(3, u.getProduto());
    
      pst.setString(4, u.getCpf());
      pst.setString(5, u.getSexo());
      pst.setString(6, u.getSenha());
     
    pst.execute();
    fecharBanco();
    } catch (Exception e) {
        System.out.println("Erro " + e.getMessage());
    }
    }
    public ArrayList<Usuario> pesquisarTudo () throws Exception {
       ArrayList<Usuario> listausuario = new ArrayList<Usuario>();
         try{
         abrirBanco();  
         String query = "select codigo,nome,email,produto,cpf,sexo,senha FROM usuario2";
         //Problemaa da data resolvido aqui com recurso do sql
         pst = con.prepareStatement(query);
         ResultSet rs = pst.executeQuery();
         Usuario user ;
         while (rs.next()){ 
           user = new Usuario();
           user.setCodigo(rs.getInt("codigo"));
           user.setNome(rs.getString("nome"));
           user.setEmail(rs.getString("email"));
           user.setProduto(rs.getString("produto"));
           
           user.setCpf(rs.getString("cpf"));
           user.setSexo(rs.getString("sexo"));
           user.setSenha(rs.getString("senha"));
           listausuario.add(user); 
         } 
         fecharBanco();
       }catch (Exception e){
           System.out.println("Erro " + e.getMessage());
     } 
       return listausuario;
     }
    public void deletar(Usuario us) throws Exception{
         abrirBanco();
         String query = "delete FROM  usuario2 where codigo=?";
         pst=(PreparedStatement) con.prepareStatement(query);
         pst.setInt(1, us.getCodigo());
         pst.execute();
        fecharBanco();   
     }
        
    public void alterar(Usuario u) throws Exception {
       try {
    abrirBanco();
    String query = "UPDATE  usuario2 SET nome=?,email=?,produto=?,cpf=?,sexo=?,senha=? WHERE codigo=?";
    pst = con.prepareStatement(query);
    pst.setString(1, u.getNome());
    pst.setString(2, u.getEmail());
    pst.setString(3, u.getProduto());
      pst.setString(4, u.getCpf());
      pst.setString(5, u.getSexo());
      pst.setString(6, u.getSenha());
      pst.setInt(7, u.getCodigo());
    pst.executeUpdate();
    fecharBanco();
			
    } catch (Exception e) {
            System.out.println("Erro " + e.getMessage());
    }
	}

      public Usuario pesquisar(int id) throws Exception {
    try {
            Usuario u = new Usuario();
            System.out.println(" Chegou no pesquisar registo" + id);
            abrirBanco();
            String query = "select * FROM usuario2 where codigo=?";
            pst = con.prepareStatement(query);
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                u.setCodigo(rs.getInt("codigo"));
                u.setNome(rs.getString("nome"));
                u.setEmail(rs.getString("email"));
                u.setProduto(rs.getString("produto"));
           
           u.setCpf(rs.getString("cpf"));
           u.setSexo(rs.getString("sexo"));
           u.setSenha(rs.getString("senha"));
                return u;
            }
            fecharBanco();
    } catch (Exception e) {
            System.out.println("Erro " + e.getMessage());
    }
    return null;
	}   
         
}

