<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css" type="text/css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css" type="text/css">
  <link rel="stylesheet" href="css/Untitled_1.css" type="text/css">
</head>
<body style="background-image: url('image/reit-insight-background.jpg'); height: 100%; background-position: center; background-size: cover">
  <nav class="container navbar navbar-expand-md bg-primary navbar-dark topradius5">
    <div class="container">
      <a class="navbar-brand" href="#"><i class="fa d-inline fa-lg fa-cloud"></i><b>&nbsp;Designex3D</b></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent" aria-controls="navbar2SupportedContent" aria-expanded="false"
        aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-end" id="navbar2SupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link text-dark">You are logged in as Mamie Hamilton</a>
          </li>
        </ul>
        <a class="btn navbar-btn ml-2 text-white btn-dark"><i class="fa d-inline fa-lg fa-user-circle-o"></i> Log out </a>
      </div>
    </div>
  </nav>
  <div class="container bg-dark bottomradius5">
    <ul class="nav nav-pills border-dark bg-dark">
      <li class="nav-item">&nbsp;
        <div class="btn-group">
          <button class="active btn btn-outline-dark"><i class="fa fa-home fa-home"></i>&nbsp; Home </button>
        </div>
      </li>&nbsp;
      <li class="nav-item">
        <div class="dropdown">
          <button class="btn btn-outline-dark dropdown-toggle text-light" data-toggle="dropdown"> Sales </button>
          <div class="dropdown-menu dropdown-content">
            <a class="dropdown-item" href="#">Inquiry</a>
            <a class="dropdown-item" href="#">Quotation</a>
            <a class="dropdown-item" href="#">Sales Order</a>
            <a class="dropdown-item" href="#">Sales Invoice</a>
            <a class="dropdown-item" href="#">Shipping &amp; Transportation</a>
          </div>
        </div>
      </li>&nbsp;
      <li class="nav-item">
        <div class="dropdown">
          <button class="btn btn-outline-dark dropdown-toggle text-light" data-toggle="dropdown"> Purchasing </button>
          <div class="dropdown-menu dropdown-content">
            <a class="dropdown-item" href="#">Purchase Requisition</a>
            <a class="dropdown-item" href="#">Purchase Order</a>
            <a class="dropdown-item" href="#">Purchase Invoice</a>
          </div>
        </div>
      </li>&nbsp;
      <li class="nav-item">
        <div class="dropdown">
          <button class="btn btn-outline-dark dropdown-toggle text-light" data-toggle="dropdown"> Material Movement </button>
          <div class="dropdown-menu dropdown-content">
            <a class="dropdown-item" href="#">In/ Received</a>
            <a class="dropdown-item" href="#">Out/ Dispose</a>
            <a class="dropdown-item" href="#">Reject</a>
          </div>
        </div>
      </li>&nbsp;
      <li class="nav-item">
        <div class="dropdown">
          <button class="btn btn-outline-dark dropdown-toggle text-light" data-toggle="dropdown"> Inventory </button>
          <div class="dropdown-menu dropdown-content">
            <a class="dropdown-item" href="#">Item Registration </a>
            <a class="dropdown-item" href="#">Stock Overview </a>
            <a class="dropdown-item" href="#">Stock/ Requirements List</a>
          </div>
        </div>
      </li>&nbsp;
      <li class="nav-item">
        <div class="btn-group">
          <button class="btn btn-outline-dark text-light"> Accounting </button>
        </div>
      </li>&nbsp;
      <li class="nav-item">
        <div class="btn-group">
          <button class="btn btn-outline-dark text-light"> Budgeting </button>
        </div>
      </li>&nbsp;
      <li class="nav-item">
        <div class="btn-group">
          <button class="btn btn-outline-dark text-light"> Production </button>
        </div>
      </li>
    </ul>
  </div>
  <div class="py-3">
    <div class="container">
      <div class="row">
        <div class="col-md-12 darkbg radius5">
          <ul class="breadcrumb" style="margin-bottom:0px;margin-top:0px">
            <li class="breadcrumb-item">
              <a href="#">Home</a>
            </li>
            <li class="breadcrumb-item">
              <a href="#">Inventory Management</a>
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
              <a class="active nav-link" href="" data-toggle="pill" data-target="#create">Register New Material</a>
            </li>
            <li class="nav-item py-1">
              <a class="nav-link" href="" data-toggle="pill" data-target="#update">Update Material Details</a>
            </li>
            <li class="nav-item py-1">
              <a href="" class="nav-link" data-toggle="pill" data-target="#display">Display Material</a>
            </li>
          </ul>
        </div>
        <div class="col-8 col-md-9">
          <div class="tab-content">
            <div class="tab-pane fade show active" id="create" role="tabpanel">
              <ul class="nav nav-tabs py-2">
                <li class="nav-item">
                  <a href="" class="show active nav-link" data-toggle="pill" data-target="#create1">1. Register New Material</a>
                </li>
                <li class="nav-item">
                  <a href="" class="nav-link" onclick="" data-toggle="pill" data-target="#create2">2. Preview</a>
                </li>
              </ul>
              <div class="tab-content mt-2">
                <div class="tab-pane fade show active" id="create1" role="tabpanel">
                  <form id="regVendor" action="PR_Type1" method="post">
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
                              <option <%= session.getAttribute("c_subclass16")%> value="Tubings/Tapes/Cable Ties">Tubings/Tapes/Cable Ties</option>
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
                          <td class="padd"> <label class="fbold">Function 1</label></td>
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
                              <option <%= session.getAttribute("c_subfunc1")%> value="Extruder"><i></i>Extruder</option>
                              <option <%= session.getAttribute("c_subfunc")%> value="Other">Other</option>
                              </select> 
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </form>
                </div>
                <div class="tab-pane fade" id="create2" role="tabpanel">
                    <div class="my-1 bg-danger opacity9"><h4>&nbsp;&nbsp;&nbsp;VENDOR DETAILS</h4></div>
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
                </div>
              </div>
            </div>
              <div class="tab-content mt-2">
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
        var content = this.cells[2].innerHTML;
        var z = document.getElementById("vendorMaterial");
        z.rows[xyz].cells[1].innerHTML = '<input id=item'+xyz+' readonly="" value="'+content+'" type="text" class="form-control">';
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
        if (c_country === Singapore){
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
        cell3.innerHTML = '<div class="text-center"><a class="btn btn-primary" onclick="deleteRow_new(this)">Remove</a></div>';
        
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
            //alert("id "+document.getElementById("item"+i).id);
           // alert("name "+document.getElementById("item"+i).name);
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

