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
              <a href="#">Purchasing</a>
            </li>
            <li class="breadcrumb-item">
              <a href="#">Purchase Requisition</a>
            </li>
            <li class="breadcrumb-item">
              <a href="#">New Vendor &amp; New Material</a>
            </li>
            <li class="breadcrumb-item active">Create Purchase Requisition</li>
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
              <a class="active nav-link" href="" data-toggle="pill" data-target="#create">Create Purchase Requisition</a>
            </li>
            <li class="nav-item py-1">
              <a class="nav-link" href="" data-toggle="pill" data-target="#update">Update Purchase Requisition</a>
            </li>
            <li class="nav-item py-1">
              <a href="" class="nav-link" data-toggle="pill" data-target="#review">Review Purchase Requisition</a>
            </li>
            <li class="nav-item py-1">
              <a href="" class="nav-link" data-toggle="pill" data-target="#display">Display Purchase Requisition</a>
            </li>
          </ul>
        </div>
        <div class="col-8 col-md-9">
          <div class="tab-content">
            <div class="tab-pane fade show active" id="create" role="tabpanel">
              <ul class="nav nav-tabs py-2">
                <li class="nav-item">
                  <a href="" class="<%= session.getAttribute("create1tab")%> nav-link" data-toggle="pill" data-target="#create1">1. Create Purchase Requisition</a>
                </li>
                <li class="nav-item">
                  <a href="" class="<%= session.getAttribute("create2tab")%> nav-link" onclick="<%= session.getAttribute("create2submit")%>" data-toggle="pill" data-target="#create2">2. Preview</a>
                </li>
              </ul>
              <div class="tab-content mt-2">
                <div class="tab-pane fade <%= session.getAttribute("create1content")%>" id="create1" role="tabpanel">
                  <form id="regVendor" action="PR_Type1" method="post">
                    <div class="form-group"> </div>
                    <table width="100%">
                      <tbody>
                        <tr>
                          <td class="padd"> <label class="fbold">Vendor name</label> </td>
                          <td colspan="3">
                            <input name="c_vendorname" value='<%= session.getAttribute("c_vendorname")%>' type="text" class="form-control text-capitalize" placeholder="&nbsp;Enter Vendor name " required="required"> </td>
                        </tr>
                        <tr>
                          <td class="padd"> <label class="fbold">Address</label> </td>
                          <td colspan="3">
                            <input name="c_address1" value='<%= session.getAttribute("c_address1")%>' type="text" class="form-control text-capitalize" placeholder="&nbsp;Address Line 1" required="required"> </td>
                        </tr>
                        <tr>
                          <td class="padd"> <label class="fbold opacity0">Address</label> </td>
                          <td colspan="3">
                            <input name="c_address2" value='<%= session.getAttribute("c_address2")%>' type="text" class="form-control text-capitalize" placeholder="&nbsp;Address Line 2" required="required"> </td>
                        </tr>
                        <tr>
                          <td class="padd"> <label class="opacity0">Postal Code</label> </td>
                          <td>
                            <input name="c_postalcode" value='<%= session.getAttribute("c_postalcode")%>' type="number" class="form-control" placeholder="&nbsp;Postal Code" required="required"> </td>
                          <td colspan="2">
                            <input name="c_city" value='<%= session.getAttribute("c_city")%>' type="text" class="form-control text-capitalize" placeholder="&nbsp;City" required="required"> </td>
                        </tr>
                        <tr>
                          <td class="padd"> <label class="opacity0">Country </label> </td>
                          <td colspan="3">
                              <select id="c_country" name="c_country" class="form-control" required="required" onchange="determineCurrencyTax()">
                              <option readonly="" disabled="" selected="" value="Country">Country</option>
                              <option <%= session.getAttribute("c_country1")%> value="Australia"><i></i>Australia</option>
                              <option <%= session.getAttribute("c_country2")%> value="China">China</option>
                              <option <%= session.getAttribute("c_country3")%> value="Malaysia">Malaysia</option>
                              <option <%= session.getAttribute("c_country4")%> value="Singapore">Singapore</option>
                            </select> </td>
                        </tr>
                        <tr>
                          <td class="padd"><label class="fbold">Contact No.</label></td>
                          <td><select name="c_code" class="form-control">
                              <option readonly="" disabled="" selected="" value="Country">Country code</option>
                              <option <%= session.getAttribute("c_code1")%> value="+61">+61 Australia</option>
                              <option <%= session.getAttribute("c_code2")%> value="+86 ">+86 China</option>
                              <option <%= session.getAttribute("c_code3")%> value="+60">+60 Malaysia</option>
                              <option <%= session.getAttribute("c_code4")%> value="+65">+65 Singapore</option>
                            </select> </td>
                          <td colspan="2">
                            <input name="c_contact" value='<%= session.getAttribute("c_contact")%>' type="number" class="form-control text-capitalize" placeholder="&nbsp;Contact no"> </td>
                        </tr>
                        <tr>
                          <td class="padd"> <label class="fbold">Fax No.</label> </td>
                          <td colspan="3">
                            <input name="c_fax" value='<%= session.getAttribute("c_fax")%>' type="number" class="form-control text-capitalize" placeholder="&nbsp;Fax no"> </td>
                        </tr>
                        <tr>
                          <td class="padd"><label class="fbold">Email</label> </td>
                          <td colspan="3">
                            <input name="c_email" value='<%= session.getAttribute("c_email")%>' type="email" class="form-control text-lowercase" placeholder="&nbsp;Email"> </td>
                        </tr>
                        <tr>
                          <td class="padd"><label class="fbold">Payment Term</label></td>
                          <td colspan=""><select name="c_term" class="form-control" required="required">
                              <option disabled="" readonly="" selected="">Payment Term</option>
                              <option <%= session.getAttribute("c_term1")%> value="Cash On Delivery">Cash On Delivery</option>
                              <option <%= session.getAttribute("c_term2")%> value="Pay Upfront">Pay Upfront</option>
                              <option <%= session.getAttribute("c_term3")%> value="30 Days Credit">30 Days Credit</option>
                            </select> </td>
                          <td align="right" class="fbold">Link&nbsp;&nbsp;</td>
                          <td>
                            <input name="c_link" value='<%= session.getAttribute("c_link")%>' type="url" class="form-control text-capitalize" placeholder="Vendor Link"> </td>
                        </tr>
                        <tr>
                          <td class="padd"> <label class="opacity0">Platform </label> </td>
                          <td colspan="3"><select name="c_platform" class="form-control" title="Platform" required="required">
                              <option disabled="" readonly="" selected="">Platform</option>
                              <option <%= session.getAttribute("c_platform1")%> value="None">None</option>
                              <option <%= session.getAttribute("c_platform2")%> value="Taobao">Taobao</option>
                            </select> </td>
                        </tr>
                        <tr>
                          <td class="padd"><p class="fbold">Currency</p></td>
                          <td>
                              <input readonly="" id="c_currency" name="c_currency" value='<%= session.getAttribute("c_currency")%>' type="text" class="form-control" placeholder="Currency"> </td>
                          <td align="right" class="fbold">Tax type&nbsp;&nbsp;</td>
                          <td>
                              <input readonly="" id="c_tax" name="c_tax" value='<%= session.getAttribute("c_tax")%>' type="text" class="form-control" placeholder="Tax"> 
                              <input id="submit_type" name="submit_type" value="1" type="hidden">
                          </td>
                        </tr>
                        <tr>
                          <td colspan="4">
                            <div align="right">
                              <button type="reset" class="btn btn-primary">Reset</button>&nbsp;&nbsp;
                              <button type="" class="btn btn-primary">Cancel</button>&nbsp;&nbsp;
                              <button type="submit" class="btn btn-primary">Next</button>
                            </div>
                            <br> </td>
                        </tr>
                      </tbody>
                    </table>
                  </form>
                </div>
                <div class="tab-pane fade <%= session.getAttribute("create2content")%> " id="create2" role="tabpanel">
                  <div align="center">
                   <form id="regMaterial" action="PR_Type1" method="post">
                    <table id="vendorMaterial" class="table table-striped">
                      <thead>
                        <tr>
                          <th class="text-center table-light leftradius5">No.</th>
                          <th class="width75 table-light">Product Description</th>
                          <th class="text-center table-light rightradius5">Option</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td class="text-center">1</td>
                          <td><input readonly id="item1" name="item1" type="text" class="form-control"></td>
                          <td class="text-center">
                            <a class="btn btn-primary text-white" onclick="deleteRow_old(this)">Remove</a>
                          </td>
                        </tr>
                      </tbody>
                    </table> 
                    <div class="text-right my-3">
                        <input id="submit_type" name="submit_type" value="2" type="hidden">
                        <input id="itemno" name="itemno" value="" type="hidden">
                        <a class="btn btn-primary text-white" data-target="#findmaterial" data-toggle="collapse">Find Materials</a>
                        <a class="btn btn-primary text-white" onclick="addMore()">Add More</a>
                        <button type="submit" class="btn btn-primary" onclick="submitRegMaterial()">Next</button>
                    </div>                       
                    </form>
                  </div>
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
                </div>
                <div class="tab-pane fade <%= session.getAttribute("create3content")%> " id="create3" role="tabpanel">
                    <div class="my-1 bg-danger opacity9"><h4>&nbsp;&nbsp;&nbsp;VENDOR DETAILS</h4></div>
                    <table class="table">
                        <tr>
                          <th>Vendor Name</th>
                          <td class="text-capitalize"><%= session.getAttribute("c_vendorname")%></td>
                        </tr>
                        <tr>
                          <th>Address</th>
                          <td class="text-capitalize">
                              <%= session.getAttribute("c_address1")%><br>
                              <%= session.getAttribute("c_address2")%><br>
                              <%= session.getAttribute("c_postalcode")%>
                              <%= session.getAttribute("c_city")%><br>
                              <%= session.getAttribute("c_country")%><br>
                          </td>
                        </tr>
                        <tr>
                          <th>Contact No.</th>
                          <td><%= session.getAttribute("c_code")%>-<%= session.getAttribute("c_contact")%></td>
                        </tr>
                        <tr>
                          <th>Fax No.</th>
                          <td><%= session.getAttribute("c_code")%>-<%= session.getAttribute("c_fax")%></td>
                        </tr>
                        <tr>
                          <th>Email</th>
                          <td><%= session.getAttribute("c_email")%></td>
                        </tr>
                        <tr>
                          <th>Payment Term</th>
                          <td class="text-capitalize"><%= session.getAttribute("c_term")%></td>
                        </tr>
                        <tr>
                          <th>Link</th>
                          <td><%= session.getAttribute("c_link")%></td>
                        </tr>
                        <tr>
                          <th>Platform</th>
                          <td class="text-capitalize"><%= session.getAttribute("c_platform")%></td>
                        </tr>
                        <tr>
                          <th>Currency</th>
                          <td><%= session.getAttribute("c_currency")%></td>
                        </tr>
                        <tr>
                          <th>Tax type</th>
                          <td><%= session.getAttribute("c_tax")%></td>
                        </tr>
                    </table>
                    <div class="my-1 bg-danger opacity9"><h4>&nbsp;&nbsp;&nbsp;VENDOR MATERIALS</h4></div>
                    <form id="regComplete" action="PR_Type1" method="post">
                        <table class="table">
                            <tr>
                                <th width="18%">No.</th>
                                <th>Description</th>
                            </tr>
                            <%  String str = session.getAttribute("item").toString();
                            int j=0;
                                if(!str.equals("")){
                                    int item = Integer.parseInt(str);
                                    for (int i=0; i<item; i++){
                                         j=i+1;
                            %>
                            <tr>
                                <td><%=i%></td>
                                <td><%=session.getAttribute("item"+j)%></td>
                            </tr>
                            <%}}%>
                        </table>
                        <div align="right">
                            <input id="submit_type" name="submit_type" value="3" type="hidden">
                            <button type="submit" class="btn btn-primary" onclick="completeRegistration()">next</button>
                        </div>
                    </form>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="update" role="tabpanel">
              <p class="">TAB pane two. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>
            <div class="tab-pane fade" id="review" role="tabpanel">
              <p class="">TAB pane three. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>
            <div class="tab-pane fade" id="display" role="tabpanel">
              <p class="">TAB pane four. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
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
    //COPY ROW VALUES TO VENDORMATERIAL TABLE
    var s1 = document.getElementById('example1234');
    for(var i = 1; i < s1.rows.length; i++){
        s1.rows[i].onclick = function(){
        var xyz = document.getElementById("selectItem").value; 
        var content1 = this.cells[0].innerHTML;
        var content2 = this.cells[2].innerHTML;
        var z = document.getElementById("vendorMaterial");
        z.rows[xyz].cells[1].innerHTML = '<input id="item"'+xyz+' name="item"'+xyz+' readonly="" value="'+content2+'" type="text" class="form-control">'+
                                        '<input hidden id="iditem"'+xyz+' name="iditem"'+xyz+' readonly="" value="'+content1+'" type="text" class="form-control">';
        };
    }
    function determineCurrencyTax() {
        var c_country = document.getElementById("c_country").value;
        if (c_country === "Australia"){
            document.getElementById("c_currency").value = "AUD";
            document.getElementById("c_tax").value = "None";
        }
        if (c_country === "China"){
            document.getElementById("c_currency").value = "RMB";
            document.getElementById("c_tax").value = "None";
        }
        if (c_country === "Malaysia"){
            document.getElementById("c_currency").value = "MYR";
            document.getElementById("c_tax").value = "GST";
        }
        if (c_country === "Singapore"){
            document.getElementById("c_currency").value = "SGD";
            document.getElementById("c_tax").value = "None";
        }
    }
    function submitRegVendor(){
        document.getElementById("regVendor").submit();
    }
    function submitRegMaterial(){
        changeId();
        var table = document.getElementById("vendorMaterial");
        var length = table.rows.length-1;
        document.getElementById("itemno").value=length;
        document.getElementById("regMaterial").submit();
    }
    function completeRegistration(){
        document.getElementById("regComplete").submit();
    }
    function addMore() {
        var table = document.getElementById("vendorMaterial");
        var countrow = table.rows.length;
        var row = table.insertRow(countrow);
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        cell1.innerHTML = '<div class="text-center">'+countrow+'</div>';
        cell2.innerHTML = '<input readonly id="item'+countrow+'" name="item'+countrow+'" type="text" class="form-control">';
        cell3.innerHTML = '<div class="text-center"><a class="btn btn-primary text-white" onclick="deleteRow_old(this)">Remove</a></div>';
        //ADD NEW OPTION TO SELECT INPUT
	var select = document.getElementById("selectItem");
	select.options[select.options.length] = new Option('Item '+countrow,countrow);
    }
    //REMOVE A ROW FROM VENDORMATERIAL
    function deleteRow_new(x) {
        var table = document.getElementById("vendorMaterial");
        var row = x.parentNode.parentNode.parentNode.rowIndex;
        table.deleteRow(row);
        //REMOVE SELECTION
	removeSelection();
        //RENUMBER THE TABLE
        renumberTable();
        //CHANGE THE VALUE OF ID
        changeId();
    }
    function removeSelection(){
        var select = document.getElementById("selectItem");
        length = select.options.length;
        if(length>2){
            for (var p=0; p<length; p++){
                select.options[select.options.length - 1] = null;
            }
            //RECREATE SELECTION
                for (var p=1; p<length; p++){
                select.options[select.options.length] = new Option('Item '+p,p);
            }
        }
        if(length<=2){
            select.options[select.options.length - 1] = null;
        }
    }
    function renumberTable(){
        var table = document.getElementById("vendorMaterial");
        var countrow = table.rows.length;
        if (countrow > 1){
            for (var a=2; a<countrow; a++){ 
                table.rows[a].cells[1].id = a;
                table.rows[a].cells[0].innerHTML = '<div class="text-center">'+a+'</div>';
            }
        }
    }
    function changeId(){
        var table=document.getElementById("vendorMaterial");
        var length=table.rows.length;
        for(var i=1; i<length; i++){
            table.rows[i].cells[1].children[0].id = "item"+i;
            table.rows[i].cells[1].children[0].name = "item"+i;
            table.rows[i].cells[1].children[1].id = "iditem"+i;
            table.rows[i].cells[1].children[1].name = "iditem"+i;
        }
    }
    function deleteRow_old(x) {
        //DELETE ROW
        var table = document.getElementById("vendorMaterial");
        var i = x.parentNode.parentNode.rowIndex;
        alert("Row index is: " + i);
        table.deleteRow(i);
    }
  </script>
</body>
</html>

                                                                                                                       