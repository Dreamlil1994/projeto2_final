<%-- 
    Document   : alterar
    Created on : 20/10/2020, 15:49:21
    Author     : 55619
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
         <link rel="stylesheet" type="text/css" href="style.css" />
<style type="text/css">
    .cadastro{
         position: absolute;
            top:70px;
            left:500px;
            background-color:silver;
            height: 500px;
            width:700px;
            background: rgba(255,255,255,.2);
           box-shadow: 0 5px 15px rgba(0,0,0,.5);
    }
    .botao_cadastrar{
         position: absolute;
          top:350px;
          height: 50px;
            width:500px;
            border-radius:100px;
             background-color:yellow;
             
               left:150px;
            
          
         
        
    }
    .senha{
        position: absolute;
        top:250px;
        height: 30px;
         width:220px;
         left:150px;
         border-radius:100px;
        
    }
    .nome_senha{
         position: absolute;
         top:250px;
         left:100px;
         
        
    }
    .nome{
        position: absolute;
        left:150px;
        height: 30px;
        border-radius:100px;
    }
    .nome_nome{
        position: absolute;
        left:100px;
        
    }
    .email{
        position: absolute;
         top:150px;
         height: 30px;
         width:200px;
           left:150px;
           border-radius:100px;
        
    }
    .nome_email{
        position: absolute;
        top:150px;
        left:100px;
        
    }
    .numero{
        position: absolute;
         top:200px;
          left:140px;
           height: 30px;
         width:500px;
         border-radius:100px;
    }
    .nome_numero
    {
      position: absolute;  
       top:200px;
        left:80px;
    }
    .home{
         position: absolute; 
         top:400px;
          left:200px;
        
    }
    .login{
         position: absolute;  
         top:400px;
          left:150px;
        
    }
    .cpf{
        position: absolute;
         top:80px;
         height: 30px;
         width:200px;
           left:400px;
           border-radius:100px;
        
    }
    .nome_cpf {
        position: absolute;  
       top:80px;
        left:360px;
       
    }
    .sexo{
          position: absolute;
         top:140px;
         height: 30px;
         width:50px;
           left:440px;
           border-radius:100px;
        
    }
    .nome_sexo{
        position: absolute;  
       top:140px;
        left:380px;
        
        
    }
    .preco{
          position: absolute;
         top:200px;
         height: 30px;
         width:120px;
           left:430px;
           border-radius:100px;
        
        
    }
    .nome_preco{
        position: absolute;  
       top:200px;
        left:380px;
        
    }
    .index{
         position: absolute;
          top:400px;
          left: 250px;
        
    }
    .entrar{
         position: absolute;
          top:400px;
          left:320px;
    }
    body{
        background-image: url("https://scontent.fbsb8-1.fna.fbcdn.net/v/t1.0-0/s640x640/121545009_665186260852028_373875081286442235_o.jpg?_nc_cat=104&_nc_sid=a26aad&_nc_ohc=6wg7zpIjZWwAX-6DQap&_nc_ht=scontent.fbsb8-1.fna&tp=7&oh=7d957cd1611d89b3921ade1737084606&oe=5FAE0FEB");
       
       margin: 0;
       padding: 0;
       font-family: sans-serif;
    }
    .confirmar{
        position: absolute;
          top:400px;
          left: 400px;
        
    }
  

</style>

   <%  
        String vcodigo="";
        String vnome="";
        String vemail="";
         String vproduto="";
         
          String vcpf="";
          String vsexo="";
          String vsenha="";
        
         vcodigo = (String) request.getAttribute("uCodigo").toString();
         vnome = (String) request.getAttribute("uNome").toString();
         vemail = (String) request.getAttribute("uEmail").toString();
          vproduto = (String) request.getAttribute("uProduto").toString();
           
            vcpf = (String) request.getAttribute("uCpf").toString();
             vsexo = (String) request.getAttribute("uSexo").toString();
              vsenha = (String) request.getAttribute("uSenha").toString();
               
        
    %>
    
    </head>
    <body>
        <div align="center" class="cadastro">
          <form action="Alterar.do" method="post">
           <input type="hidden" name="codigo" value="<%=vcodigo%>">  
           <label class="nome_nome"> nome:</label> <input  class="nome" type="text" name="nome" value="<%=vnome%>"><br>
           <label class="nome_email"> email:</label> <input class="email" type="text" name="email" value="<%=vemail%>"><br>
           <label class="nome_numero"> produto:</label> <input  class="numero" type="text" name="produto" value="<%=vproduto%>"><br>
         
           <label class="nome_cpf">cpf:</label> <input class="cpf" type="text" name="cpf" value="<%=vcpf%>"><br>
           <label class="nome_sexo">sexo:</label> <input class="sexo" type="text" name="sexo" value="<%=vsexo%>"><br>
           <label class="nome_senha">senha: </label> <input  class="senha"  type="text" name="senha" value="<%=vsenha%>"><br>
            <input  class="botao_cadastrar" type="submit" value="alterar"><br>
            
             
        </form>
        </div>
    </body>
</html>