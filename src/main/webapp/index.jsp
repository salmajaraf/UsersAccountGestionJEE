<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Page d'Accueil</title>
    <style>
        body {
             background-image: url('image/index.png');
		     background-size: 100% 100%;
		     background-repeat: no-repeat;
		     background-attachment: fixed;
		     text-align: center;
        }

        .tilte h1{
            
            color: #333333;
            text-shadow: 2px 2px 2px #cccccc;
        }

        .title p{
            
            color: #666666;
            font-size: 18px;
            margin-bottom: 20px;
        }

      
        
        .custom-footer {
           margin-top: 381px;
           
        }
    </style>
</head>
<body>
	<%@ include file="header2.jsp" %>
	<div class="title">
		<h1 >Bienvenue sur notre site</h1>
	    <p >Merci de vous connecter ou de vous inscrire pour accéder</p>
	    <p > à notre contenu.</p>
	</div>
    
    <div class="custom-footer">
        <%@ include file="footer.jsp" %>
    </div>
</body>
</html>
