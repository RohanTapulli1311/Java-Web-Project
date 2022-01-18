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
	<h1 align="center">ADMINISTRATOR PAGE</h1>
	<div class="container">
		<div class="row mt-5">

			<div class="col-md-4">
				<a href="categoryList.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="container">
								<img style="max-width: 230px" class="img-fluid rounded circle"
									src="images/category.jpeg"></img>
								<h1>Categories</h1>
							</div>
						</div>
					</div>
			</div>
			</a>
			<div class="col-md-4">
				<a href="category.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="container">
								<img style="max-width: 230px" class="img-fluid rounded circle"
									src="images/add.jpeg"></img>
								<h1>Add Category</h1>
							</div>
						</div>
					</div>
			</div>
			</a>
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