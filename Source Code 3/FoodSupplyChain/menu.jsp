<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.net.InetAddress"%>

<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Supply Chain</title>
		<!-- for-mobile-apps -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords"
			content="" />
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
			HttpSession session2 = request.getSession(false);
			String name = (String) session2.getAttribute("name");
			String sid = (String) session2.getAttribute("supplier_id");
		%>
		<link rel="stylesheet" href="css/button.css" type="text/css"></link>
	</head>

	<body>
		<!-- header -->
		<div class="agileits_header">
			<div class="w3l_offers">
				<a href="#">Food Supply Chain..!</a>
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
							<b>&nbsp;<%=name%></b>
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
					<div id="myBtnContainer">
						<ul class="nav navbar-nav nav_1">

							<%
								HttpSession session1 = request.getSession();
								HttpSession httpSession = request.getSession();
								
								
							%>


                            <li>
								<a href="menu.jsp" class="btns" style="background-color: black">ALL PRODUCT</a>
							</li>
							<li>
								<a href="addproduct.jsp" class="btns">ADD PRODUCT</a>
							</li>
							<li>
								<a href="RequestTable?name=<%=sid%>" class="btns">REQUEST
									PRODUCT</a>
							</li>

						</ul>
					</div>
				</div>
				<!-- /.navbar-collapse -->
				</nav>
			</div>
			<div class="w3l_banner_nav_right">


				<div
					class="w3ls_w3l_banner_nav_right_grid w3ls_w3l_banner_nav_right_grid_veg">
					<div
						class="w3ls_w3l_banner_nav_right_grid1 w3ls_w3l_banner_nav_right_grid1_veg">

						<%--<%
		ProductsDao productsDao=new ProductsDao();
		List<ProductsPojo> list=productsDao.getAllProducts();
		int i=0;
		for(ProductsPojo pojo: list){
			i++;
			int t=Integer.parseInt(pojo.getPrice())-(Integer.parseInt(pojo.getPrice())*10)/100;
			
%>
				--%>

						<%
							String ipaddr = InetAddress.getLocalHost().getHostAddress();
							String port = String.valueOf(request.getServerPort());
							String proj = request.getContextPath();
							String url = "http://" + ipaddr + ":" + port + proj + "/photo/";
							System.out.println("============"+url);
							Vector fvec = new Vector();
							Connection connection = null;
							connection = (Connection) getServletContext().getAttribute(
									"connection");
							Statement st = connection.createStatement();
							String selectemo = "select * from addproduct where suplier_id='"
									+ sid + "'";
							System.out.println("-------------"+selectemo);
							ResultSet rs = st.executeQuery(selectemo);
							int count = 0;
							while (rs.next()) {
								
								String image = rs.getString("image");
								String supid = rs.getString("suplier_id");
								String proid = rs.getString("productid");
								String name1 = rs.getString("name");
								String dese = rs.getString("deseription");
								String price = rs.getString("price");
								String quan = rs.getString("quanit");
						%>







						<div class="filterDiv   -----">
							<div
								class="col-md-3 w3ls_w3l_banner_left w3ls_w3l_banner_left_asdfdfd">
								<div class="hover14 column">
									<div
										class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">

										<div class="agile_top_brand_left_grid1">
											<figure>
											<div class="snipcart-item block">
												<div class="snipcart-thumb">
													<a
														href="#"><img
															id="myImg" src="<%=url + image%>" style="height: 170px"
															alt=" " class="img-responsive" />
													</a>
													<p>
														<b style="color: purple;">Supplier-Id&nbsp;:&nbsp;</b><%=supid%></p>
													<p>
														<b style="color: purple;">Product-Id&nbsp; :&nbsp;</b><%=proid%></p>
													<p>
														<b style="color: purple;">Product-Name&nbsp; :&nbsp;</b><%=name1%></p>
													<p>
														<b style="color: purple;">Description &nbsp;:&nbsp;</b><%=dese%></p>
													<p>
														<b style="color: purple;">Quanity&nbsp;:&nbsp; </b><u><%=quan%></u> : kg</p>
													<label style="background-color:black; color: white;">Price&nbsp;:&nbsp;
														Rs.<%=price%></label>
												</div>
												<div class="snipcart-details">
												</div>


												<input type="hidden" name="name" value='<%=name%>'>
												<input type="hidden" name="supid" value='<%=supid%>'>
												<input type="hidden" name="proid" value='<%=proid%>'>
											</div>
											</figure>
										</div>
									</div>
								</div>
							</div>
						</div>
						<%
							}
						%>

						<div class="clearfix">
						</div>
					</div>
				</div>

				<script type="text/javascript" src="js/cart.js">
</script>

			</div>
			<div class="clearfix"></div>
		</div>
		<!-- //banner -->
		<!-- footer -->
		<div id="myModal" class="modal1">

			<!-- Modal content -->
			<div class="modal1-content">
				<div class="modal1-header">
					<span class="close">&times;</span>
					<center>
						<h2>
							Cart
						</h2>
					</center>
				</div>
				<div class="modal1-body">

					<table class="timetable_sub">
						<thead id="tabs">
							<tr>
								<th>
									SL No.
								</th>
								<th>
									Product
								</th>
								<th>
									Quantity
								</th>
								<th>
									Product Name
								</th>
								<th>
									Price
								</th>
								<th>
									Remove
								</th>
							</tr>
						</thead>
						<tbody id="mylocation">

						</tbody>

					</table>
				</div>
				<div class="modal1-footer" id="f">
					<h3 style="color: black; margin-left: 450px">
						<b>Total :</b>
						<label id="pri" style="color: white;"></label>
					</h3>
				</div>
			</div>

		</div>

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
					<p style="color: white;">
						© 2019 food Supply chain
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