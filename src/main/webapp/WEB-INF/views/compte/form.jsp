<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Compte</title>
</head>
<body>
 <a href="${contextPath}/user/list">users list</a>

	<form method="POST" action="${action}">
		<input type="hidden" name="id" value="${compte.id}">

		<table>
		 

			<tr>
				<td>Num</td>
				<td><input type="text" name="num" value="${compte.num}"></td>
			 </tr>
			 
			 <tr>
				<td>User</td>
				<td>
					<select name="idUser">					
					 <c:forEach var="u" items="${users}">
					 
						 <c:choose>
						      <c:when test="${compte.user.id eq u.id}">
								<option value="${u.id}" selected>${u.firstName} ${u.lastName}</option>
						      </c:when>
						      <c:otherwise>
								<option value="${u.id}" >${u.firstName} ${u.lastName}</option>
						      </c:otherwise>
   						 </c:choose>
       
				      </c:forEach>
			      	</select>
       
				
				</td>
			 </tr>

			<tr>
				<td></td>
				<td>
					<button type="submit"> ${action} </button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>