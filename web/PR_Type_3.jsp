<%-- 
    Document   : PR_Type
    Created on : Feb 23, 2018, 12:51:48 PM
    Author     : nadia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="Untitled.css" type="text/css">
  <link rel="stylesheet" href="../Untitled.css">
</head>

<body>
    hELLO WORLD
  <%=session.getAttribute("c_vendorname")%><br>
  <%=session.getAttribute("c_street")%><br>
  <%=session.getAttribute("c_postalcode")%><br>
  <%=session.getAttribute("c_city")%><br>
  <%=session.getAttribute("c_country")%><br>
  <%=session.getAttribute("c_code")%><br>
  <%=session.getAttribute("c_contact")%><br>
  <%=session.getAttribute("c_fax")%><br>
  <%=session.getAttribute("c_email")%><br>
  <%=session.getAttribute("c_term")%><br>
  <%=session.getAttribute("c_currency")%><br>
  <%=session.getAttribute("c_tax")%><br>
        
</body>
</html>
