<%@include file="config.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/style.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div class="container">
            <div class="regbox box">
                <img class="avatar" src="img/img1.jpg">
                <h1>
Inscription</h1>
<form action="inscrit.jsp"method="post"> 
                    
 <p>
Nom et Prénom</p>
<input type="text"  name="nom_prenom" required>

 <p>
Email</p>
<input type="text"  name="email" required>

<p>
Mot de passe</p>
<input type="password"  name="motpass" required>

<p>
Numéro de téléphone </p>
<input type="text"  name="num_tel" required>

<input type="submit" value="Connexion">
</form>
              
</div>
</div>
</body>
</html>

