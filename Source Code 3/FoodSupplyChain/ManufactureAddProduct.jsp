<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="antlr.collections.impl.Vector"%>
<%@page import="sample.SupplierModel"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Food Supply Chain</title>
		<!-- for-mobile-apps -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords"
			content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
		<script type="application/x-javascript">
addEventListener("load", function() {
	setTimeout(hideURLbar, 0);
}, false);
function hideURLbar() {
	window.scrollTo(0, 1);
}</script>
		<!-- //for-mobile-apps -->
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
			media="all" />
		<link href="css/style.css" rel="stylesheet" type="text/css"
			media="all" />
		<!-- font-awesome icons -->
		<link href="css/font-awesome.css" rel="stylesheet" type="text/css"
			media="all" />
		<!-- //font-awesome icons -->
		<!-- js -->
		<script src="js/jquery-1.11.1.min.js">
</script>
		<!-- //js -->
		<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="js/move-top.js">
</script>
		<script type="text/javascript" src="js/easing.js">
</script>
		<script type="text/javascript">
jQuery(document).ready(function($) {
	$(".scroll").click(function(event) {
		event.preventDefault();
		$('html,body').animate( {
			scrollTop : $(this.hash).offset().top
		}, 1000);
	});
});
</script>





		<!-- start-smoth-scrolling -->
		<style>
.numberfor{
    outline: none;
    display: block;
    width: 100%;
    border: 1px solid #d9d9d9;
    margin: 0 0 20px;
    padding: 10px 15px;
    box-sizing: border-box;
    font-wieght: 400;
    -webkit-transition: 0.3s ease;
    transition: 0.3s ease;
    font-size: 14px;

}
		
