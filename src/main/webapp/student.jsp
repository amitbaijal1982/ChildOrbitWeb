<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="s" uri="/struts-tags"%>


<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Smart Attendance System</title>
<script>
function search(button_id) {
	var key = document.getElementById(button_id).value;
	var val= document.getElementById(key).value;
	
	alert(key+" , "+val);
//	 document.studentForm.action="searchStudent.action?admissionNo="+admissionNo.value;
	 document.location.href = "searchStudent.action?key="+key+"&val="+val;
	}

</script>
	<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="bootstrap/css/simple-sidebar.css">
	<link rel="stylesheet" href="theme/theme.css">

</head>

<body>
<s:iterator value=""></s:iterator>
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
			
		
				<div class="pull-right">
					<ul class="top_list">
						<li><i class="fa fa-graduation-cap fa-2x"></i> School Admin Panel</li>
						<li><i class="fa fa-clock-o fa-2x"></i> 11-Jun-15/12:20PM</li>
						<li><i class="fa fa-user fa-2x"></i> User Name</li>
						<li> <a href="#" class="btn log"> <i class="fa fa-sign-out fa-2x"></i> Logout</a></li>
					</ul>
				</div>
			</div> <!-- container-fluid padiing -->
            <!-- Top Bar Ends-->  
			
	</div>

			<!-- Logo Bar Starts-->  
			<div class="col-lg-12">
				<div style="background:#ccc;" >
					<div class="logo pull-right" ><img src="images/logo.png" /></div>
				</div>
			
				<div class="clearfix" ></div>
				<div class="clearfix"></div>
				<div class="spacer1"></div>
				
				<!-- Logo Bar Ends-->  
				<div class="panel_bg">
				<h2>Student Details</h2>    
	
				<s:form action="saveStudent.action"  method="post"  name="studentForm">
					<div class="form-group">
			
						<!-- Row 1 Begins -->
						<div class="row">
							
							<div class="col-md-4 ">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1">Name</span>
									
									
									<s:textfield  name="student.name" cssClass="form-control" id="name"></s:textfield>
									<div class="input-group-btn">
										<button class="btn btn-default search" type="button" onclick="search(this.id)" value="name" id="search1"><i class="glyphicon glyphicon-search"></i></button>
									</div>
								</div>
							</div>
					
							<div class="col-md-4">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> Admission No.</span>
									
									<s:textfield name="student.admissionNo" cssClass="form-control" id="admissionNo"/>
									<div class="input-group-btn">
										<button class="btn btn-default search" type="button" onclick="search(this.id)" value="admissionNo" id="search2"><i class="glyphicon glyphicon-search"></i></button>
									</div>
								</div>			
							</div>
							
							<div class="col-md-4 ">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> Id Card</span>
									
									<s:textfield name="student.cardNo" cssClass="form-control" id="cardNo"/>
									<div class="input-group-btn">
										<button class="btn btn-default search" type="button" onclick="search(this.id)" value="cardNo" id="search3"><i class="glyphicon glyphicon-search"></i></button>
									</div>
								</div>			
							</div>
		  
						</div>
						<!-- Row 1 Ends -->		
					
						<!-- Row 2 Begins -->		
						<div class="spacer2"></div>
						<div class="row">
							<div class="col-md-4">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> Class</span>
									
									<s:textfield name="student.clas" cssClass="form-control" id="class"/>
								</div>
							</div>
						
							<div class="col-md-4 ">	
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> Section</span>
										<s:textfield name="student.section" cssClass="form-control" id="section"/>
								</div>
							</div>
					
							<div class="col-md-4">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> Roll No.</span>
									<s:textfield name="student.classRollNo" cssClass="form-control" id="rollno"/>
								
								</div>
							</div>
						</div> 
						<!-- Row 2 Ends -->		

						<!-- Row 3 Begins -->		
						<div class="spacer2"></div>
						<div class="row">
							<div class="col-md-4">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> Address</span>
									<s:textfield name="student.address" cssClass="form-control" id="address"/>
									
								</div>
							</div>
						
							<div class="col-md-4 ">	
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> State</span>
									<s:textfield name="student.state" cssClass="form-control" id="state"/>
								</div>
							</div>
					
							<div class="col-md-4">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> City </span>
									<s:textfield name="student.city" cssClass="form-control" id="city"/>
								</div>
							</div>
						</div> 
						<!-- Row 3 Ends -->		

						<!-- Row 4 Begins -->		
						<div class="spacer2"></div>
						<div class="row">
							<div class="col-md-4">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> Gender </span>
									<s:textfield name="student.gender" cssClass="form-control" id="gender"/>
								</div>
							</div>
						
							<div class="col-md-4 ">	
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> Date of Birth</span>
									<s:textfield name="student.dateOfBirth" cssClass="form-control" id="dateOfBirth"/>
									
								</div>
							</div>
						</div> 
						<!-- Row 4 Ends -->		
						
						<!-- Row 4 Begins -->		
						<div class="spacer2"></div>
						<div class="row">
							<div class="col-md-4">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> Father's Name</span>
									<s:textfield name="student.fathername" cssClass="form-control" id="fathername"/>
								</div>
							</div>
						
							<div class="col-md-4 ">	
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> Mobile No.</span>
									<s:textfield name="student.fmobile" cssClass="form-control" id="fmobile"/>
								</div>
							</div>
						</div> 
						<!-- Row 4 Ends -->		
						
						<!-- Row 4 Begins -->		
						<div class="spacer2"></div>
						<div class="row">
							<div class="col-md-4">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> Mother's Name</span>
									<s:textfield name="student.mothername" cssClass="form-control" id="mothername"/>
								</div>
							</div>
						
							<div class="col-md-4 ">	
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> Mobile No.</span>
									<s:textfield name="student.mmobile" cssClass="form-control" id="mmobile"/>
								</div>
							</div>
						</div> 
						<!-- Row 4 Ends -->		

						<!-- Row 5 Begins -->		
						
						<div class="spacer2"></div>		
						<div class="row">
							<div class="col-md-4 ">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> Bus Route</span>
									
										<s:textfield name="student.busRouteId" cssClass="form-control" id="busRouteId"/>
								</div>
							</div>
			
							<div class="col-md-4 ">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> Bus Stop</span>
									
									<s:textfield name="student.busStopId" cssClass="form-control" id="busStopId"/>
									
								</div>
							</div>
						</div>		
						<!-- Row 5 Ends -->		
							
						<!-- Row 6 Begins -->						
						<div class="spacer2"></div>		
						<div class="row">
						
							<div class="col-md-4 ">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"> Photo</span>
									<input type="text" class="form-control" id="photo">
								</div>
							</div>

							<div class="col-md-4 ">
								<button type="cancel" class="btn btn-success left-side">Browse</button>
							</div>
							
						</div>
						<!-- Row 5 Ends -->							
		
					</div>  <!-- form-group -->
  	
					<button type="cancel" class="btn btn-default pull-right">Clear</button>
					<button type="submit" class="btn btn-default pull-right  pad-left">Save</button>
				</s:form>
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
