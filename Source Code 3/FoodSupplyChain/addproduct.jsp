<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="antlr.collections.impl.Vector"%>
<%@page import="ProductAdmin.Dao"%>
<%@page import="java.util.List"%>
<%@page import="Model.ProductIngredientPojo"%>
<%@page import="Model.IngredientPojo"%>
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


<script type="text/javascript">
function Random() {
  return Math.floor(Math.random() * 9999);
}

function randomValue() {
document.getElementById('tb').value = Random();
}
</script>
	<link rel="stylesheet" href="css/button.css" type="text/css"></link>
	<link rel="stylesheet" href="css/table.css" type="text/css"></link><link rel="stylesheet" href="css/submit.css" type="text/css"></link></head>

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
<%
	HttpSession session2 = request.getSession(false);
	String name = (String) session2.getAttribute("name");
	String sid = (String) session2.getAttribute("supplier_id");
%>
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
						<i class="fa fa-home" aria-hidden="true"></i><a href="menu.jsp">Home</a><span>||</span>
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
					<ul class="nav navbar-nav nav_1">
						
						
						<li>
								<a href="menu.jsp" class="btns" >ALL PRODUCT</a>
							</li>
							<li>
								<a href="addproduct.jsp" class="btns" style="background-color: black">ADD PRODUCT</a>
							</li>
							<li>
								<a href="RequestTable?name=<%=sid%>" class="btns">REQUEST
									PRODUCT</a>
							</li>
						</ul>
						
						
				</div>
				
			
				<!-- login -->
				
					
				
				
				</nav>
			</div>
			
			<div class="w3l_banner_nav_right" >
			
				<div class="w3_login">
				<%
				String namea=request.getParameter("name");
			
			String producttype = (String) session2.getAttribute("producttype");
		%>
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
					<h3 align="center">
						SUPPLIER ADD PRODUCT
					</h3>
					<br/><div class="w3_login_module" id="S" >
						<div class="module form-module">
							<div class="toggle">
								<i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">
									ADD PRODUCT
								</div>
							</div>

							<div class="form">
								<h2>
									Supplier Add Product
								</h2>
								<form action="SuplierAddProduct" method="post" enctype="multipart/form-data">
									
									<input type="text" name="proid" placeholder="Product Id"
										required=" " onclick="randomValue();" id="tb">
										<input type="text" name="name" placeholder="Product Name"
										required=" ">
										<input type="text" name="description" placeholder="Description"
										required=" ">
										<input type="number" name="price" placeholder="Price"
										required=" ">
										<input type="number" name="Quanity" placeholder="Quanity"
										required=" ">
										<input type="file" name="pic" placeholder="PHOTO"
										required=" " accept="image/*">
										<br/><br/>
									<input type="submit" value="Submit">
								</form>
							</div>
						
							

					</div>
					</div>
					
					
					
					
					<div class="w3_login_module" id="S" >
					<center><ul>
				<%
					Dao proince=new Dao(); 
					List<ProductIngredientPojo> list=proince.getProductName();
					for(ProductIngredientPojo pojo:list ){
						System.out.println("---------->"+pojo.getProname());
				%>
           <a href="CallIngredient?name=<%=pojo.getProname()%>"><button class="element"><%=pojo.getProname() %></button></a> 
					<%} %> 
					</ul></center>
						<div class="module form-module">
							

							<div class="form">
								
						
							
							</div>
							 <h2 style="color: teal" align="center">PRODUCT INGREDIENTS</h2>
							
							
							
							
							<table id="customers">
                              <%if(namea !=null){ %>
                              
                             
                           <ul> <h3 style="background-color: blue;color: white;"><%=namea %></h3>
    
 
  
                   <%	    Dao dao=new Dao();
							List<IngredientPojo> list1=dao.getProductingredient(namea);
							for(IngredientPojo pojo:list1 ){
							%>
                           <li><%=pojo.getIngredient() %></li>
    <%} }%>
 
 </ul>
</table>
						
							

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