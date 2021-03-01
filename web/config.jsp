<%@page import="essentials.config"%>
<%
    config c = new config();
    c.setDefaulturl("profil.jsp");
    c.setLoginUrl("login.jsp");
    c.setRequest(request);
    c.setResponse(response);
    c.setSession(session);
    
%>