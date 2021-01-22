<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logado</title>
<style type="text/css">
     .sair{
    background: yellow;
    height: 50px;
    
}
a.sairr,a:hover{
    background: #FFA500;
    transition: .5s;
    color:white;
}
</style>
</head>

<body>   
     <%
       String email = (String) session.getAttribute("email");
     %>
     <div class="sair">
     <a class="sairr"  href="lista.jsp">Lista</a>
     </div>
     Seja bem Vindo : <%=email %> | <a href="remover_administrador.jsp">Sair</a>
     
    <h1>Vendedor</h1>
    <hr>
</body>
</html>

