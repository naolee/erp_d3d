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
            <li class="breadcrumb-item active">Existing Vendor &amp; Existing Material</li>
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
                  <a href="" class="<%= session.getAttribute("create1tab")%> nav-link" data-toggle="pill" data-target="#create1">1. Register Vendor</a>
                </li>
                <li class="nav-item">
                  <a href="" class="<%= session.getAttribute("create2tab")%> nav-link" onclick="submitRegVendor(1)" data-toggle="pill" data-target="#create2">2. Vendor's Material</a>
                </li>
                <li class="nav-item ">
                  <a class="<%= session.getAttribute("create3tab")%> nav-link " href="" data-toggle="pill" data-target="#create3">3. Preview</a>
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
                            <input name="c_email" value='<%= session.getAttribute("c_email")%>' type="email" class="form-control text-capitalize" placeholder="&nbsp;Email"> </td>
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
                              <input id="c_currency" name="c_currency" value='<%= session.getAttribute("c_currency")%>' type="text" class="form-control" placeholder="Currency"> </td>
                          <td align="right" class="fbold">Tax type&nbsp;&nbsp;</td>
                          <td>
                              <input id="c_tax" name="c_tax" value='<%= session.getAttribute("c_tax")%>' type="text" class="form-control" placeholder="Tax"> 
                              <input id="submit_type" name="submit_type" value="1" type="hidden" class="form-control" placeholder="Tax">
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
                    <table class="table  table-striped">
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
                          <td>Mark</td>
                          <td class="text-center">
                            <a class="btn btn-primary" href="#">Remove </a>
                          </td>
                        </tr>
                        <tr>
                          <td class="text-center">1</td>
                          <td>Mark</td>
                          <td class="text-center">
                            <a class="btn btn-primary" href="#">Remove </a>
                          </td>
                        </tr>
                        <tr>
                          <td class="text-center">1</td>
                          <td>Mark</td>
                          <td class="text-center">
                            <a class="btn btn-primary" href="#">Remove </a>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                    <div class="text-right px-4">
                      <a href="" class="removedeco">
                        <div>
                          <button class="btn btn-primary">Add More</button>
                        </div>
                      </a>
                    </div>
                    <div>
                      <div>
                        <button class="btn btn-info" data-target="#findmaterial" data-toggle="collapse">Find Materials</button>
                      </div>
                      <div class="collapse" id="findmaterial" py-2="">
                        <div>
                          <table>
                            <tbody>
                              <tr>
                                <td>Select Item</td>
                                <td><select class="form-control" id="sel1" title="Country code">
                              <option value="Item 1">Item 1</option>
                              <option value="China">Item 2</option>
                              <option value="Malaysia">Item  3</option>
                            </select></td>
                                <td></td>
                                <td><select class="form-control" id="sel1" title="Country code">
                              <option value="Item 1">Item 1</option>
                              <option value="China">Item 2</option>
                              <option value="Malaysia">Item  3</option>
                            </select></td>
                              </tr>
                            </tbody>
                          </table>
                          <div class="row pi-draggable" draggable="true">
                            <div class="col-md-3">Select Item</div>
                            <div class="col-md-3"></div>
                            <div class="col-md-3"></div>
                            <div class="col-md-3"></div>
                          </div>
                          <table class="table  table-striped">
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
                                <td>Mark</td>
                                <td class="text-center">
                                  <a class="btn btn-primary" href="#">Add </a>
                                </td>
                              </tr>
                              <tr>
                                <td class="text-center">1</td>
                                <td>Mark</td>
                                <td class="text-center">
                                  <a class="btn btn-primary" href="#">Add </a>
                                </td>
                              </tr>
                              <tr>
                                <td class="text-center">1</td>
                                <td>Mark</td>
                                <td class="text-center">
                                  <a class="btn btn-primary" href="#">Add </a>
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade  <%= session.getAttribute("create3content")%>" id="create3" role="tabpanel">
                  <p class="">Tab pane three. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
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
  </div>
  <script>
    function determineCurrencyTax() {
      var c_country = document.getElementById("c_country").value;
      if(c_country === "Australia"){
        document.getElementById("c_currency").value = "AUD";
        document.getElementById("c_tax").value = "None";
      }
      if(c_country === "China"){
        document.getElementById("c_currency").value = "RMB";
        document.getElementById("c_tax").value = "None";
      }
      if(c_country === "Malaysia"){
        document.getElementById("c_currency").value = "MYR";
        document.getElementById("c_tax").value = "GST";
      }
      if(c_country === "Singapore"){
        document.getElementById("c_currency").value = "SGD";
        document.getElementById("c_tax").value = "None";
      }
    }
    function submitRegVendor(){
        document.getElementById("regVendor").submit();
    }
  </script>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
</body>
</html>

