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
            <li class="breadcrumb-item active">Purchase Requisition</li>
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
                <div class="py-2">
                <table class="table tablefixed">
                    <tr>
                        <th>Vendor Type</th>
                        <td>
                            <select id="vendortype" name="vendortype" class="form-control" required="required" onchange="determineType()">
                              <option readonly="" disabled="" selected="" value="Select Vendor Type">Select Vendor Type</option>
                              <option value="Existing Vendor"><i></i>Existing Vendor</option>
                              <option value="New Vendor"><i></i>New Vendor</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Material Type</th>
                        <td>
                            <select id="materialtype" name="materialtype" class="form-control" required="required">
                              <option readonly="" disabled="" selected="" value="Select Material Type">Select Material Type</option>
                              <option value="Existing Material"><i></i>Existing Material</option>
                              <option value="New Material"><i></i>New Material</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="text-right">
                            <a class="text-white btn btn-primary" data-target="#findvendor" data-toggle="collapse">Find Vendor</a>&nbsp;
                            <a class="text-white btn btn-primary" data-target="#findmaterial" data-toggle="collapse">Find Materials</a>&nbsp;
                            <button type="button" class="btn btn-primary" onclick="prType()">Proceed</button>
                        </td>
                    </tr>
                </table>
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
      function determineType(){
        var x = document.getElementById("vendortype").value;
        var y = document.getElementById("materialtype");
        if(x==="New Vendor")
            y.disabled = true;
        else{
            y.disabled = false;
        }
      }
      function prType(){
        var x = document.getElementById("vendortype").value;
        var y = document.getElementById("materialtype").value;
        
        if (x==="New Vendor")
            location.href = "Purchasing_PurchaseRequisition_1.jsp";
        if (x==="Existing Vendor" && y==="New Material")
            location.href = "Purchasing_PurchaseRequisition_2.jsp";
        if (x==="Existing Vendor" && y==="Existing Material")
            location.href = "Purchasing_PurchaseRequisition_3.jsp";
      }
  </script>
</body>
</html>

 
