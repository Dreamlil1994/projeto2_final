<%-- 
    Document   : lista
    Created on : 08/10/2020, 21:35:14
    Author     : 55619
--%>
<%@page import="br.com.controle.Usuario"%>
<%@page import="br.com.model.ManterUsuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista</title>
        <!-- Linha para utilizar o bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <!-- Linha para utilizar o JavaScript -->
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <style type="text/css">
       a.active,a:hover{
    background: blue;
    transition: .5s;
    color:white;
}
 a.active2,a:hover{
    background: red;
    transition: .5s;
    color:white;
}
.sair{
    background: yellow;
    height: 50px;
    
}
a.index,a:hover{
    background: #FFA500;
    transition: .5s;
    color:white;
}



</style>
</head>
    <body>
        <div class="sair">
        <a class="index" href="administrador.jsp">Sair</a>
        </div>
        <h1>Usuario</h1>
         <% //@include file="menu.jsp" %> 
        <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Codigo</th>
      <th scope="col">Nome</th>
      <th scope="col">Email</th>
      <th scope="col">Produto</th>
     
      <th scope="col">CPF</th>
      <th scope="col">Sexo</th>
      <th scope="col">Senha</th>
      
      
      <th scope="col"></th>
      <th scope="col"></th>
    </tr>
  </thead>
  
  
        <%
          String vcodigo="";
          String vnome="";
          
          String vemail="";
          String vproduto="";
          
          String vcpf="";
          String vsexo="";
          String vsenha="";
          String vcontador="";
          
          
         
          //String ac = (String) request.getAttribute("relatorio");
         
             ManterUsuario dao = new ManterUsuario(); 
             Usuario u =  new Usuario();
            
             ArrayList<Usuario> user = dao.pesquisarTudo();  
             
            for (int i = 0; i < user.size(); i++) {                
                u = user.get(i);
              vcodigo= String.valueOf(u.getCodigo());
              vnome = String.valueOf(u.getNome());
              vemail = String.valueOf(u.getEmail());
              vproduto = String.valueOf(u.getProduto());
              
              vcpf = String.valueOf(u.getCpf());
              vsexo = String.valueOf(u.getSexo());
              vsenha = String.valueOf(u.getSenha());
               %>
              
            <tr>
              <th scope="row"><%=vcodigo%></th>
              <td><%=vnome%></td>
              <td><%=vemail%></td>
              <td><%=vproduto%></td>
             
              <td><%=vcpf%></td>
              <td><%=vsexo%></td>
              <td><%=vsenha%></td>
             
              <td><a class="active" href="Busca.do?codigo=<%=vcodigo%>" >Alterar</a></td>
              <td>
                   <a class="active2" href="Deletar.do?codigo=<%=vcodigo%>" onclick="return confirm('Confirma exclusão do registro <%=vnome%>?')">excluir </a>   
                 
              </td>
            </tr>
          
            <%} 
        %>
         
        </table>
    </body>
</<html>
