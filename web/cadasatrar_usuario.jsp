<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmacao</title>
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
    body{
        background-image: url("https://scontent.fbsb8-1.fna.fbcdn.net/v/t1.0-0/s640x640/121545009_665186260852028_373875081286442235_o.jpg?_nc_cat=104&_nc_sid=a26aad&_nc_ohc=6wg7zpIjZWwAX-6DQap&_nc_ht=scontent.fbsb8-1.fna&tp=7&oh=7d957cd1611d89b3921ade1737084606&oe=5FAE0FEB");
       
       margin: 0;
       padding: 0;
       font-family: sans-serif;
    }
    
</style>
</head>
<body>
    <div align="center" class="cadastro">
	 <h2>Cadastrar Login</h2>
    
      <form name="frmCadastrarLogin" action="Cadastro" method="post">
     
      
        <input class="nome" type="text" name="email" placeholder="Confirmar seu email"    >
        <input class="email" type="password" name="senha" placeholder="Confirmar sua senha"   >
     
         <input  class="botao_cadastrar" type="submit" value="cadastrar"/>     
     
      </form>
    
  
    </div>
</body>
</html>
