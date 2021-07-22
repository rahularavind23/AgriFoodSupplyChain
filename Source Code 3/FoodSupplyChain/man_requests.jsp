<%@page import="java.util.List"%>
<%@page import="com.distributor.DisPojo"%>
<%@page import="com.distributor.UserDao"%>
<!DOCTYPE html>
<html>
<head>
<title>Smart Contract</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<style type="text/css">
.filterDiv {
  display: none;
}

</style>
<style>
.alert {
	padding: 20px;
	background-color: black;
	color: white;
}

.closebtn {
	margin-left: 15px;
	color: white;
	font-weight: bold;
	float: right;
	font-size: 22px;
	line-height: 20px;
	cursor: pointer;
	transition: 0.3s;
}

.closebtn:hover {
	color: black;
}
</style>
<%
HttpSession session2=request.getSession(false);
String name=(String)session2.getAttribute("name");
String email=(String)session2.getAttribute("email");
%>
</head>
	
<body>
<!-- header -->
	<div class="agileits_header">
		<div class="w3l_offers">
			<a href="#">Food Supply Chain..!</a>
		</div>

		
		<div class="w3l_header_right" style="margin-left: 900px">
				<ul>
					<li class="dropdown profile_details_drop">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-user" aria-hidden="true"></i><span class="caret"></span>
						</a>
						<div class="mega-dropdown-menu">
							<div class="w3ls_vegetables">
								<ul class="dropdown-menu drp-mnu">
									<li>
										<a href="Logout">Logout</a>
									</li>

								</ul>
							</div>
						</div>
					</li>
				</ul>
			</div>
		<div class="clearfix"> </div>
	</div>
<!-- script-for sticky-nav -->
	<script>
	$(document).ready(function() {
		 var navoffeset=$(".agileits_header").offset().top;
		 $(window).scroll(function(){
			var scrollpos=$(window).scrollTop(); 
			if(scrollpos >=navoffeset){
				$(".agileits_header").addClass("fixed");
			}else{
				$(".agileits_header").removeClass("fixed");
			}
		 });
		 
	});
	</script>
<!-- //script-for sticky-nav -->
	<div class="logo_products">
		<h1 style="color: Green;" align="center">
				Supply Chain Management Using BlockChain
			</h1>
	</div>
<!-- //header -->
<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="inventrottable.jsp">Home</a><span>|</span></li>
				<li>Welcome&nbsp;:-<label style="color: white;"><b>&nbsp;<%=name %></b></label></li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->
<!-- banner -->
	<div class="banner">
<div class="w3l_banner_nav_left">
			<nav class="navbar nav_bottom">
			 <!-- Brand and toggle get grouped for better mobile display -->
			  <div class="navbar-header nav_2">
				  <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
			   </div> 
			   <!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
				<div id="myBtnContainer">
					<ul class="nav navbar-nav nav_1">
						<li>
								<a href="Inventory?from=inven" class="btns"
									>INVENTORY</a>
							</li>
							<li>
								<a href="manufacture.jsp" class="btns" >ADD SUPPLIER</a>
							</li>
							<li>
								<a href="Inventory?from=product" class="btns"  >ADD PRODUCT</a>
							</li>
							<li>
								<a href="man_requests.jsp" class="btns" style="background-color: black;">DISTRIBUTOR REQUEST</a>
							</li>

							<li>
								<a href="shipment.jsp" class="btns">SHIPMENT</a>
							</li>
							<li>
								<a href="ManufactureRequest" class="btns">TRACE</a>
							</li>
						
					</ul>
					</div>
				 </div><!-- /.navbar-collapse -->
			</nav>
		</div>
		</div>
		<div class="w3l_banner_nav_right"><br/><br/>
		<h1 align="center" style="background-color: teal;color: white;">DISTRIBUTOR REQUEST...!</h1>
		
		
			<div class="w3ls_w3l_banner_nav_right_grid w3ls_w3l_banner_nav_right_grid_veg">
				<div class="w3ls_w3l_banner_nav_right_grid1 w3ls_w3l_banner_nav_right_grid1_veg">
