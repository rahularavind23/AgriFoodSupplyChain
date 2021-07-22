<%@page import="sample.DistributorModel"%>
<%@page import="sample.ContractModel"%>
<%@page import="java.util.List"%>
<%@page import="sample.SupplierModel"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Consumer</title>
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
		<%
			String aid = request.getParameter("aid");
			String sno = request.getParameter("sno");
			String pname = request.getParameter("pname");
			String pid = request.getParameter("pid");
			String dprice = request.getParameter("dprice");
			String price = request.getParameter("price");
			String bname = request.getParameter("bname");

			HttpSession session2 = request.getSession(false);
			String name = (String) session2.getAttribute("name");
			String email = (String) session2.getAttribute("email");
		%>
	</head>

	<body>
		<!-- header -->
		<div class="agileits_header">
			<div class="w3l_offers">
				<a href="products.html">Food Supply Chain..!</a>
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
					<li>
						<i class="fa fa-home" aria-hidden="true"></i><a
							href="dmenu.jsp">Home</a><span>|</span>
					</li>
					<li>
						Welcome&nbsp;:-
						<label style="color: white;">
							<b>&nbsp;<%=name%></b>
						</label>
					</li>
				</ul>
			</div>
		</div>
		<!-- //products-breadcrumb -->
		<!-- banner -->
		<div class="banner" style="margin-left: -250px">

			<div class="w3l_banner_nav_right">
				<!-- login -->
				<div class="w3_login">
					<%
						if (request.getAttribute("msg") != null) {
							String msg = (String) request.getAttribute("msg");
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
						Smart Contract
					</h3>
					<div class="w3_login_module">
						<div class="module form-module">
							<div class="toggle">
								<i class="fa fa-times fa-pencil"></i>

							</div>
<script>
window.onload = function() {
	document.getElementById('hello').style.display = 'none';
}
function callF() {
	document.getElementById('hello').style.display = 'block';
}
</script>

							<center><label onclick="callF()">
								<b>Click Geting  Blockchain Data <span ><button style="background-color:yellowgreen;color: white;"><%=request.getAttribute("id")%>.ser</button></span>
									</b>
							</label></center>
							<div class="form">
								<div id="hello">
								<h4 align="center" style="background-color: teal;color: white;">Distributor</h4><br/>

									<%
										DistributorModel model = (DistributorModel) request
												.getAttribute("contract");
									%>

									<p>
										<b>Product Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<%=model.getProname()%></p>
								      <p>
										<b>Product Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<%=model.getProid()%></p>
									<p>
										<b>Distributor Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<%=model.getDisPrice()%></p>
									<p>
								
										<b>Packets&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<%=model.getPacket()%>
									</p>
										<p>
										<b>Distributor Id
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<%=model.getDisId()%>
										</p>
										<p>
										<b>Dis Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<%=model.getSdate()%></p>
										<p>
										<b>Expiry Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<%=model.getEdate()%></p>
										<p>
										<b>Image&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<img src="http://localhost:8888/<%=model.getImages().replace("webapps","") %>"
										style="height: 30px; width: 30px" /></p>
										<br/>
									
									 <h4 align="center" style="background-color:purple;color: white;">Manufacture</h4><br/>


									
									<%
										ContractModel con = (ContractModel) model.getContractModel();
									%>

									<p>
										<b>Product Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<%=con.getManuName()%>
									</p>
									
									<p>
										<b>Product Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<%=con.getPrice()%></p>
									
									<p>
										<b>Packets&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<%=con.getPackets()%></p>
									
									<p>
										<b>ProductId&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<%=con.getProId()%></p>
									
									<p>
										<b>Packing Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<%=con.getSdate()%></p>
										<p >
										<b>Expriy Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<u style="background-color: red;"><%=con.getEdate()%></u></p>
										<br/>
									
                            <h4 align="center" style="background-color: blue;color: white;">Suppliers</h4><br/>

									


									<%
										List<SupplierModel> models = (ArrayList) con.getHashMap();
										for (SupplierModel model2 : models) {
									%>


									<p>
										<b>Supplier Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<%=model2.getName()%></p>
									
									<p>
										<b>Product Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<%=model2.getProduceid()%></p>
										<p>
										<b>Product Name&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<%=model2.getProname()%></p>
									
									<p>
										<b>Quantity
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>
										<%=model2.getDesc()%>&nbsp;Kg
									</p><br/>
									
									
									<%
										}
									%>
								</div>


							</div>

						</div>
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