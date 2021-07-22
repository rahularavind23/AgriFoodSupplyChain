<!DOCTYPE html>
<html>
	<head>
		<title>Supply Chain</title>

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
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
			media="all" />
		<link href="css/style.css" rel="stylesheet" type="text/css"
			media="all" />
		<link href="css/font-awesome.css" rel="stylesheet" type="text/css"
			media="all" />
		<script src="js/jquery-1.11.1.min.js">
</script>
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
function myfunction() {
	var num = document.getElementById('select').value;
	if (num == 'S') {
		document.getElementById('S').style.display = "block";
		document.getElementById('M').style.display = "none";
		document.getElementById('D').style.display = "none";
	}
	if (num == 'M') {
		document.getElementById('S').style.display = "none";
		document.getElementById('M').style.display = "block";
		document.getElementById('D').style.display = "none";
	}
	if (num == 'D') {
		document.getElementById('S').style.display = "none";
		document.getElementById('M').style.display = "none";
		document.getElementById('D').style.display = "block";
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
.image{
  max-width: 500px;
  height: 100px;
  background-color: powderblue;
}
</style>
	</head>

	<body>
		<!-- header -->
		<div class="agileits_header" style="background-color: seagreen">


			<h1 style="color: white;" align="center">
				Food Supply Chain Management Using BlockChain
			</h1>
			<div class="w3l_header_right" style="margin-left: 1200px">
				<ul>
					<li class="dropdown profile_details_drop">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-user" aria-hidden="true"></i><span class="caret"></span>
						</a>
						<div class="mega-dropdown-menu">
							<div class="w3ls_vegetables">
								<ul class="dropdown-menu drp-mnu">
								<li>
										<a href="index.jsp">Home</a>
									</li>
									<li>
										<a href="login.jsp">Login</a>
									</li>
									<li>
										<a href="#">Sign Up</a>
									</li>
								</ul>
							</div>
						</div>
					</li>
				</ul>
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
		

		<div class="banner" style="margin-left: -250px">

			<div class="w3l_banner_nav_right" align="center">
				<!-- login -->
				<div class="w3_login" align="center">
					<%
						if (request.getAttribute("success") != null) {
							String msg = (String) request.getAttribute("success");
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
						CREATE NEW ACCOUNT
					</h3>
					<br></br>
					<center>
						<select id="select" onchange="myfunction()">
							<option value="S">
								Suplier Account
							</option>
							<option value="M">
								Manufacture Account
							</option>
							<option value="D">
								Distributor Account
							</option>
						</select>
					</center>
					<div class="w3_login_module" id="S" style="display: block">
						<div class="module form-module">
							<div class="toggle">
								<i class="fa fa-times fa-pencil"></i>
							</div>

							<div class="form">
								<h2>
									Create an Supplier account
								</h2>
								<form action="SuplierRegister" method="post">
									<input type="text" name="name" placeholder="Supplier Name"
										required=" ">
										<input type="text" name="producttype" placeholder="Product Type"
										required=" ">

									<%--<select name="producttype" placeholder="Product Type"
										required=" ">
										<option value="">
											Product Type
										</option>
										<option value="mouse">
											Mouse
										</option>
										<option value="keyboard">
											Keyboard
										</option>
										<option value="harddisk">
											Hard Disk
										</option>
										<option value="display">
											Display
										</option>
									</select>
									<br>
									<br>
									--%><input type="email" name="email" placeholder="Email Address" required=" ">
									<input type="text" name="mobile" placeholder="Phone Number" required=" ">
									<input type="text" name="address" placeholder="Address" required=" ">
									<input type="password" name="password" placeholder="Password" required="">


									<input type="submit" value="Register">
								</form>
							</div>




							<div class="cta">
								<a href="login.jsp">Already registered?</a>
							</div>
						</div>
					</div>
					<div class="w3_login_module" id="M" style="display: none">
						<div class="module form-module">
							<div class="toggle">
								<i class="fa fa-times fa-pencil"></i>

							</div>

							<div class="form">
								<h2>
									Create an Manufacture account
								</h2>
								<form action="ManufactureRegister" method="post">
									<input type="text" name="name" placeholder="Username"
										required=" ">
									<input type="email" name="email" placeholder="Email Address"
										required=" ">
									<input type="password" name="password" placeholder="Password"
										required=" ">

									<input type="text" name="phone" placeholder="Phone Number"
										required=" ">
									<input type="submit" value="Register">
								</form>
							</div>




							<div class="cta">
								<a href="login.jsp">Already registered?</a>
							</div>
						</div>
					</div>
					<div class="w3_login_module" id="D" style="display: none">
						<div class="module form-module">
							<div class="toggle">
								<i class="fa fa-times fa-pencil"></i>
							</div>

							<div class="form">
								<h2>
									Create an Distributor account
								</h2>
								<form action="Register" method="post">
									<input type="text" name="name" placeholder="Username"
										required=" ">
									<input type="email" name="email" placeholder="Email Address"
										required=" ">
									<input type="password" name="password" placeholder="Password"
										required=" ">

									<input type="text" name="mobile" placeholder="Phone Number"
										required=" ">
									<input type="submit" value="Register">
								</form>
							</div>




							<div class="cta">
								<a href="login.jsp">Already registered?</a>
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
			<div class="clearfix" ></div>
		</div>
		<div class="footer">
			<div class="container">
				<center>
					<p style="color: white;">
						� 2018 Smart Contract
					</p>
				</center>
			</div>
		</div>
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