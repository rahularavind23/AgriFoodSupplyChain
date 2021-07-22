
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.StringTokenizer"%><!DOCTYPE html>
<html>
	<head>
		<title>Grocery Store a Ecommerce Online Shopping</title>
		<!-- for-mobile-apps -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
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
		<link rel="stylesheet" href="css/table1.css" type="text/css"></link>
	</head>

	<body>
	<%
			HttpSession session2 = request.getSession(false);
				String names = (String) session2.getAttribute("name");
			String sid = (String) session2.getAttribute("supplier_id");
		%>
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
			<h1 style="color: green;" align="center">
				Food Supply Chain Management Using BlockChain
			</h1>
		</div>
		<!-- //header -->
		<!-- products-breadcrumb -->
		<div class="products-breadcrumb">
			<div class="container">
				<ul>

					<li>
						<i class="fa fa-home" aria-hidden="true"></i><a href="menu.jsp">Home</a><span>|</span>
					</li>
					<li>
						Suppiler Name&nbsp;:-
						<label style="color: white;">
							<b>&nbsp;<%=names%></b>
						</label>
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
								<a href="menu.jsp" class="btns" >ALL PRODUCT</a>
							</li>
							<li>
								<a href="addproduct.jsp" class="btns">ADD PRODUCT</a>
							</li>
							<li>
								<a href="RequestTable?name=<%=sid%>" class="btns" style="background-color: black">REQUEST
									PRODUCT</a>
							</li></ul>
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


<h2 align="center" style="color: purple;">Product Request Manufacture </h2><br/><br/>

					<table id="customers">
						<tr>
							<th>
								Manufacture Name
							</th>
							<th>
								Date& Time
							</th>
							<th>
								Suplier Id
							</th>
							<th>
								Product Name
							</th>
							<th>
								Product id
							</th>
							<th>
								Quanity
							</th>
							<th>
							Accept
							</th>
							<th>
								Cancel
							</th>
						</tr>
						<%
							ArrayList details = (ArrayList) request.getAttribute("product");

							if (details != null) {
								int count = 1;

								for (int i = 0; i < details.size(); i++) {
									String detail = (String) details.get(i);
									StringTokenizer st = new StringTokenizer(detail, "@");

									String name = st.nextToken().trim();
									String supilerid = st.nextToken().trim();
									String product_id = st.nextToken().trim();
									String quanity = st.nextToken().trim();
									String status = st.nextToken().trim();
									String date = st.nextToken().trim();
									String sno = st.nextToken().trim();
									String proname = st.nextToken().trim();
						%>
						<tr>
							<td><%=name%></td>
							<td><%=date%></td>
							<td><%=supilerid%></td>
							<td><%=proname%></td>
							<td><%=product_id%></td>
							<td><%=quanity%>:Kg</td>

							<td>
								<button style="background-color:teal;"><a href="Accept?accept=<%=sno%>" style="color: white;">Accept</a></button>
								</td><td>
								<form action="Decline" method="get">
									<input type="hidden" value="<%=sno%>" name="decline">
									<input type="hidden" value="<%=quanity%>" name="quani">
									<input type="hidden" value="<%=supilerid%>" name="supilerid">
									<input type="hidden" value="<%=product_id%>" name="product_id">
									<input type="submit" value="Cancel" style="background-color: black;color: white;">


								</form>
								
							</td>
						</tr>
						<%
							count++;
								}
							}
						%>
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
			<div class="clearfix"></div>
			<br>
			<br />
		</div>
		<!-- //banner -->
		<!-- footer -->
		<div class="footer">
			<div class="container">
				<center>
					<p style="color: white;">
						© Smart Contract
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