<%
UserDao userDao=new UserDao();
List<DisPojo> list=userDao.loadDistributorRequestsId(name);
if(!list.isEmpty()){
%>
<table class="timetable_sub" id="myTable" style="margin-right: unset">

<thead>
												<tr>
													<th>S.No</th>
													<th>Distibutor-ID</th>
													<th>Product Id</th>
													<th>Product Name</th>
													<th>Price</th>
													<th>Packets</th>
													<th>Date & Time</th>
													<th>Image</th>
													<th>Status</th>
												</tr>
											</thead>
<%
int i=1;
for(DisPojo disPojo: list){	
%>											
<tbody>
	
<%--	<td><img src="http://localhost:8888/SmartContract/images/<%=buyPojo.getImage() %>" style="height: 50px;width: 50px"/></td>--%>
	<tr>
	<td><%=i %>.</td>
	<td><%=disPojo.getDistributor() %></td>
	<td><%=disPojo.getProductId() %></td>
	<td><%=disPojo.getProductName() %></td>
	<td><%=disPojo.getPrice() %></td>
	<td><%=disPojo.getPackets() %></td>
	<td><%=disPojo.getDateTime() %></td>
	<td><img src="http://localhost:8888/<%=disPojo.getImage().replace("webapps","") %>"
										style="height: 50px; width: 50px" /></td>
	<%if(disPojo.getStatus().equalsIgnoreCase("pending")){ %>
	<td><button style="background-color:green;"><a href="ManActions?type=approve&pid=<%=disPojo.getProductId() %>&date=<%=disPojo.getDateTime() %>" style="color: white;">Approve</a></button style="ba" >&nbsp;<button style="background-color:maroon"><a href="ManActions?type=decline&pid=<%=disPojo.getProductId() %>&date=<%=disPojo.getDateTime() %>" style="color: white;">Decline</a></button></td>
	<%}else{ %>
	<td style="color:blue;
	"><%=disPojo.getStatus() %></td>
	<%} %>
	</tr>											
</tbody>
<%i++;} %>
</table>											
<%}else{%>
<label style="margin-left: 425px;margin-top: 150px">No Distributer Requests found</label>
<%} %>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

					<div class="clearfix"> </div>
				</div>
			</div>
			
		<script type="text/javascript" src="js/cart.js"></script>
			
		</div>
		<div class="clearfix"></div>
	</div>
<!-- //banner -->
<!-- footer -->


<script type="text/javascript">
window.onload = function() {
	document.getElementById("myModal").style.display = "none";
}
var span = document.getElementsByClassName("close")[0];
span.onclick = function() {
	modal.style.display = "none";
}
</script>
		<script>
// Get the modal
var modal = document.getElementById('myModal');
// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];
// When the user clicks on <span> (x), close the modal
span.onclick = function() {
	modal.style.display = "none";
}
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
	if (event.target == modal) {
		modal.style.display = "none";
	}
}
</script>
	<div class="footer">
		<div class="container">
			
		<center>
	<p style="color: white;">© 2018 Grocery Store. All rights reserved</p>
		
		</center>
			
		</div>
	</div>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<script src="js/minicart.js"></script>
<script>
		paypal.minicart.render();

		paypal.minicart.cart.on('checkout', function (evt) {
			var items = this.items(),
				len = items.length,
				total = 0,
				i;

			// Count the number of each item in the cart
			for (i = 0; i < len; i++) {
				total += items[i].get('quantity');
			}

			if (total < 3) {
				alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
				evt.preventDefault();
			}
		});

	</script>
	<script type="text/javascript">
$(document).ready(function() {
	$(chn).mouseover(function() {
		$(this).css('src', 'images/cat2.png');
	});
	$(chn).mouseout(function() {
		$(this).css('src', 'images/cat.png');
	});
});
</script>
</body>
</html>