.alert {
	padding: 20px;
	background-color: #84C639;
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
		<link rel="stylesheet" href="css/button.css" type="text/css"></link>
		<link rel="stylesheet" href="css/table.css" type="text/css"></link>
	<link rel="stylesheet" href="css/submit.css" type="text/css"></link></head>

	<body>
		<!-- header -->
		<div class="agileits_header">
			<div class="w3l_offers">
				<a href="#">Food supply Chain..!</a>
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
										<a href="Logout">LogOut</a>
									</li>

								</ul>
							</div>
						</div>
					</li>
				</ul>
			</div>

			<div class="clearfix">
			</div>
		</div>
		<!-- script-for sticky-nav -->
		<script>
$(document).ready(function() {
	var navoffeset = $(".agileits_header").offset().top;
	$(window).scroll(function() {
		var scrollpos = $(window).scrollTop();
		if (scrollpos >= navoffeset) {
			$(".agileits_header").addClass("fixed");
		} else {
			$(".agileits_header").removeClass("fixed");
		}
	});

});
</script>
<script type="text/javascript">
function Random() {
  return Math.floor(Math.random() * 9999);
}

function randomValue() {
document.getElementById('tb').value = Random();
}
</script>
		<!-- //script-for sticky-nav -->
		<div class="logo_products">
		<h1 style="color: green;" align="center">
				Supply Chain Management Using BlockChain
			</h1>
			<div class="container">
				

				<div class="clearfix">
				</div>
			</div>
		</div>
		<!-- //header -->
		<!-- products-breadcrumb -->
		<div class="products-breadcrumb">
			<div class="container">
				<ul>
					<li>
						<i class="fa fa-home" aria-hidden="true"></i><a href="index.jsp">Home</a><span>|</span>
					</li>
					<li>
						Sign In & Sign Up
					</li>
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
					<button type="button"
						class="navbar-toggle collapsed navbar-toggle1"
						data-toggle="collapse" data-target="#bs-megadropdown-tabs">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav nav_1">
							<li>
								<a href="Inventory?from=inven" class="btns">INVENTORY</a>
							</li>
							<li>
								<a href="manufacture.jsp" class="btns">ADD SUPPLIER</a>
							</li>
							<li>
								<a href="Inventory?from=product" class="btns"  style="background-color: black;">ADD PRODUCT</a>
							</li>
							<li>
								<a href="man_requests.jsp" class="btns">DISTRIBUTOR REQUEST</a>
							</li>

							<li>
								<a href="shipment.jsp" class="btns">SHIPMENT</a>
							</li>
							<li>
								<a href="ManufactureRequest" class="btns">TRACE</a>
							</li>


						</ul>
				</div>
				<!-- /.navbar-collapse -->
				</nav>
			</div>
			<div class="w3l_banner_nav_right">
				<!-- login -->
				<div class="w3_login">
					<%
						if (request.getAttribute("uploaded") != null) {
							String msg = (String) request.getAttribute("uploaded");
					%>
					<center>
						<div class="alert">
							<span class="closebtn"
								onclick="this.parentElement.style.display='none';">&times;</span>
							<strong><%=msg%></strong>
						</div>
					</center>
					<%
						}
					%>
					<h3>
						Manifacture Add Product
					</h3>
					<br />
					<br />
					<div class="w3_login_module" id="S"">
						<div class="module form-module">
							<div class="toggle">
								<i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">
									Manifacture ADD Product
								</div>
							</div>

							<div class="form">
								<h2>
									Manufacture Add Product
								</h2>

								<table id="customers">
									<tr>
										<th>
											Suplier Id
										</th>
										<th>
											Product id
										</th>
										<th>
											Product Name
										</th>
										<th>
											Quanity
										</th>


									</tr>
									<%
									List details = (List) request.getAttribute("info");
									HttpSession httpSession = request.getSession(true);
									httpSession.setAttribute("info",details);
										for (int i = 0; i < details.size(); i++) {
											SupplierModel model = (SupplierModel) details.get(i);
									%>
									<tr>

										<td><%=model.getName()%></td>
										<td><%=model.getProduceid()%></td>
										<td><%=model.getProname()%></td>
										<td><%=model.getDesc()%>&nbsp;Kg</td>
										
									</tr>
									<%
										}
									%>
								</table>


								<br/><br/>

								<form action="ManufactureAddProduct" method="post"
									enctype="multipart/form-data">
									<input type="hidden" name = "detail" value="<%=details %>">
									
									<input type="text" name="name" placeholder="Product Name" required=" " >
									<input type="text" name="proid" placeholder="Product Id"
										required=" " onclick="randomValue();" id="tb">
									<input type="text" name="description" placeholder="Description"
										required=" ">
									
										<input type="number" name="packets" placeholder="How Many Packets"
										required=" " class="numberfor" >
										<p style="color: red;font-size: 70%">Expiry Date</p>
										<input type="date" name="edate" placeholder="Expiry Date"
										required=" " class="numberfor" >
										<input type="text" name="price" placeholder="Price"
										required=" ">
									
									<input type="file" name="pic" placeholder="PHOTO" required=""
										accept="image/*">
										
										<br/>
									<input type="submit" value="Submit">
								</form>
							</div>





							<script>
$('.toggle').click(function() {
	// Switches the Icon
		$(this).children('i').toggleClass('fa-pencil');
		// Switches the forms  
		$('.form').animate( {
			height : "toggle",
			'padding-top' : 'toggle',
			'padding-bottom' : 'toggle',
			opacity : "toggle"
		}, "slow");
	});
</script>
						</div>
						<!-- //login -->
					</div>
					<div class="clearfix"></div>
				</div>
				<!-- //banner -->
				<!-- footer -->
				<div class="footer">
					<div class="container">
						<center>
							<p style="color: white;">
								© 2018 Grocery Store. All rights reserved
							</p>
						</center>
					</div>
				</div>
				<!-- //footer -->
				<!-- Bootstrap Core JavaScript -->
				<script src="js/bootstrap.min.js">
</script>
				<script>
$(document).ready(function() {
	$(".dropdown").hover(function() {
		$('.dropdown-menu', this).stop(true, true).slideDown("fast");
		$(this).toggleClass('open');
	}, function() {
		$('.dropdown-menu', this).stop(true, true).slideUp("fast");
		$(this).toggleClass('open');
	});
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

	$().UItoTop( {
		easingType : 'easeOutQuart'
	});

});
</script>
				<!-- //here ends scrolling icon -->
				<script src="js/minicart.js">
</script>
				<script>
paypal.minicart.render();

paypal.minicart.cart
		.on(
				'checkout',
				function(evt) {
					var items = this.items(), len = items.length, total = 0, i;

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
	</body>
</html>