<%-- 
    Document   : cadastro
    Created on : 06/10/2020, 15:51:30
    Author     : 55619
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
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
</head>
    
    <body>
        
        <div align="center" class="cadastro">
    <h1>Cadastrar Usuario</h1>
     <form action="projeto.do" method="post"   >
        <label class="nome_nome">Nome: </label>
        <input  class="nome" type="text" name="nome" placeholder="Digite o nome "> <br> <br>
         <label class="nome_cpf">CPF: </label>
        <input  class="cpf" type="text" name="cpf" placeholder="Digite o cpf "> 
        <label class="nome_sexo">Sexo: </label>
        <input  class="sexo" type="text" name="sexo" placeholder="M/F">
        <label class="nome_email">Email: </label>
        <input class="email" type="email" name="email" placeholder="Digite seu email "> <br> <br>
        <label class="nome_numero"> Produto: </label>
         <select class="numero" name="produto">
<OPTION>Calca Moletom Masculina Jogger R$ 57,10
<OPTION>Camisa Blunt Masculina R$ 49,90
<OPTION>Corta Vendo R$ 149,90
<OPTION> Chapeu Bucket Duplo R$ 39,90
<OPTION> Pochete da Fila R$ 29,90
<OPTION> Camisa Varias Bandas R$ 29,90
<OPTION> Tenis Hocks Sonora R$ 129,10
<OPTION> Quadro do 2pac R$ 49,90
<OPTION> Tenis All Star R$ 49,90
<OPTION> Cerveja Heineken R$ 4,90
<OPTION> Meia longa Blunt R$ 29,90
<OPTION> Todos relogios G-Shock R$ 69,90
<OPTION> Touca Chronic R$ 49,90
<OPTION> Caneca Dragon Ball R$ 39,90
<OPTION> Skate Montado R$ 199,90
<OPTION> Tenis Hocks R$ 129,90
    
   

</SELECT> <br> <br>
        
         <label class="nome_senha">Senha: </label>
        <input class="senha" type="password" name="senha" placeholder="Digite senha com 8 caracteristicas "> <br> <br>
        
        <input class="botao_cadastrar"   type="submit" value="Cadastrar" >
        <a class="index" href="index.jsp">Home</a>
        <a  class="entrar" href="login.jsp">Entrar</a>
        <a  class="confirmar" href="cadasatrar_usuario.jsp">Confirmar Cadastro</a>
       
        
    </form>
   
    </div>
   
    </body>
</html>
