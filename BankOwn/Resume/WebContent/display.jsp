<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display</title>
<style>
table#nat{
	width: 50%;
	background-color: #c48ec5;
}
</style>
</head>

<body>
<% String firstname =  request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	String gender = request.getParameter("gender");
	String highqual = request.getParameter("highQual"); %>
	
	<table id ="nat">
<tr>
	<td>First Name</td>
	<td><%= firstname %></td>
</tr>
<tr>
	<td>Last Name</td>
	<td><%= lastname %></td>
</tr>
<tr>
	<td>Gender</td>
	<td><%= gender %></td>
</tr>
<tr>
	<td>Highest Qualification</td>
	<td><%= highqual %></td>
</tr>

</table>
</body>
</html>