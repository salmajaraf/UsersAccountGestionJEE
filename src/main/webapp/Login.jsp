<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        
        body {
           
           
           background-image: url('image/login.png');
     	background-size: 100% 100%; /* Ajuste l'chimage pour couvrir toute la page */
	    background-repeat: no-repeat; /* Empêche la répétition de l'image */
	    background-attachment: fixed; /* Fixe l'image en arrière-plan */
           
            
        }

        form {
        	 font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:block;
            background-color:  rgba(139, 69, 19, 0.5); /* Couleur de fond du formulaire */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width:30%;
            align-items: center;
            justify-content: center;
            margin-left:35%;
            margin-top:4%;
        }


        td {
            padding: 10px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            margin-left:40px;
            background-color:white;
            
           
        }

        input[type="submit"] {
            background-color: rgba(100, 50, 10, 0.5); /* Couleur de fond du bouton */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            justify-content:center;
            display:block;
            margin-left:130px;
        }

        input[type="submit"]:hover {
            background-color: rgba(180, 90, 30, 0.5); /* Couleur de fond du bouton au survol */
        }
    </style>
</head>
<body>
	<%@ include file="header2.jsp" %>
    <form method="post" action="LoginServlet">
        <table>
            <tr>
                <td>Login Id</td>
                <td><input type="text" name="login" required></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="pwd" required></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" name="Se Connecter" value="Se Connecter"></td>
            </tr>
        </table>
    </form>
     <%@ include file="footer.jsp" %>
</body>
</html>
