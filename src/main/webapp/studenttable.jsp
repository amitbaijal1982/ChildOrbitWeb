<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="s" uri="/struts-tags"%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Smart Attendance System</title>

	<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="bootstrap/css/simple-sidebar.css">
	<link rel="stylesheet" href="theme/theme.css">

</head>

<body>

	<div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <div class="left_panel">
		   
				<ul class="nav_left"> 
		
					<li>
						<a  href="#"><i class="fa fa-graduation-cap fa-2x"></i>Manage Students</a>
					</li>
					
					<li>
						<a href="#"><i class="fa fa-user fa-2x"></i>Manage Teachers</a>
					</li>
<!--		
					<li>
						<a href="#"><i class="fa fa-map-marker fa-2x"></i>Maps</a>
					</li>
-->
					<li>
						<a href="#"><i class="fa fa-list-alt fa-2x"></i>Student's Attendance Report</a>
					</li>
					
					<li>
						<a href="#"><i class="fa fa-list-alt fa-2x"></i>Class wise Attendance Report</a>
					</li>
<!--
					<li>
						<a href="#"><i class="fa fa-cog fa-2x"></i>Settings</a>
					</li>
					
					<li>
						<a href="#"><i class="fa fa-question-circle fa-2x"></i>Help</a>
					</li>
					
					<li>
						<a href="#"><i class="fa fa-life-ring fa-2x"></i>Support</a>
					</li>
-->		
				</ul>
			</div>  <!-- Left Panel -->
        </div>  <!-- /#sidebar-wrapper -->

        
        <div id="page-content-wrapper">
			
			<!-- Top Bar -->	
            <div class="container-fluid padding">
			
				<div class="top_strip">
					<div class="pull-left">
						<a href="#menu-toggle" class="btn btn-default pull-left" id="menu-toggle"><i class="fa  fa-list fa-2x"></i></a>
					</div>
                                            <div class="pull-center">
					<ul class="top_list">
					    <b> <li><i class="fa fa-school fa-2x"></i> School Admin Panel</li>
						<li><i class="fa fa-clock-o fa-2x"></i> 11-Jun-15/12:20PM</li>
						<li><i class="fa fa-user fa-2x"></i> User Name</li>
						<li> <a href="#" class="btn log"> <i class="fa fa-sign-out fa-2x"></i> Logout</a></li>
                                            </b>
					</ul>
				</div>
			</div> <!-- container-fluid padiing -->
            <!-- Top Bar Ends-->  
			
	</div>

			<!-- Logo Bar Starts-->  
			<div class="col-lg-12">
				
					<div class="logo pull-center" ><img src="images/logo.png" /></div>
				</div>
			
				<div class="clearfix" ></div>
				<div class="clearfix"></div>
				<div class="spacer1"></div>
				
				<!-- Logo Bar Ends-->  
				<div class="panel_bg">
				<h2>Student Details</h2>    
			<form>

 
<div class="container">
 <div class="table-responsive">          
  <table class="table">
<table class="table table-bordered">


    <thead>
		
  <tr>
<b>
    <th>  <center>  Sr No.   </center>  </th>
    <th> Student Name </th>
    <th> Admission No.</th>
    <th> <center>  Class   </center>   </th>
    <th>    <center>  Section   </center></th>
    <th>  <center> Roll No.   </center>  </th>
    <th>  <center> Action  </center> </th>
 
</b>
  </tr>
<s:iterator value=""  var="search">	
  <tr>
    <td>  <form role="form">
    <div class="radio">
      <label><input type="radio" name="optradio"> </label>
    </div></td>
    <td></td>
    <td> </td>
    <td> </td>
    <td> </td>
    <td> </td>
<td>  
  <button type="button" class="btn btn-default btn-xs">View</button>
  <button type="button" class="btn btn-default btn-xs">Delete</button>
</div>
  </tr>
  </s:iterator>
</table> 
<div class="col-md-4 ">
		
					</div>  <!-- form-group -->
  	
					<button type="select" class="btn btn-default btn-sm" pull-right">Select</button>
					<button type="cancel" class="btn btn-default btn-sm" pad-left">Clear</button>
</div>
				</form>
				</div> <!-- panel_bg -->
    
				<div class="spacer"></div>
	
			</div> <!-- col-lg-12 -->                   
        </div>    <!-- page-content-wrapper -->
    </div> <!-- wrapper -->

	<div class="col-md-11"> </div>



</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript">//&lt;![CDATA[ 
$(window).load(function(){
    $('li a').click(function(e) {
       
        $('a').removeClass('active');
        $(this).addClass('active');
    });
});//]]&gt;  

</script>
 <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

<script src="bootstrap/js/bootstrap.js"></script>
</html>
