<%@page import="essentials.Connectionbd"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/style.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <%
            Connectionbd c=new Connectionbd();
            c.driver();
            c.OpenConnexion();
            
            String mail=request.getParameter("mail");
            String mdp=request.getParameter("mdp");
            
            if(request.getParameter("membre")!=null){ 
                String sql = "select * from membre where Email='"+mail+"' and  mdp='"+ mdp +"'";
		 ResultSet  rst=c.selectExec(sql);
            if(rst.next()){
		  	String id = rst.getString(1);			
			session.setAttribute("mail",mail);
			session.setAttribute("mdp",mdp);
			session.setAttribute("id",id);
			response.sendRedirect("profil.jsp");}

             else {
 
        %>
        <div class="container">
            <div class="regbox box">
                <img class="avatar" src="img/img1.jpg">
                <h1>
Réseau Social</h1>
<form action="index.jsp" method="post">
                   
                   <p>
Email</p>
<input type="text"  name="mail" required>
                   <p>
Mot de passe</p>
<input type="password"  name="mdp" required>
                   <input type="submit" value="Connexion" name="membre">
                   <a href="N_compte.jsp">créer un compte</a>
                </form><% } }%>
</div>
</div>
</body>
</html>
