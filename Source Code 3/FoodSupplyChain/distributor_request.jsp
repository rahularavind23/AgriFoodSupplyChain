
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.StringTokenizer"%><!DOCTYPE html>
<html>
	<head>
		<title>Grocery Store a Ecommerce Online Shopping</title>
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



<script>
function myfunction()
{
	var num=document.getElementById('select').value;
	if(num=='S'){
		document.getElementById('S').style.display="block";
		document.getElementById('M').style.display="none";
		document.getElementById('D').style.display="none";
	}
	if(num=='M'){
		document.getElementById('S').style.display="none";
		document.getElementById('M').style.display="block";
		document.getElementById('D').style.display="none";
	}
	if(num=='D'){
		document.getElementById('S').style.display="none";
		document.getElementById('M').style.display="none";
		document.getElementById('D').style.display="block";
	}
}
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
	<link rel="stylesheet" href="css/table1.css" type="text/css"></link></head>

	<body>
		<!-- header -->
		<div class="agileits_header">
			<div class="w3l_offers">
				<a href="products.html">Today's special Offers !</a>
			</div>
			
			
			<div class="w3l_header_right" style="margin-left: 900px" >
				<ul>
					<li class="dropdown profile_details_drop">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-user" aria-hidden="true"></i><span class="caret"></span>
						</a>
						<div class="mega-dropdown-menu">
							<div class="w3ls_vegetables">
								<ul class="dropdown-menu drp-mnu">
									<li>
										<a href="login.jsp">Login</a>
									</li>
									<li>
										<a href="register.jsp">Sign Up</a>
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
			<div class="container">
				<div class="w3ls_logo_products_left">
					<h1>
						<a href="javascript:void(0)"><span>Grocery</span> Store</a>
					</h1>
				</div>
			
				<div class="w3ls_logo_products_left1">
					<ul class="phone_email">
						<li>
							<i class="fa fa-phone" aria-hidden="true"></i>(+0123) 234 567
						</li>
						<li>
							<i class="fa fa-envelope-o" aria-hidden="true"></i><a
								href="mailto:store@grocery.com">store@grocery.com</a>
						</li>
					</ul>
				</div>
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
						
						
						<li class="dropdown mega-dropdown active">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Mobile<span class="caret"></span> </a>
							<div
								class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									</div>
							</div>
						</li>
						
						
						
					
						
				</div>
				<!-- /.navbar-collapse -->
				</nav>
			</div>
			<div class="w3l_banner_nav_right">
				<!-- login -->
				<div class="w3_login">
					<%
						if (request.getAttribute("error") != null) {
							String msg = (String) request.getAttribute("error");
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
					
					
					
					
					<table id="customers">
  <tr>
    <th>Manufacture Name</th>
    <th>Date& Time</th>
    <th>Suplier Id</th>
    <th>Product id</th>
    <th>Quanity</th>
     <th>Status</th>
  </tr>
  <%
					ArrayList details = (ArrayList) request.getAttribute("product");

					if (details != null) {
						int count = 1;

						for (int i = 0; i < details.size(); i++) {
							String detail = (String) details.get(i);
							StringTokenizer st = new StringTokenizer(detail, "@");

							String name = st.nextToken().trim();
							String supilerid= st.nextToken().trim();
							String  product_id= st.nextToken().trim();
							String  quanity= st.nextToken().trim();
							String  status= st.nextToken().trim();
							String  date= st.nextToken().trim();
							String sno= st.nextToken().trim();
				%>
  <tr>
    <td><%=name %></td>
    <td><%=date %></td>
    <td><%=supilerid %></td>
    <td><%=product_id %></td>
    <td><%=quanity %></td>
   
    <td><a href="Accept?accept=<%=sno %>">Accept</a> <br/> <a href="Decline?decline=<%=sno %>" >Decline</a></td>
  </tr>
  <%
		
						
						count++;}} %>		
  </table>
			
					
					
					
					
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
			<div class="clearfix"></div><br><br/>
		</div>
		<!-- //banner -->
		<!-- footer -->
		<div class="footer">
			<div class="container">
				<center>
					<p style="color: white;">
						� 2019 Grocery Store. All rights reserved
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