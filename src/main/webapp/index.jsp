<%@page import="com.db.DBConnect" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/component/allcss.jsp"%>
<style type="text/css">
   .paint-card{
   box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
   }
</style>
</head>
<body>
	<%@include file="/component/navbar.jsp"%>
	
	<%-- 
	<%Connection conn=DBConnect.getConn();
	out.print(conn);
	%> --%>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/exp1.png" class="d-block w-100" alt=" ">
			</div>
			<div class="carousel-item">
				<img src="img/exp2.png" class="d-block w-100" alt="...">
			</div>

			<div class="carousel-item">
				<img src="img/exp3.png" class="d-block w-100" style="height: 520px;"
					alt="Expense Tracker Screenshot">
			</div>

		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<div class="container p-3">
		<p class="text-center fs-2">Key Features of our Hospital</p>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Lorem ipsum dolor sit amet, consecteture adipisicing
									elit. Voluptatem, inventore</p>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>Lorem ipsum dolor sit amet, consecteture adipisicing
									elit. Voluptatem, inventore</p>
							</div>
						</div>
					</div>

					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Friendly Dectors</p>
								<p>Lorem ipsum dolor sit amet, consecteture adipisicing
									elit. Voluptatem, inventore</p>
							</div>
						</div>
					</div>

					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Lorem ipsum dolor sit amet, consecteture adipisicing
									elit. Voluptatem, inventore</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<img alt="" src="img/doc1.png" style="width: 500px; height: auto;">

			</div>
		</div>
	</div>

	<hr>
	<div class="container p-2">
		<p class="text-center fs-2">Our Team</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc2.png" width="250px" height="300px">
						<p class="fw-bold fs-5">Sonali</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc3.png" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.Sanni kr</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc4.png" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.Rohit pandey</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc5.png" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.Sondriya</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	
<%@include file="component/footer.jsp" %>

</body>
</html>