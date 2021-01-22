<%-- 
    Document   : login
    Created on : 06/10/2020, 17:13:00
    Author     : 55619
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Formulário de Login e Registro com HTML5 e CSS3</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <link rel="stylesheet" type="text/css" href="style.css" />
<style type="text/css">
.cadastro{
         position: absolute;
            top:15px;
            left:500px;
            background-color:silver;
            height: 500px;
            width:500px;
           background: rgba(255,255,255,.2);
           box-shadow: 0 5px 15px rgba(0,0,0,.5);
    }
    .botao_cadastrar{
         position: absolute;
          top:350px;
          height: 50px;
            width:300px;
            border-radius:100px;
             background-color:yellow;
             
               left:100px;
            
          
         
        
    }
     .nome{
        position: absolute;
        left:80px;
        height: 50px;
        width:350px;
        top: 150px;
       
    }
    
    .email{
        position: absolute;
         top:250px;
         height: 50px;
         width:350px;
           left:80px;
           
        
    }
    
        
   
     .index{
         position: absolute;
          top:400px;
          left: 250px;
          color: blue;
        
    }
    .entrar{
         position: absolute;
          top:400px;
          left:320px;
          color:blue;
    }
    body{
        background-image: url("https://scontent.fbsb8-1.fna.fbcdn.net/v/t1.0-0/s640x640/121545009_665186260852028_373875081286442235_o.jpg?_nc_cat=104&_nc_sid=a26aad&_nc_ohc=6wg7zpIjZWwAX-6DQap&_nc_ht=scontent.fbsb8-1.fna&tp=7&oh=7d957cd1611d89b3921ade1737084606&oe=5FAE0FEB");
       
       margin: 0;
       padding: 0;
       font-family: sans-serif;
    }
    .usuario{
        height: 55px;
        width:50px;
        position: absolute;
        top:150px;
        left:30px;
        
    }
    .carta{
        height: 55px;
        width:50px;
        left:30px;
         position: absolute;
        top:250px;
        
    }
    
    
</style>
</head>
<body>
    <div align="center" class="cadastro">
    <h1>Login</h1>
     <form  name="Login" action="Loginn" method="post"  >
         
        <img class="usuario" src="data:image/png;base64,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"/>
        <input  class="nome" type="text" name="email" placeholder="Digite o nome "> <br> <br>
        
        <img class="carta" src="data:image/jpeg;base64,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"/>
        <input class="email" type="password" name="senha" placeholder="Digite a senha com 8 caracteries "> <br> <br>
        <input class="botao_cadastrar" type="submit" value="Entrar" onclick="validarLogin()">
        <a class="index" href="index.jsp">Home</a>
        <a  class="entrar" href="cadastro.jsp">Cadastrar</a>
     </form>
    </div>
    <script type="text/javascript">
  function validarLogin(){
	if(document.Login.email.value==""){
		alert("Campo Usuário Não Informado");  
		return false;
	} 
	if(document.Login.senha.value==""){ 
		alert("Campo Senha Não Informado");
		return false;
	} 
	
	document.Login.submit();
  }
</script>
    
</body>
</html>
