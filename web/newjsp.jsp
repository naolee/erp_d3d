<%@ include file = "header.jsp" %>

  <div class="py-1">
    <div class="container">
<div>
    <form id="regVendor" action="PR_Type1" method="post">
        <div class="f20 border border-dark topradius5 py-1 px-3 bg-primary">QUOTATION DETAILS</div>
        <div class="form-group border border-dark bottomradius5 px-2 py-2">
        <table width="100%">
          <tbody>
            <tr>
              <td class="padd"> <label class="fbold">Issued by</label> </td>
              <td>
                <input readonly="" name="issuedby" value='<%= session.getAttribute("issuedby")%>' type="text" class="form-control text-capitalize" required="required"> 
              </td>
              <td class="padd text-right"> <label class="fbold">Issued date</label> </td>
              <td>
                <input readonly="" name="issueddate" value='<%= session.getAttribute("issueddate")%>' type="text" class="form-control text-capitalize" required="required"> 
              </td>
            </tr>
            <tr>
              <td class="padd"> <label class="fbold">Vendor</label> </td>
              <td>
                <input readonly="" name="issuedby" value='<%= session.getAttribute("issuedby")%>' type="text" class="form-control text-capitalize" required="required"> 
              </td>
              <td class="padd text-right"> <label class="fbold">Material required by</label> </td>
              <td>
                <input name="issueddate" value='<%= session.getAttribute("issueddate")%>' type="date" class="form-control text-capitalize" required="required"> 
              </td>
            </tr>
            <tr>
              <td class="padd"> <label class="fbold">Quotation No.</label> </td>
              <td>
                <input name="issuedby" value='<%= session.getAttribute("issuedby")%>' type="text" class="form-control text-capitalize" required="required"> 
              </td>
              <td class="padd text-right"> <label class="fbold">Quotation Date</label> </td>
              <td>
                <input name="issueddate" value='<%= session.getAttribute("issueddate")%>' type="date" class="form-control text-capitalize" required="required"> 
              </td>
            </tr>
          </tbody>
        </table>
        </div>
        <div class="f20 border border-dark topradius5 py-1 px-3 bg-primary">MATERIAL DETAILS</div>
        <div class="form-group border border-dark bottomradius5 px-2 py-2">
        <table id="prmaterial" width="100%" class="fixedtable">
            <tbody class="">
              <tr>
                  <th colspan="9">Material(s) requested:</th>
              </tr>
              <tr class=" bg-white opacity9">
                  <th class="text-center border border-dark">No</th>
                  <th class="text-center border border-dark">Product code</th>
                  <th class="text-center border border-dark">Product desc</th>
                  <th class="text-center border border-dark">UOM</th>
                  <th class="text-center border border-dark">Stock</th>
                  <th class="text-center border border-dark">Required</th>
                  <th class="text-center border border-dark">Purchase</th>
                  <th class="text-center border border-dark">Price</th>
                  <th class="text-center border border-dark">Option</th>
              </tr>
              <tr class=" bg-white opacity9">
                  <td class="border border-dark py-1 px-1">1</td>
                  <td class="border border-dark py-1 px-1"><input readonly="" name="" value='<%= session.getAttribute("")%>' type="number" class="form-control" required="required"></td>
                  <td class="border border-dark py-1 px-1"><input readonly="" name="" value='<%= session.getAttribute("")%>' type="number" class="form-control" required="required"></td>
                  <td class="border border-dark py-1 px-1"><input readonly="" name="" value='<%= session.getAttribute("")%>' type="number" class="form-control" required="required"></td>
                  <td class="border border-dark py-1 px-1"><input readonly="" name="" value='<%= session.getAttribute("")%>' type="number" class="form-control" required="required"></td>
                  <td class="border border-dark py-1 px-1"><input readonly="" name="" value='<%= session.getAttribute("")%>' type="number" class="form-control" required="required"></td>
                  <td class="border border-dark py-1 px-1"><input readonly="" name="" value='<%= session.getAttribute("")%>' type="number" class="form-control" required="required"></td>
                  <td class="border border-dark py-1 px-1"><input readonly="" name="" value='<%= session.getAttribute("")%>' type="number" class="form-control" required="required"></td>
                  <td class="border border-dark py-1 px-1"><a class="btn btn-primary text-white" onclick="deleteRow_new(this)">Remove</a></td>
              </tr>
          </tbody>
        </table>
        <div class="text-right py-2"></div>
        <div class="text-right py-2">
            <a class="btn btn-primary text-white" data-target="#findmaterial" data-toggle="collapse">Find Materials</a>&nbsp;&nbsp;&nbsp;
            <a class="btn btn-primary text-white" onclick="addMore()">Add More</a>
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
                   <th class="text-center table-light rightradius5">Stock</th>
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
                 </tr><%}%>
               </tbody>
            </table>
        </div>
    </div>
    </div>
    </form>
