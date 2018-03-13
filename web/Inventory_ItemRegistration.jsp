<%@ include file = "header.jsp" %>
  <div class="py-3">
    <div class="container">
      <div class="row">
        <div class="col-md-12 darkbg radius5">
          <ul class="breadcrumb" style="margin-bottom:0px;margin-top:0px">
            <li class="breadcrumb-item">
              <a href="#">Home</a>
            </li>
            <li class="breadcrumb-item">
              <a href="#">Inventory</a>
            </li>
            <li class="breadcrumb-item active">Item Registration</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="py-1">
    <div class="container">
      <div class="row border darkbg rightradius5 opacity opacity9 darkbg1">
        <div class="col-4 col-md-3 bg-dark  leftradius5 rightradius5 opacity9">
          <ul class="nav nav-pills flex-column py-1">
            <li class="nav-item py-1">
              <a class="<%=session.getAttribute("createpanel")%> nav-link" href="" data-toggle="pill" data-target="#create">Register New Material</a>
            </li>
            <li class="nav-item py-1">
              <a class="<%=session.getAttribute("updatepanel")%> nav-link" href="" data-toggle="pill" data-target="#update">Update Material Details</a>
            </li>
            <li class="nav-item py-1">
              <a href="" class="nav-link" data-toggle="pill" data-target="#delete">Delete Material</a>
            </li>
            <li class="nav-item py-1">
              <a href="" class="nav-link" data-toggle="pill" data-target="#display">Display Material</a>
            </li>
          </ul>
        </div>
        <div class="col-8 col-md-9">
          <div class="tab-content">
            <div class="tab-pane fade <%=session.getAttribute("createtab")%>" id="create" role="tabpanel">
              <ul class="nav nav-tabs py-2">
                <li class="nav-item">
                  <a href="" class="<%= session.getAttribute("create1tab")%> nav-link" data-toggle="pill" data-target="#create1">1. Register New Material</a>
                </li>
                <li class="nav-item ">
                  <a class="<%= session.getAttribute("create2tab")%> nav-link " href="" data-toggle="pill" data-target="#create2">2. Preview</a>
                </li>
              </ul>
              <div class="tab-content mt-2">
                <div class="tab-pane fade <%= session.getAttribute("create1content")%>" id="create1" role="tabpanel">
                  <form id="regMaterial" action="ItemRegistrationController" method="post">
                    <div class="form-group"> </div>
                    <table width="100%">
                      <tbody>
                        <tr>
                          <td class="padd"> <label class="fbold">Material name</label> </td>
                          <td colspan="3">
                            <input name="c_materialname" value='<%= session.getAttribute("c_materialname")%>' type="text" class="form-control text-capitalize" placeholder="&nbsp;Enter Material Name " required="required"> </td>
                        </tr>
                        <tr>
                          <td class="padd"> <label class="fbold">Description</label> </td>
                          <td colspan="3">
                            <input name="c_desc" value='<%= session.getAttribute("c_desc")%>' type="text" class="form-control text-capitalize" placeholder="&nbsp;Material Description" required="required"> </td>
                        </tr>
                        <tr>
                            <td class="padd"> <label class="fbold">Unit of Measurement</label> </td>
                            <td colspan="3"><select name="c_uom" class="form-control">
                              <option readonly="" disabled="" selected="" value="Unit of Measurement">Unit of Measurement</option>
                              <option <%= session.getAttribute("c_subclass1")%> value="pcs">pcs</option>
                              <option <%= session.getAttribute("c_subclass2")%> value="ea">ea</option>
                             </select> 
                            </td>
                        </tr>
                        <tr>
                          <td class="padd"> <label class="fbold">Sub-Class</label> </td> 
                          <td colspan="3"><select name="c_subclass" class="form-control">
                              <option readonly="" disabled="" selected="" value="Sub-Class">Sub-Class</option>
                              <option <%= session.getAttribute("c_subclass1")%> value="Acrylic">Acrylic</option>
                              <option <%= session.getAttribute("c_subclass2")%> value="Aluminium Profile + Accessories">Aluminium Profile + Accessories</option>
                              <option <%= session.getAttribute("c_subclass3")%> value="Bearing">Bearing</option>
                              <option <%= session.getAttribute("c_subclass4")%> value="Belt">Belt</option>
                              <option <%= session.getAttribute("c_subclass5")%> value="Brass">Brass</option>
                              <option <%= session.getAttribute("c_subclass6")%> value="CNC Aluminium">CNC Aluminium</option>
                              <option <%= session.getAttribute("c_subclass7")%> value="Electronics">Electronics</option>
                              <option <%= session.getAttribute("c_subclass8")%> value="Magnet">Magnet</option>
                              <option <%= session.getAttribute("c_subclass9")%> value="Non-Standard Fastener">Non-Standard Fastener</option>
                              <option <%= session.getAttribute("c_subclass10")%> value="Others">Others</option>
                              <option <%= session.getAttribute("c_subclass11")%> value="Peek">Peek</option>
                              <option <%= session.getAttribute("c_subclass12")%> value="Pulley">Pulley</option>
                              <option <%= session.getAttribute("c_subclass13")%> value="Rod">Rod</option>
                              <option <%= session.getAttribute("c_subclass14")%> value="SD Card">SD Card</option>
                              <option <%= session.getAttribute("c_subclass15")%> value="Stepper Motor">Stepper Motor</option>
                              <option <%= session.getAttribute("c_subclass16")%> value="Tubings/ Tapes/ Cable Ties">Tubings/ Tapes/ Cable Ties</option>
                              <option <%= session.getAttribute("c_subclass17")%> value="Wire Harness">Wire Harness</option>
                            </select> 
                          </td>
                        </tr>
                        <tr>
                          <td class="padd"> <label class="fbold">Type</label> </td> 
                          <td colspan="3"><select name="c_type" class="form-control">
                              <option readonly="" disabled="" selected="" value="Country">Type</option>
                              <option <%= session.getAttribute("c_type1")%> value="Custom">Custom</option>
                              <option <%= session.getAttribute("c_type2")%> value="Standard">Standard</option>
                            </select> 
                          </td>
                        <tr>
                          <td class="padd"><label class="fbold">Function 1</label></td>
                          <td>
                              <select id="c_func1" name="c_func1" class="form-control" required="required">
                              <option readonly="" disabled="" selected="" value="Function 1">Function 1</option>
                              <option <%= session.getAttribute("c_func11")%> value="Build Platform"><i></i>Build Platform</option>
                              <option <%= session.getAttribute("c_func12")%> value="Control">Control</option>
                              <option <%= session.getAttribute("c_func13")%> value="Gantry">Gantry</option>
                              <option <%= session.getAttribute("c_func14")%> value="Obsolete">Obsolete</option>
                              <option <%= session.getAttribute("c_func15")%> value="Power Supply">Power Supply</option>
                              <option <%= session.getAttribute("c_func16")%> value="Structure">Structure</option>
                              <option <%= session.getAttribute("c_func17")%> value="TBC">TBC</option>
                              <option <%= session.getAttribute("c_func18")%> value="User Interface">User Interface</option>
                            </select> 
                          </td>
                          <td class="padd text-right"> <label class="fbold">Function 2 </label> </td>
                          <td>
                              <select id="c_func2" name="c_func2" class="form-control" required="required">
                              <option readonly="" disabled="" selected="" value="Function 2">Function 2</option>
                              <option <%= session.getAttribute("c_func21")%> value="Extruder"><i></i>Extruder</option>
                              <option <%= session.getAttribute("c_func22")%> value="Other">Other</option>
                              </select> 
                            </td>
                        </tr>
                        <tr>
                          <td class="padd"><label class="fbold">Sub-Functions</label></td>
                          <td colspan="3">
                              <select id="c_subfunc" name="c_subfunc" class="form-control" required="required">
                              <option readonly="" disabled="" selected="" value="Sub-Functions">Sub-Functions</option>
                              <option <%= session.getAttribute("c_subfunc1")%> value="X"><i></i>X</option>
                              <option <%= session.getAttribute("c_subfunc2")%> value="Y">Y</option>
                              <option <%= session.getAttribute("c_subfunc3")%> value="Z">Z</option>
                              </select> 
                          </td>
                        </tr>
                        <tr>
                            <th class="padd">Printer</th>
                            <th colspan="2 ridge" class="padd">Qty / Unit</th>
                            <th class="padd">Qty for Spare</th>
                        </tr>
                        <tr>
                            <td class="padd">AP 1.1</td>
                            <td colspan="2"><input name="c_quap1.1" value='<%= session.getAttribute("c_quap1.1")%>' type="number" class="form-control width75" placeholder="&nbsp;Qty / Unit of AP 1.1" required="required"> </td>
                            <td><div align="right"><input name="c_qsap1.1" value='<%= session.getAttribute("c_qsap1.1")%>' type="number" min="0" step="1" class="form-control" placeholder="&nbsp;Qty for Spare of AP 1.1" required="required"></div></td>
                        </tr>
                        <tr>
                            <td class="padd">AP X</td>
                            <td colspan="2"><input name="c_quapx" value='<%= session.getAttribute("c_quapx")%>' type="number" class="form-control width75" placeholder="&nbsp;Qty / Unit of AP X" required="required"> </td>
                            <td><input name="c_qsapx" value='<%= session.getAttribute("c_qsapx")%>' type="number" class="form-control" placeholder="&nbsp;Qty for Spare of AP X" required="required"> </td>
                        </tr>
                        <tr>
                            <td class="padd">OX</td>
                            <td colspan="2"><input name="c_quox" value='<%= session.getAttribute("c_quox")%>' type="number" class="form-control width75" placeholder="&nbsp;Qty / Unit of OX" required="required"> </td>
                            <td><input name="c_qsox" value='<%= session.getAttribute("c_qsox")%>' type="number" class="form-control" placeholder="&nbsp;Qty for Spare of OX" required="required"> </td>
                        </tr>
                        <tr>
                            <td class="padd">OX2</td>
                            <td colspan="2"><input name="c_quox2" value='<%= session.getAttribute("c_quox2")%>' type="number" class="form-control width75" placeholder="&nbsp;Qty / Unit of OX2" required="required"> </td>
                            <td><input name="c_qsox2" value='<%= session.getAttribute("c_qsox2")%>' type="number" class="form-control" placeholder="&nbsp;Qty for Spare of OX2" required="required"> </td>
                        </tr>
                        <tr>
                            <td class="padd">POX</td>
                            <td colspan="2"><input name="c_qupox" value='<%= session.getAttribute("c_qupox")%>' type="number" class="form-control width75" placeholder="&nbsp;Qty / Unit of POX" required="required"> </td>
                            <td><input name="c_qspox" value='<%= session.getAttribute("c_qspox")%>' type="number" class="form-control" placeholder="&nbsp;Qty for Spare of POX" required="required"> </td>
                        </tr>
                        <tr>
                          <td colspan="4">
                            <div align="right"> 
                              <input id="submit_type" name="submit_type" value="1" type="hidden">
                              <button type="reset" class="btn btn-primary">Reset</button>&nbsp;&nbsp;
                              <button type="submit" class="btn btn-primary">Preview</button>
                            </div>
                            <br> 
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </form>
                </div>
                <div class="tab-pane fade <%= session.getAttribute("create2content")%> " id="create2" role="tabpanel">
                  <div class="my-1 bg-danger opacity9"><h4>&nbsp;&nbsp;&nbsp;MATERIAL DETAILS</h4></div>
                    <form id="S" action="ItemRegistrationController" method="post">
                    <table class="table">
                        <tr>
                          <th>Material Name</th>
                          <td class="text-capitalize"><%= session.getAttribute("c_materialname")%></td>
                        </tr>
                        <tr>
                          <th>Description</th>
                          <td class="text-capitalize"><%= session.getAttribute("c_desc")%><br></td>
                        </tr>
                        <tr>
                          <th>Sub-Class No.</th>
                          <td><%= session.getAttribute("c_subclass")%></td>
                        </tr>
                        <tr>
                          <th>Type</th>
                          <td><%= session.getAttribute("c_type")%></td>
                        </tr>
                        <tr>
                          <th>Function 1</th>
                          <td><%= session.getAttribute("c_func1")%></td>
                        </tr>
                        <tr>
                          <th>Function 2</th>
                          <td><%= session.getAttribute("c_func2")%></td>
                        </tr>
                        <tr>
                          <th>Sub-Functions</th>
                          <td><%= session.getAttribute("c_subfunc")%></td>
                        </tr>
                    </table> 
                    <div class="py-2" align="right">
                        <input id="submit_type" name="submit_type" value="2" type="hidden">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
                </div>
              </div>
            </div>
            <div class="tab-pane fade <%=session.getAttribute("updatetab")%>" id="update" role="tabpanel">
              <ul class="nav nav-tabs py-2">
                <li class="nav-item">
                  <a href="" class="<%= session.getAttribute("update1tab")%> nav-link" data-toggle="pill" data-target="#update1">1. Update Material</a>
                </li>
                <li class="nav-item ">
                  <a class="<%= session.getAttribute("update2tab")%> nav-link " href="" data-toggle="pill" data-target="#update2">2. Preview</a>
                </li>
              </ul>
              <div class="tab-content mt-2">
                <div class="tab-pane fade <%= session.getAttribute("update1content")%>" id="update1" role="tabpanel">
                  <form action="ItemRegistrationController" method="post">
                    <div class="form-group"> </div>
                    <table id="dsd" width="100%">
                      <tbody>
                        <tr>
                          <td class="padd"> <label class="fbold">Material ID</label> </td>
                          <td colspan="3">
                            <input readonly id="mat_id" name="mat_id" value='<%= session.getAttribute("mat_id")%>' type="text" class="form-control text-capitalize" placeholder="&nbsp;Material ID " required="required"> </td>
                        </tr>
                        <tr>
                          <td class="padd"> <label class="fbold">Material name</label> </td>
                          <td colspan="3">
                            <input id="u_materialname" name="u_materialname" value='<%= session.getAttribute("u_materialname")%>' type="text" class="form-control text-capitalize" placeholder="&nbsp;Enter Material Name " required="required"> </td>
                        </tr>
                        <tr>
                          <td class="padd"><label class="fbold">Description</label> </td>
                          <td colspan="3">
                            <input id="u_desc" name="u_desc" value='<%= session.getAttribute("u_desc")%>' type="text" class="form-control text-capitalize" placeholder="&nbsp;Material Description" required="required"> </td>
                        </tr>
                        <tr>
                          <td class="padd"> <label class="fbold">Sub-Class</label> </td> 
                          <td colspan="3"><select id="u_subclass" name="u_subclass" class="form-control">
                              <option readonly="" disabled="" selected="" value="Sub-Class">Sub-Class</option>
                              <option <%= session.getAttribute("u_subclass1")%> value="Acrylic">Acrylic</option>
                              <option <%= session.getAttribute("u_subclass2")%> value="Aluminium Profile + Accessories">Aluminium Profile + Accessories</option>
                              <option <%= session.getAttribute("u_subclass3")%> value="Bearing">Bearing</option>
                              <option <%= session.getAttribute("u_subclass4")%> value="Belt">Belt</option>
                              <option <%= session.getAttribute("u_subclass5")%> value="Brass">Brass</option>
                              <option <%= session.getAttribute("u_subclass6")%> value="CNC Aluminium">CNC Aluminium</option>
                              <option <%= session.getAttribute("u_subclass7")%> value="Electronics">Electronics</option>
                              <option <%= session.getAttribute("u_subclass8")%> value="Magnet">Magnet</option>
                              <option <%= session.getAttribute("u_subclass9")%> value="Non-Standard Fastener">Non-Standard Fastener</option>
                              <option <%= session.getAttribute("u_subclass10")%> value="Others">Others</option>
                              <option <%= session.getAttribute("u_subclass11")%> value="Peek">Peek</option>
                              <option <%= session.getAttribute("u_subclass12")%> value="Pulley">Pulley</option>
                              <option <%= session.getAttribute("u_subclass13")%> value="Rod">Rod</option>
                              <option <%= session.getAttribute("u_subclass14")%> value="SD Card">SD Card</option>
                              <option <%= session.getAttribute("u_subclass15")%> value="Stepper Motor">Stepper Motor</option>
                              <option <%= session.getAttribute("u_subclass16")%> value="Tubings/ Tapes/ Cable Ties">Tubings/ Tapes/ Cable Ties</option>
                              <option <%= session.getAttribute("u_subclass17")%> value="Wire Harness">Wire Harness</option>
                            </select> 
                          </td>
                        </tr>
                        <tr>
                          <td class="padd"> <label class="fbold">Type</label> </td> 
                          <td colspan="3"><select id="u_type" name="u_type" class="form-control">
                              <option readonly="" disabled="" selected="" value="Country">Type</option>
                              <option <%= session.getAttribute("u_type1")%> value="Custom">Custom</option>
                              <option <%= session.getAttribute("u_type2")%> value="Standard">Standard</option>
                            </select> 
                          </td>
                        <tr>
                          <td class="padd"><label class="fbold">Function 1</label></td>
                          <td>
                              <select id="u_func1" id="u_func1" name="u_func1" class="form-control" required="required">
                              <option readonly="" disabled="" selected="" value="Function 1">Function 1</option>
                              <option <%= session.getAttribute("u_func11")%> value="Build Platform"><i></i>Build Platform</option>
                              <option <%= session.getAttribute("u_func12")%> value="Control">Control</option>
                              <option <%= session.getAttribute("u_func13")%> value="Gantry">Gantry</option>
                              <option <%= session.getAttribute("u_func14")%> value="Obsolete">Obsolete</option>
                              <option <%= session.getAttribute("u_func15")%> value="Power Supply">Power Supply</option>
                              <option <%= session.getAttribute("u_func16")%> value="Structure">Structure</option>
                              <option <%= session.getAttribute("u_func17")%> value="TBC">TBC</option>
                              <option <%= session.getAttribute("u_func18")%> value="User Interface">User Interface</option>
                            </select> 
                          </td>
                          <td class="padd text-right"> <label class="fbold">Function 2 </label> </td>
                          <td>
                              <select id="u_func2" name="u_func2" class="form-control" required="required">
                              <option readonly="" disabled="" selected="" value="Function 2">Function 2</option>
                              <option <%= session.getAttribute("u_func21")%> value="Extruder"><i></i>Extruder</option>
                              <option <%= session.getAttribute("u_func22")%> value="Other">Other</option>
                              </select> 
                            </td>
                        </tr>
                        <tr>
                          <td class="padd"><label class="fbold">Sub-Functions</label></td>
                          <td colspan="3">
                              <select id="u_subfunc" name="u_subfunc" class="form-control" required="required">
                              <option readonly="" disabled="" selected="" value="Sub-Functions">Sub-Functions</option>
                              <option <%= session.getAttribute("u_subfunc1")%> value="X"><i></i>X</option>
                              <option <%= session.getAttribute("u_subfunc2")%> value="Y">Y</option>
                              <option <%= session.getAttribute("u_subfunc3")%> value="Z">Z</option>
                              </select> 
                          </td>
                        </tr>
                        <tr>
                          <td colspan="4">
                            <div align="right"> 
                              <input id="submit_type" name="submit_type" value="3" type="hidden">
                              <a class="text-white btn btn-primary" data-target="#findmaterial" data-toggle="collapse">Find Materials</a>&nbsp;
                              <button type="submit" class="btn btn-primary">Preview</button>
                            </div>
                            <br> 
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </form>
                      <div class="collapse" id="findmaterial">
                        <div>
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
                </div>
                <div class="tab-pane fade <%= session.getAttribute("update2content")%> " id="update2" role="tabpanel">
                  <div class="my-1 bg-danger opacity9"><h4>&nbsp;&nbsp;&nbsp;MATERIAL DETAILS</h4></div>
                    <form action="ItemRegistrationController" method="post">
                    <table class="table">
                        <tr>
                          <th>Material Name</th>
                          <td class="text-capitalize"><%= session.getAttribute("u_materialname")%></td>
                        </tr>
                        <tr>
                          <th>Description</th>
                          <td class="text-capitalize"><%= session.getAttribute("u_desc")%><br></td>
                        </tr>
                        <tr>
                          <th>Sub-Class</th>
                          <td><%= session.getAttribute("u_subclass")%></td>
                        </tr>
                        <tr>
                          <th>Type</th>
                          <td><%= session.getAttribute("u_type")%></td>
                        </tr>
                        <tr>
                          <th>Function 1</th>
                          <td><%= session.getAttribute("u_func1")%></td>
                        </tr>
                        <tr>
                          <th>Function 2</th>
                          <td><%= session.getAttribute("u_func2")%></td>
                        </tr>
                        <tr>
                          <th>Sub-Functions</th>
                          <td><%= session.getAttribute("u_subfunc")%></td>
                        </tr>
                    </table> 
                    <div class="py-2" align="right">
                        <input id="submit_type" name="submit_type" value="4" type="hidden">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="delete" role="tabpanel">
                <div class="py-3">
                    <table id="tabledelete" class="tablefixed table table-striped">
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
                           <%  rowmaterial = Integer.parseInt(session.getAttribute("rowmaterial").toString());
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
                       <form id="formdelete" action="ItemRegistrationController" method="post">
                            <input id="submit_type" name="submit_type" value="5" type="hidden">
                            <input id="d_mat_id" name="d_mat_id" value="" type="hidden">
                       </form>
                </div>
            </div>
            <div class="tab-pane fade" id="display" role="tabpanel">
                <div class="py-3">
                    <table id="example14" class="tablefixed table table-striped">
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
                           <%  rowmaterial = Integer.parseInt(session.getAttribute("rowmaterial").toString());
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
          </div>
        </div>
      </div>
    </div>
  </div><br>
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script>
    $(document).ready(function() {
        $('#example1234').DataTable();
    } );
    $(document).ready(function() {
        $('#example14').DataTable();
    } );
    $(document).ready(function() {
        $('#tabledelete').DataTable();
    } );
    //COPY ROW VALUES TO VENDORMATERIAL TABLE
    var s1 = document.getElementById('example1234');
    for(var i = 1; i < s1.rows.length; i++){
        s1.rows[i].onclick = function(){
            var z = document.getElementById("dsd");
            var content1 = this.cells[0].innerHTML; // ID
            var content2 = this.cells[1].innerHTML; // MATERIAL NAME
            var content3 = this.cells[2].innerHTML; // DESCRIPTION
            var content4 = this.cells[3].innerHTML; // SUBCLASS
            var content5 = this.cells[4].innerHTML; // TYPE
            var content6 = this.cells[5].innerHTML; // FUNCTION1
            var content7 = this.cells[6].innerHTML; // FUNCTION2
            var content8 = this.cells[7].innerHTML; // SUBFUNCTIONS

            document.getElementById("mat_id").value = content1;
            document.getElementById("u_materialname").value = content2;
            document.getElementById("u_desc").value = content3;

            //DETERMINING SUBCLASS SELECTED INDEX
            if (content4==="Acrylic")
                document.getElementById("u_subclass").selectedIndex = 1;
            if (content4==="Aluminium Profile + Accessories")
                document.getElementById("u_subclass").selectedIndex = 2;
            if (content4==="Bearing")
                document.getElementById("u_subclass").selectedIndex = 3;
            if (content4==="Belt")
                document.getElementById("u_subclass").selectedIndex = 4;
            if (content4==="Brass")
                document.getElementById("u_subclass").selectedIndex = 5;
            if (content4==="CNC Aluminium")
                document.getElementById("u_subclass").selectedIndex = 6;
            if (content4==="Electronics")
                document.getElementById("u_subclass").selectedIndex = 7;
            if (content4==="Magnet")
                document.getElementById("u_subclass").selectedIndex = 8;
            if (content4==="Non-Standard Fastener")
                document.getElementById("u_subclass").selectedIndex = 9;
            if (content4==="Others")
                document.getElementById("u_subclass").selectedIndex = 10;
            if (content4==="Peek")
                document.getElementById("u_subclass").selectedIndex = 11;
            if (content4==="Pulley")
                document.getElementById("u_subclass").selectedIndex = 12;
            if (content4==="Rod")
                document.getElementById("u_subclass").selectedIndex = 13;
            if (content4==="SD Card")
                document.getElementById("u_subclass").selectedIndex = 14;
            if (content4==="Stepper Motor")
                document.getElementById("u_subclass").selectedIndex = 15;
            if (content4==="Tubings/ Tapes/ Cable Ties")
                document.getElementById("u_subclass").selectedIndex = 16;
            if (content4==="Wire Harness")
                document.getElementById("u_subclass").selectedIndex = 17;
                        
            //DETERMINING TYPE SELECTED INDEX
            if (content5==="Custom")
                document.getElementById("u_type").selectedIndex = 1;
            if (content5==="Standard")
                document.getElementById("u_type").selectedIndex = 2;
            
            //DETERMINING FUNCTION 1 SELECTED INDEX
            if (content6==="Build Platform")
                document.getElementById("u_func1").selectedIndex = 1;
            if (content6==="Control")
                document.getElementById("u_func1").selectedIndex = 2;
            if (content6==="Gantry")
                document.getElementById("u_func1").selectedIndex = 3;
            if (content6==="Obsolete")
                document.getElementById("u_func1").selectedIndex = 4;
            if (content6==="Power Supply")
                document.getElementById("u_func1").selectedIndex = 5;
            if (content6==="Structure")
                document.getElementById("u_func1").selectedIndex = 6;
            if (content6==="TBC")
                document.getElementById("u_func1").selectedIndex = 7;
            if (content6==="User Interface")
                document.getElementById("u_func1").selectedIndex = 8;

            //DETERMINING FUNCTION 2 SELECTED INDEX
            if (content7==="Extruder")
                document.getElementById("u_func2").selectedIndex = 1;
            if (content7==="Other")
                document.getElementById("u_func2").selectedIndex = 2;
            
            //DETERMINING SUBFUNCTION SELECTED INDEX
            if (content8==="X")
                document.getElementById("u_subfunc").selectedIndex = 1;
            if (content8==="Y")
                document.getElementById("u_subfunc").selectedIndex = 2;
            if (content8==="Z")
                document.getElementById("u_subfunc").selectedIndex = 3;
        };
    }
    
    var s2 = document.getElementById('example14');
    for(var i = 1; i < s2.rows.length; i++){
        s2.rows[i].onclick = function(){
            var z = document.getElementById("dsd");
            var content1 = this.cells[0].innerHTML; // ID
            var content2 = this.cells[1].innerHTML; // MATERIAL NAME
            var content3 = this.cells[2].innerHTML; // DESCRIPTION
            var content4 = this.cells[3].innerHTML; // SUBCLASS
            var content5 = this.cells[4].innerHTML; // TYPE
            var content6 = this.cells[5].innerHTML; // FUNCTION1
            var content7 = this.cells[6].innerHTML; // FUNCTION2
            var content8 = this.cells[7].innerHTML; // SUBFUNCTIONS
            alert(  "Material ID: "+content1+"\n"+
                    "Material Name: "+content2+"\n"+
                    "Description: "+content3+"\n"+
                    "Sub-Class: "+content4+"\n"+
                    "Type: "+content5+"\n"+
                    "Function 1: "+content6+"\n"+
                    "Function 2: "+content7+"\n"+
                    "Sub-Function: "+content8+"\n");
        };
    }
    var s3 = document.getElementById('tabledelete');
    for(var i = 1; i < s3.rows.length; i++){
        s3.rows[i].onclick = function(){
            var content1 = this.cells[0].innerHTML; // ID
            var content2 = this.cells[1].innerHTML; // MATERIAL NAME
            var content3 = this.cells[2].innerHTML; // DESCRIPTION
            var content4 = this.cells[3].innerHTML; // SUBCLASS
            var content5 = this.cells[4].innerHTML; // TYPE
            var content6 = this.cells[5].innerHTML; // FUNCTION1
            var content7 = this.cells[6].innerHTML; // FUNCTION2
            var content8 = this.cells[7].innerHTML; // SUBFUNCTIONS
            
            var r = confirm("Delete the following material?\n\n"+
                            "Material ID: "+content1+"\n"+
                            "Material Name: "+content2+"\n"+
                            "Description: "+content3+"\n"+
                            "Sub-Class: "+content4+"\n"+
                            "Type: "+content5+"\n"+
                            "Function 1: "+content6+"\n"+
                            "Function 2: "+content7+"\n"+
                            "Sub-Function: "+content8+"\n");
            if (r === true) {
                var y=confirm("Confirm to delete "+content2+"?");
                if(y===true){
                    document.getElementById("d_mat_id").value = content1;
                    document.getElementById("formdelete").submit();
                }
            }
        };
    }
  </script>
</html>

