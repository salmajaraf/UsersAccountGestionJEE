<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Failure</title>
    <style>
        body {
            background-image: url('image/fail.png');
		     background-size: 100% 100%; /* Ajuste l'chimage pour couvrir toute la page */
		    background-repeat: no-repeat; /* Empêche la répétition de l'image */
		    background-attachment: fixed; /* Fixe l'image en arrière-plan */
        }
		.failed{
			background-color:#ff0000;
			padding-bottom:8px;
		}
        .failed h2 {
        	padding-top:10px;
        	font-family: Arial, sans-serif;
            color: white ; /* Rouge */
            text-align:center;
        }

        .failed  p {
            color: #333333; /* Noir */
            font-size: 18px;
            margin-bottom: 20px;
            text-align:center;
        }

        .failed a {
            color: white; /* Bleu */
            text-decoration: none;
            text-decoration: underline;
            
        }

        .failed a:hover {
            color:yellow;
        }
    </style>
</head>
<body>
	<div class="failed">
		<h2>Registration Failure</h2>
	    <p>Désolé, une erreure s'est introduite pendant votre inscription. Merci de réessayer une autre fois.</p>
	    <p><a href="registration.jsp">Retournez à l'inscription</a></p>
	</div>

</body>
</html>
