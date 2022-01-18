<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="Components/common_cs_js.jsp"%>
<link rel="stylesheet" href="css/Common_css.css">

</head>
<body>
	<h1 align="center">CLIENT PAGE</h1>
	<div class="container">
		<div class="row mt-5">

			<div class="col-md-4">
				<a href="productList.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="container">
								<img style="max-width: 230px" class="img-fluid rounded circle"
									src="images/category.jpeg"></img>
								<h1>Products</h1>
							</div>
						</div>
					</div>

				</a>
			</div>
			<div class="col-md-4">
				<a href="product.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="container">
								<img style="max-width: 230px" class="img-fluid rounded circle"
									src="images/add.jpeg"></img>
								<h1>Add Product</h1>
							</div>
						</div>
					</div>

				</a>
			</div>
			<div class="col-md-4">
				<a href="homePage2.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="container">
								<img style="max-width: 230px" class="img-fluid rounded circle"
									src="images/home.jpeg"></img>
								<h1>Home Page</h1>
							</div>
						</div>
					</div>

				</a>
			</div>
		</div>

	</div>



</body>
</html>