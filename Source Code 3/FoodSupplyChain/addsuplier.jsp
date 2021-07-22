
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="ProductAdmin.Dao"%>
<%@page import="Model.ProductIngredientPojo"%>
<%@page import="Model.IngredientPojo"%><!DOCTYPE html>
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
<%
HttpSession session2=request.getSession(false);
String name1=(String)session2.getAttribute("name");
%>




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
	<link rel="stylesheet" href="css/submit.css" type="text/css"></link></head>

	<body>
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
						<i class="fa fa-home" aria-hidden="true"></i><a href="inventrottable.jsp">Home</a><span>|</span>
					</li>
                        <li>
						Welcome&nbsp;:-
						<label style="color: white;">
							<b>&nbsp;<%=name1%></b>
						</label>
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
							<li>
								<a href="Inventory?from=inven" class="btns"
									>INVENTORY</a>
							</li>
							<li>
								<a href="manufacture.jsp" class="btns" >ADD SUPPLIER</a>
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
				</div>
				<!-- /.navbar-collapse -->
				</nav>
			</div>
			<div class="w3l_banner_nav_right"><br/><br/>
			<h1 align="center" style="color: purple">Manufacture Add Product...!</h1>
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


					<form action="ManufactureAddProduct" method="get">

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
								<th>
									Add Quanity
								</th>

								<th>
									Add
								</th>
							</tr>
							<%
								ArrayList details = (ArrayList) request.getAttribute("send");

								if (details != null) {
									int count = 1;

									for (int i = 0; i < details.size(); i++) {
										String detail = (String) details.get(i);
										StringTokenizer st = new StringTokenizer(detail, "@");

										String name = st.nextToken().trim();
										String supilerid = st.nextToken().trim();
										String product_id = st.nextToken().trim();
										String productname = st.nextToken().trim();
										String quanity = st.nextToken().trim();
							%>
							<tr>

								<td><%=supilerid%></td>
								<td><%=product_id%></td>
								<td><%=productname%></td>
								<td><%=quanity%> kg</td>
								
								<td>
									<input id="name" value="0" type="number" name="sele" min="0" max="<%=Integer.parseInt(quanity)%>"></input>
								</td>

								<td>
									<input type="checkbox" value="<%=supilerid + "@" + product_id+"@"+productname%>"
										name="optio">
								</td>
							</tr>
							<%
								count++;
									}
								}
							%>
						</table>
						<br />
						<br />
					<center>	<input type="submit" value="Generate Product" class="element"/></center>

					</form><br/><br/>

<h1 align="center" style="background-color:yellow;">~~~~Product Ingredient~~~~</h1>

						
<div class="w3_login_module" id="S" >
						<div class="module form-module">
							<div class="toggle">
								<i class="fa fa-times fa-pencil"></i>
								
							</div>

							<div class="form">
								<h2 align="center">
									 Product Ingredient
								</h2>
								
									<center><ul>
				<%
				
					Dao proince=new Dao(); 
					List<ProductIngredientPojo> list=proince.getProductName();
					for(ProductIngredientPojo pojo:list ){
						System.out.println("---------->"+pojo.getProname());
				%>
				
				
               <a href="CallIngredientSe?Ingredient=<%=pojo.getProname()%>"><button style="background-color:teal;color: white;"><%=pojo.getProname() %></button></a>
					<%} %> 
					
						
					
					</ul></center>
									
						
							<table id="customers">
                                <tr>
                              <th></th><br/>
                             <% String Ingredient=request.getParameter("Ingredient"); 
                             System.out.println(Ingredient+"<<<<<<<<<<<------------");%>
                             <%if(Ingredient !=null){ %>
                              <h3 style="color: white;background-color: navy;"><%=Ingredient %></h3>
                              
    <%} %>
 <ul>
  
                   <%
                  
                   Dao dao=new Dao();
							List<IngredientPojo> list1=dao.getProductingredient(Ingredient);
							for(IngredientPojo pojo:list1 ){
							%>
							
                        <li><%=pojo.getIngredient().trim() %></li>
    <%} %>
    </ul>
  </tr>
 
</table>
								
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