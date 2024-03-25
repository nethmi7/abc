<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<meta charset="ISO-8859-1">
	<title>kfc colombo</title>
</head>
<body>
	<div class="container-fluid">
		<ul class="nav nav-tabs">
			<li class="nav-item">
				<a class="nav-link" href="welcome">Store</a>
			</li>
			<li class="nav-item">
				<a class="nav-link active" aria-current="page" href="#">Search Specific & Update</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="add-product.jsp">Add</a>
			</li>
		</ul>
		<br/>
		<br/>
		<div class="container">
			<h3>Search Product-----------------</h3>
			<br/>
			<form method="get" action="product">
				<label for="productCode">Product Code: </label>
				<input type="number" class="form-control" id="productCode" name="productCode"/>
				<input type="hidden" name="type" value="specific"/>
				<br/>
				<button type="submit" class="btn btn-info">Search</button>			
			</form>
						
			<br/>
			<p>${message}</p>
			<br/>
			<h3>Edit Product-----------------</h3>
			<br/>
			<br/>
			<form method="post" action="product">
				<label for="productCode">Product Code:	</label>
				<input type="text" readonly class="form-control" id="productCode" name="productCode" value="${product.productCode}"/>
				<br/>
				<br/>
				<label for="productName">Product Name:	</label>
				<input type="text" class="form-control"" id="productName" name="productName"  value="${product.name}"/>
				<br/>
				<br/>
				<label for="price">Price [LKR]:	</label>
				<input type="number" class="form-control"" id="price" name="price"  value="${product.price}"/>
				<input type="hidden" name="type" value="update"/>
				<br/>
				<br/>
				<button type="submit" class="btn btn-warning">Update</button>			
			</form>		
		</div>		
	</div>
</body>
</html>