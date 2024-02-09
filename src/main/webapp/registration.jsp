
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page Inscription</title>
<link rel="stylesheet" type="text/css" href="Registration.css">
</head>
<body>
<%@ include file="header2.jsp" %>
<form method="post" action="RegistrationServlet">
<table>
	<tr>
		<td>First Name </td>
		<td><input type="text" name="fsname" required></td>
	</tr>
	<tr>
		<td>Last Name </td>
		<td><input type="text" name="lsname" required></td>
	</tr>
	<tr>
		<td>Login ID </td>
		<td><input type="text" name="login" required></td>
	</tr>
	<tr>
		<td>Password  </td>
		<td><input type="text"  name="pwd" required></td>
	</tr>
	<tr>
		<td>Date Of Birth </td>
		<td><input type="date" name="dob" required></td>
	</tr>
	<tr>
		<td>Mobile Number </td>
		<td><input type="text" name="mobile" required></td>
	</tr>
	<tr>
	    <td colspan="2"><input type="submit" name="Register" value="Register"></td>
	</tr>
</table>
</form>
<%@ include file="footer.jsp" %>
</body>
</html>