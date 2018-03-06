<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="Untitled.css" type="text/css">
  <link rel="stylesheet" href="../Untitled.css"> </head>

<body class="aaaa">
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
              <a href="#">Purchasing</a>
            </li>
            <li class="breadcrumb-item">
              <a href="#">Purchase Requisition</a>
            </li>
            <li class="breadcrumb-item active">New Vendor &amp; New Material</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="">
    <div class="">
      <div class="container">
        <div class="row border darkbg rightradius5 opacity opacity9 darkbg1">
          <div class="col-4 col-md-3 bg-dark  leftradius5 rightradius5 opacity9" style="transition: all 0.25s;">
            <ul class="nav nav-pills flex-column py-1">
              <li class="nav-item py-1">
                <a href="" class="active nav-link" data-toggle="pill" data-target="#tabone">Create New Purchase Requisition</a>
              </li>
              <li class="nav-item py-1">
                <a href="" class="nav-link" data-toggle="pill" data-target="#tabtwo">Update Purchase Requisition</a>
              </li>
              <li class="nav-item py-1">
                <a class="nav-link" href="" data-toggle="pill" data-target="#tabthree">Review Purchase Requisition</a>
              </li>
              <li class="nav-item py-1">
                <a href="" class="nav-link" data-toggle="pill" data-target="#tabthree">Display Purchase Requisition</a>
              </li>
            </ul>
          </div>
          <div class="col-8 col-md-8" style="transition: all 0.25s;">
            <div class="tab-content">
              <div class="tab-pane fade show active" id="tabone" role="tabpanel">
                <p class="">Tab pane one. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
              <div class="tab-pane fade" id="tabtwo" role="tabpanel">
                <p class="">Tab pane two. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
              <div class="tab-pane fade" id="tabthree" role="tabpanel">
                <p class="">Tab pane three. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 10px;right:10px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:180px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo&nbsp;&nbsp;
    <img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16">
  </pingendo>
</body>

</html>