<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="Javascript">
	var timer = 2;
	function countdown() {
		if (timer > 0) {
			timer -= 1;
			setTimeout("countdown()", 3000);
		} else {
			location.href = 'login.jsp';
		}
	}
	countdown();
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String email = (String) request.getAttribute("email");

		out.println("<h4>Email " + email + " Cadastrado com sucesso<h4>");
		out.println("Voc� ser� redirecionado para pagina de login");
	%>
</body>
</html>
