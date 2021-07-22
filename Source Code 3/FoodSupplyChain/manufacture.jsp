<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.net.InetAddress"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Supply Chain</title>
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
<%
HttpSession session2=request.getSession(false);
String name1=(String)session2.getAttribute("name");
%>
	<link rel="stylesheet" href="css/table.css" type="text/css"></link><body>
		<!-- header -->
		<div class="agileits_header">
			<div class="w3l_offers">
				<a href="products.html">Food Supply Chain..!</a>
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
								<a href="manufacture.jsp" class="btns" style="background-color: black;">ADD SUPPLIER</a>
							</li>
							<li>
								<a href="Inventory?from=product" class="btns" >ADD PRODUCT</a>
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
				 </div><!-- /.navbar-collapse -->
			</nav>
		</div>
			<%String info = (String)request.getAttribute("status") !=null ? (String) request.getAttribute("status"):"" ; 
			if(info.equals("")){
				
			}
			%>
			
			<div class="w3l_banner_nav_right"><br/><br/>
			<h1 align="center" style="color:purple;">Supplier Details...!</h1>
				<!-- login -->
				<div class="w3_login">
					
					
					
					
					
					<center>
					
					<table id="customers" align="center">
					 <tr>
	<th>Supplier Id</th>
    <th>Supplier Name</th>
    <th>Product Type</th>
    <th>Email</th>
    <th>Phone</th>
    <th>Address</th>
    <th>Select</th>
  </tr>
					
					<%
                        
						
						Connection connection = null;
						connection = (Connection) getServletContext().getAttribute(
								"connection");
						Statement st = connection.createStatement();
						String selectemo = "select * from suppilerreg";
						ResultSet rs = st.executeQuery(selectemo);
						
						while (rs.next()) {
							String id=rs.getString("sup_id");
							String supliername=rs.getString("name");
							String producttype=rs.getString("producttype");
							String Email=rs.getString("email");
							String phone=rs.getString("phone");
							String address=rs.getString("address");
						
					     %>
                       
                       
 
  <tr>
    <td><%=id %></td>
    <td><%=supliername %></td>
    <td><%=producttype%></td>
     <td><%=Email%></td>
      <td><%=phone%></td>
      <td><%=address%></td>
       <td><button style="background-color: white"><a href="ManufactureVi?proid=<%=id %>" style="color: black">Click</a ></button></td>
  </tr>
    
                       <%}%>
</table>
                       
                       
                   
                       
                      </center>
					
					
				
					
				
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
						© Supply Chain
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