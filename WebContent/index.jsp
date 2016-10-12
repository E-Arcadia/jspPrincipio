<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>In�cio: index.jsp</h2>

	<%--Scriptlet - O que vai dentro de um m�todo --%>
	<%  String contador = "ASDFG";
		int aa;
		aa = 3 + 5;
	%>

	<%--Declarativa - O que vai no corpo da classe --%>
	<%!public String mostraNome() {
		return "Olavo Bilac";
	};%>

	<%--Express�o - Resolve a express�o e gera HTML, um �nica express�o--%>
	<br> Vari�vel contador: <%=contador%>
	<br> Vari�vel aa: 		<%=aa%>
	<br> Opera��o 1 + 1: 	<%=1 + 1%>
	<br> Chama m�todo "mostraNome()": <strong><%=mostraNome()%></strong>

	<%--Directive include --%>
	<%-- Traz toda a p�gina para ser executada --%>
	<br><br><br>Directive include "so_mostra.jsp":  
	<br><%@ include file="so_mostra.jsp"%>
	<br> Vari�vel "cor" instanciada em "so_mostra.jsp": <%=cor%>

	<%--Directive page--%>


	<%-- Tag JSP ACTION --%>
	<%--Executa a p�gina e traz o resultado --%>
	<br><br><br>JSP ACTION include "so_mostra.jsp":  
	<br><jsp:include page="so_mostra.jsp"></jsp:include>

	<%--Objetos Implicitos --%>
	<%-- out (obj implicito) = HttpServletResponse || response --%>
	<%out.println("Utilizando um obj impl�cito");%>
	<%--response.sendRedirect("so_mostra.jsp"); --%>
	<%--request.getRequestDispatcher("so_mostra.jsp").forward(request,response);--%>

	<h2>Fim: index.jsp</h2>
</body>
</html>