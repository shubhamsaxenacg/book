<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import ="com.cg.resume.model.ResumeModel"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display</title>
<style>
table#nat {
	width: 50%;
	background-color: #c48ec5;
}
</style>
</head>

<body>
	<%
	ResumeModel resumeModel =(ResumeModel)request.getAttribute("values");
	%>

	<table id="nat">
		<tr>
			<td>First Name</td>
			<td><%=resumeModel.getFirstName()%></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><%=resumeModel.getLastName()%></td>
		</tr>
		<tr>
			<td>Gender</td>
			<td><%=resumeModel.getGender()%></td>
		</tr>
		<tr>
			<td>Qualification</td>
			<td><%=resumeModel.getQualfication()%></td>
		</tr>
		<tr>
			<td>DOB</td>
			<td><%=resumeModel.getDate()%></td>
		</tr>
		<tr>
			<td>Hobby</td>
			<td><%=resumeModel.getHobby()%></td>
		</tr>
		<tr>
			<td>Address</td>
			<td><%=resumeModel.getAddress()%></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><%=resumeModel.getEmail()%></td>
		</tr>
		<tr>
			<td>WebSite</td>
			<td><%=resumeModel.getWebsite()%></td>
		</tr>
		<tr>
			<td>ContactNo.</td>
			<td><%=resumeModel.getContactNo()%></td>
		</tr>
		<tr>
			<td>Description</td>
			<td><%=resumeModel.getDescription()%></td>
		</tr>
		<tr>
			<td>Picture</td>
			<td><img SRC="<%=resumeModel.getPicture()%>" width="100" height="100"></td>
		</tr>

	</table>
</body>
</html>