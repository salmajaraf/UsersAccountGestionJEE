<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%
String nom = "";
if (session.getAttribute("nom") != null) {
    nom = session.getAttribute("nom").toString();
} else {
    response.sendRedirect("Login.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome Page</title>
    <style>
        body {
        	max-height:100px ;
            background-image: url('image/welcome.png');
            
	     	background-size: 100% 100%; /* Ajuste l'chimage pour couvrir toute la page */
		    background-repeat: no-repeat; /* Empêche la répétition de l'image */
		    background-attachment: fixed; /* Fixe l'image en arrière-plan */
        }


        h2 {
            margin-top:100 px;
            margin-left:30px;
        }

        img {
            max-width: 50%;
            border-radius: 10px;
            margin-top: 10px;
            margin-bottom:1px;
            margin-left:200px;
        }

        h3 {
            margin-top: 20px;
            font-size: 24px;
            color:rgba(66, 30, 18, 0.7);
            margin-left:450px;
        }

        a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
            margin-top: 10px;
            display: block;
        }

        a:hover {
            text-decoration: underline;
        }
        .cust-footer {
            margin-top: 200px;
        }
    </style>
</head>
<body>
	<%@ include file="header.jsp" %>	
    <div>
        <h2>Bienvenue <%=nom %></h2>
    </div>
    <div>
    	<h3>Menu du jour</h3>
        <img src="image/MENU.png" alt="Menu du jour">
     </div>
    <div class="cust-footer">
        <%@ include file="footer.jsp" %>
    </div>
</body>
</html>