</div>
</div>
</div>
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
        z.rows[xyz].cells[1].innerHTML = 
                '<input id="item"'+xyz+' name="item"'+xyz+' readonly="" value="'+content2+'" type="text" class="form-control">'+
                '<input hidden id="iditem"'+xyz+' name="iditem"'+xyz+' readonly="" value="'+content1+'" type="text" class="form-control">';
        };
    }
    function addMore() {
        var table = document.getElementById("prmaterial");
        var countrow = table.rows.length;
        var no = countrow-1;
        var row = table.insertRow(countrow);
        row.className = 'bg-white opacity9';
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        var cell4 = row.insertCell(3);
        var cell5 = row.insertCell(4);
        var cell6 = row.insertCell(5);
        var cell7 = row.insertCell(6);
        var cell8 = row.insertCell(7);
        var cell9 = row.insertCell(8);
        cell1.className = "border border-dark py-1 px-1";
        cell2.className = "border border-dark py-1 px-1";
        cell3.className = "border border-dark py-1 px-1";
        cell4.className = "border border-dark py-1 px-1";
        cell5.className = "border border-dark py-1 px-1";
        cell6.className = "border border-dark py-1 px-1";
        cell7.className = "border border-dark py-1 px-1";
        cell8.className = "border border-dark py-1 px-1";
        cell9.className = "border border-dark py-1 px-1";
        cell1.innerHTML = no;
        cell2.innerHTML = '<input readonly id="p_code'+no+'" name="p_code'+no+'" type="number" class="form-control" required="required">';
        cell3.innerHTML = '<input readonly id="p_desc'+no+'" name="p_desc'+no+'" type="number" class="form-control" required="required">';
        cell4.innerHTML = '<input readonly id="uom'+no+'" name="uom'+no+'" type="number" class="form-control" required="required">';
        cell5.innerHTML = '<input readonly id="stock'+no+'" name="stock'+no+'" type="number" class="form-control" required="required">';
        cell6.innerHTML = '<input readonly id="req'+no+'" name="req'+no+'" type="number" class="form-control" required="required">';
        cell7.innerHTML = '<input readonly id="pur'+no+'" name="pur'+no+'" type="number" class="form-control" required="required">';
        cell8.innerHTML = '<input readonly id="price'+no+'" name="price'+no+'" type="number" class="form-control" required="required">';
        cell9.innerHTML = '<a class="btn btn-primary text-white" onclick="deleteRow_new(this)">Remove</a>';
        //ADD NEW OPTION TO SELECT INPUT
	var select = document.getElementById("selectItem");
	select.options[select.options.length] = new Option('Item '+no,no);
    }
    function deleteRow_new(x) {
        var table = document.getElementById("prmaterial");
        var length = table.rows.length;
        if(length>3){
            var row = x.parentNode.parentNode.rowIndex;
            table.deleteRow(row);
            //REMOVE SELECTION
            removeSelection();
            //RENUMBER THE TABLE
            renumberTable();
            //CHANGE THE VALUE OF ID
            changeId();
        }
    }
    function removeSelection(){
        var select = document.getElementById("selectItem");
        length = select.options.length;
        alert(length);
        if(length>2){
            for (var p=0; p<length; p++){
                select.options[select.options.length - 1] = null;
            }
            //RECREATE SELECTION
                for (var p=1; p<length; p++){
                select.options[select.options.length] = new Option('Item '+p,p);
            }
        }
        if(length===2){
           select.options[select.options.length - 1] = null;
        }
    }
    function renumberTable(){
        var table = document.getElementById("prmaterial");
        var countrow = table.rows.length;
        if (countrow > 1){
            for (var a=2; a<countrow; a++){ 
                var b=a-1;
                table.rows[a].cells[1].id = a;
                table.rows[a].cells[0].innerHTML = '<div class="text-center">'+b+'</div>';
            }
        }
    }
    function changeId(){
        var table=document.getElementById("prmaterial");
        var length=table.rows.length;
        for(var i=2; i<length; i++){
            var y=i-1;
            table.rows[i].cells[1].children[0].id = "p_code"+y;
            table.rows[i].cells[1].children[0].name = "p_code"+y;
            table.rows[i].cells[1].children[1].id = "p_desc"+y;
            table.rows[i].cells[1].children[1].name = "p_desc"+y;
            table.rows[i].cells[1].children[2].id = "uom"+y;
            table.rows[i].cells[1].children[2].name = "uom"+y;
            table.rows[i].cells[1].children[3].id = "stock"+y;
            table.rows[i].cells[1].children[3].name = "stock"+y;
            table.rows[i].cells[1].children[4].id = "req"+y;
            table.rows[i].cells[1].children[4].name = "req"+y;
            table.rows[i].cells[1].children[5].id = "pur"+y;
            table.rows[i].cells[1].children[5].name = "pur"+y;
            table.rows[i].cells[1].children[6].id = "price"+y;
            table.rows[i].cells[1].children[6].name = "price"+y;
        }
    }
</script>
</body>
</html>