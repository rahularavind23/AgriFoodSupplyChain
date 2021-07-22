<%@page import="java.util.List"%>
<%@page import="com.distributor.ManPojo"%>
<%@page import="com.distributor.UserDao"%>
<%@page import="java.util.HashSet"%>
<%@page import="com.distributor.DisPojo"%>
<!DOCTYPE html>
<html>
<head>
<title>Food Supply Chain</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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
.blinking{
	animation:blinkingText 0.9s infinite;
}
@keyframes blinkingText{
	0%{		color: red;	}
	49%{	color: transparent;	}
	50%{	color: transparent;	}
	99%{	color:transparent;	}
	100%{	color: #000;	}
}
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
.spinner {
  margin: 23px auto 0;
  width: 70px;
  text-align: center;
}

.spinner > div {
  width: 18px;
  height: 18px;
  background-color: #333;

  border-radius: 100%;
  display: inline-block;
  -webkit-animation: sk-bouncedelay 1.4s infinite ease-in-out both;
  animation: sk-bouncedelay 1.4s infinite ease-in-out both;
}

.spinner .bounce1 {
  -webkit-animation-delay: -0.32s;
  animation-delay: -0.32s;
}

.spinner .bounce2 {
  -webkit-animation-delay: -0.16s;
  animation-delay: -0.16s;
}

@-webkit-keyframes sk-bouncedelay {
  0%, 80%, 100% { -webkit-transform: scale(0) }
  40% { -webkit-transform: scale(1.0) }
}

@keyframes sk-bouncedelay {
  0%, 80%, 100% { 
    -webkit-transform: scale(0);
    transform: scale(0);
  } 40% { 
    -webkit-transform: scale(1.0);
    transform: scale(1.0);
  }
}
</style>


<%
HttpSession session2=request.getSession(false);
String name=(String)session2.getAttribute("name");
String email=(String)session2.getAttribute("email");
String did=(String)session2.getAttribute("did");
%>
</head>
	
<body>
<!-- header -->
	<div class="agileits_header">
		<div class="w3l_offers">
			<a href="#">Food Supply Chain...!</a>
		</div>
<%--		<div class="w3l_search">--%>
<%--			<form action="#" method="post">--%>
<%--				<input type="text" name="Product" value="Search a product..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search a product...';}" required="">--%>
<%--				<input type="submit" value=" ">--%>
<%--			</form>--%>
<%--		</div>--%>
		<div class="product_list_header" style="margin-left: 760px">  
                  <form method="get" action="dpros.jsp">
                    <input type="submit" name="submit" value="Purchased Items" class="button"/>
                  </form>
		</div>
		<div class="w3l_header_right">
			<ul>
				<li class="dropdown profile_details_drop">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i><span class="caret"></span></a>
					<div class="mega-dropdown-menu">
						<div class="w3ls_vegetables">
							<ul class="dropdown-menu drp-mnu">
								<li><a href="Logout">Logout</a></li> 
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
				Food Supply Chain Management Using BlockChain
			</h1>
		</div>
	
<!-- //header -->
<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="dmenu.jsp">Home</a><span>|</span></li>
				<li>Welcome&nbsp;:-<label style="color: white;"><b>&nbsp;<%=name %></b></label></li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button style="background-color:crimson;color: black;"><a href="disshipment.jsp" style="color:white;">Shipment</a></button></li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button style="background-color:crimson;color: black;"><a href="cus_requests.jsp" style="color: white;">Request</a></button></li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->
<!-- banner -->
		<div class="banner" style="margin-left: -300px">
		
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
						Distributor Requests
					</h3>
					<div class="w3_login_module">
						<div class="module form-module">
							<div class="toggle">
								<i class="fa fa-times fa-pencil"></i>
							
							</div>
							
							<%
							UserDao userDao=new UserDao();
							List<ManPojo> list=userDao.loadinventory();
							String man="";
							for(ManPojo manPojo:list){
								man+=manPojo.getManufacturerName()+",";
							}%>
							<div class="form">
							<form action="DistributorRequest" method="post">
							<label>Manufacturer &nbsp;&nbsp;: </label>	
							<select style="width: 150px;height: 30px" onchange="callBfg(this)" name="man">
							<option>Choose Here</option>
							<%
							HashSet<String> hs=new HashSet<String>();
							String temp[]=man.split(",");
							for(String s:temp){
								hs.add(s);
							}
							for(String s:hs){
							%>
							<option value="<%=s %>"><%=s %></option>
							<%} %>
							</select><br/><br/>
							<label>Product Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </label>	
							<select style="width: 150px;height: 30px" id="ppid" onchange="callFs()" name="pid">
							</select><br/><br/>
							<label>Product Name : </label>	
							<select style="width: 150px;height: 30px" id="pname" onchange="callFasak()" name="pname">
							<option></option>
							</select><br/><br/>
								
							<input type="submit" value="Request to Manufacturer">	
							</form>
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
<script type="text/javascript">
function callFs(){
<%--	alert($("#ppid").prop('selectedIndex'));--%>
	document.getElementById("pname").selectedIndex = $("#ppid").prop('selectedIndex');
}
function callFasak(){
	document.getElementById("ppid").selectedIndex = $("#pname").prop('selectedIndex');
}


function removeOptions(selectbox)
{
    var i;
    for(i = selectbox.options.length - 1 ; i >= 0 ; i--)
    {
        selectbox.remove(i);
    }
}

	function callBfg(selectObject){
	removeOptions(document.getElementById("ppid"));	
	removeOptions(document.getElementById("pname"));	
	var value = selectObject.value; 
	var url = "ProductDetails?man="+value+"&type=main";
	if(window.XMLHttpRequest){  
	request=new XMLHttpRequest();  
	}  
	else if(window.ActiveXObject){  
	request=new ActiveXObject("Microsoft.XMLHTTP");  
	}  
	try{  
	request.onreadystatechange=responseBfg;  
	request.open("POST",url,true);  
	request.send();  
	}catch(e){alert("Unable to connect to server");}  							
	}
	function responseBfg(){
	if(request.readyState==4){  
	var val=request.responseText;
	var spl=val.split('@');
	var spl1=spl[0];
	var spl2=spl[1];
	var x = document.getElementById("ppid");
	var y = document.getElementById("pname");
	var sel1=spl1.split(',');
	var sel2=spl2.split(',');
	  for(ios in sel1){
	  var option = document.createElement("option");
	  option.text = sel1[ios];
	  x.add(option);
	  }
	  
	  for(imac in sel2){
	  var option = document.createElement("option");
	  option.text = sel2[imac];
	  y.add(option);
	  }
	
	} 							
	}
	/*---------------------------------------------------------------*/
							
</script>
				</div>
				<!-- //login -->
			</div>
		</div>
		<div class="w3l_banner_nav_right">
		
		
			<div class="w3ls_w3l_banner_nav_right_grid w3ls_w3l_banner_nav_right_grid_veg">
				<div class="w3ls_w3l_banner_nav_right_grid1 w3ls_w3l_banner_nav_right_grid1_veg">
				

<%
List<DisPojo> lists=userDao.loadDistributorRequests(did);
if(!lists.isEmpty()){%>
<table class="timetable_sub" id="myTable" style="margin-left: -150px;margin-top: -200px">

											<thead>
												<tr>
													<th>
														S.No
													</th>
													<th>Manufacturer</th>
													<th>
														Product Id
													</th>
													<th>
														Product Name
													</th>
													<th>
														Price
													</th>
													<th>Packets</th>
													<th>image</th>
													<th>Date & Time</th>
													
													<th>Status</th>
													
												</tr>
											</thead>
<%
int i=1;
for(DisPojo disPojo:lists)
{
%>										
<tbody>
	<tr>
	<td><%=i %>.</td>
	<td><%=disPojo.getManufacturer() %></td>
	<td><%=disPojo.getProductId() %></td>
	<td><%=disPojo.getProductName() %></td>
	
	<td><%=disPojo.getPrice()%></td>
	<%if(disPojo.getPackets().equals("0") || Integer.parseInt(disPojo.getPackets()) < 0 ){ %>
	
	<td style="color: red;">
	<span class="blinking">Stock Unavailable</span>
	</td>
	<%}else{ %>
	<td><%=disPojo.getPackets()%></td>
	<%} %>
	<td><img src="http://localhost:8888/<%=disPojo.getImage().replace("webapps","") %>"
										style="height: 50px; width: 50px" /></td>
	
	<td><%=disPojo.getDateTime() %></td>
	
	<%if(disPojo.getStatus().equalsIgnoreCase("pending")){%>
	<td style="color:red;">
	<div class="spinner">
  <div class="bounce1"></div>
  <div class="bounce2"></div>
  <div class="bounce3"></div>
  <%=disPojo.getStatus() %>
</div></td>
	<%} else if(disPojo.getStatus().equalsIgnoreCase("Declined")){%>
	<td style="color: red;"><%=disPojo.getStatus() %></td>
	<%} else if(disPojo.getDistributorPrice().equals("0")){%>
	
	<td style="color: green;">
	<div class="spinner">
  <div class="bounce1"></div>
  <div class="bounce2"></div>
  <div class="bounce3"></div>
 
</div>waiting</td>
	<%}else{%>
	<td><button style="background: seagreen"><a href="DistributorContract?id=<%=disPojo.getProductId() %>" style="color: white;">Track here</a></button></td>
	
	</tr>										
</tbody>
<%i++;} }%>
</table>											
<%}%>
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
	<p style="color: white;">© 2019 food supply chain</p>
		
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