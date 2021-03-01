<%@page import="essentials.Connectionbd"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
    String nom_prenom = request.getParameter("nom_prenom");
            String email = request.getParameter("email");
            String mot_pass = request.getParameter("motpass");
            String num_tel = request.getParameter("num_tel");
            
String requete = "INSERT INTO membre(nom_prenom, Email, mdp, tel) VALUES ('"+ nom_prenom + "','"+ email +"','" +mot_pass + "','"+num_tel+"')";
  Connectionbd c = new Connectionbd(); 
  out.println(c.driver());
   out.println(c.OpenConnexion());
  out.print (c.updateExec(requete)+ "tuples ont été mis à jour") ;
%> 
    
    </body>
</html>
