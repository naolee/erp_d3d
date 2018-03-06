<%-- 
    Document   : newjsp
    Created on : Feb 28, 2018, 3:38:17 PM
    Author     : nadia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>item
        <%=session.getAttribute("item")%><br>
        <%=session.getAttribute("c_vendorname")%><br>
        <%=session.getAttribute("c_address1")%><br>
        <%=session.getAttribute("c_address2")%><br>
        <%=session.getAttribute("c_postalcode")%><br>
        <%=session.getAttribute("c_city")%><br>
        <%=session.getAttribute("c_country")%><br>
        <%=session.getAttribute("c_currency")%><br>
        <%=session.getAttribute("c_tax")%><br>
        <%=session.getAttribute("c_code")%><br>
        <%=session.getAttribute("c_contact")%><br>
        <%=session.getAttribute("c_fax")%><br>
        <%=session.getAttribute("c_email")%><br>
        <%=session.getAttribute("c_term")%><br>
        <%=session.getAttribute("c_link")%><br>
        <%=session.getAttribute("c_platform")%><br>
        <%=session.getAttribute("item")%><br>
        <%  int item = Integer.parseInt(session.getAttribute("item").toString());
            for (int i=0; i<item; i++){
                int j=i+1;
        %>
        <%=session.getAttribute("item"+j)%><br>
    <%}%>
    </body>
</html>
