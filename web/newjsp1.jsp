<%-- 
    Document   : newjsp1
    Created on : Mar 12, 2018, 4:39:37 PM
    Author     : nadia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><%@ include file = "header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>            <a class="btn btn-primary text-white" data-target="#findmaterial" data-toggle="collapse">Find Materials</a>&nbsp;&nbsp;&nbsp;

                      <div class="collapse" id="findmaterial">
                        <div>
                            <select onchange="copyItem()" id="selectItem" class=" my-3 form-control" required="required">
                              <option value="1">Item 1</option>
                            </select> 
                            <table id="example1234" class="tablefixed table table-striped">
                               <thead>
                                 <tr>
                                   <th class="text-center table-light leftradius5">ID</th>
                                   <th class="text-center table-light">Name</th>
                                   <th class="text-center table-light">Description</th>
                                   <th class="text-center table-light">Sub-Class</th>
                                   <th class="text-center table-light">Type</th>
                                   <th class="text-center table-light">Function 1</th>
                                   <th class="text-center table-light">Function 2</th>
                                   <th class="text-center table-light rightradius5">Sub-Function</th>
                                 </tr>
                               </thead>
                               <tbody>
                                   <% int rowmaterial = Integer.parseInt(session.getAttribute("rowmaterial").toString());
                                    for (int i=0; i<rowmaterial; i++){
                                   %>
                                 <tr>
                                    <td class="text-center"><%=session.getAttribute("1material"+i)%></td>
                                    <td class="text-center"><%=session.getAttribute("2material"+i)%></td>
                                    <td class="text-center"><%=session.getAttribute("3material"+i)%></td>
                                    <td class="text-center"><%=session.getAttribute("4material"+i)%></td>
                                    <td class="text-center"><%=session.getAttribute("5material"+i)%></td>
                                    <td class="text-center"><%=session.getAttribute("6material"+i)%></td>
                                    <td class="text-center"><%=session.getAttribute("7material"+i)%></td>
                                    <td class="text-center"><%=session.getAttribute("8material"+i)%></td>
                                 </tr><%}%>
                               </tbody>
                            </table>
                        </div>
                      </div>
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
    </body>
</html>
