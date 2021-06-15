<%@ include file="fragments.jsp"%>
<div class="container" >
	<h1 class="display-5">Product Overview</h1>

	<div class="d-flex justify-content-start p-2" >
		<a class="list-group-item mr-2" href="/allProduct">All Product</a>



		<ul class="nav nav-pills">

			<c:forEach items="${categoryList}" var="category">
				<li  class="nav-item"><a class="list-group-item mr-2" style="background: #A3D5FF" 
					href="/getProducts/${category.categoryId}">${category.categoryName}</a>
				</li>


			</c:forEach>
		</ul>


	</div>

	<div class="row">

		<c:forEach items="${productList}" var="product">
			<div class="col-sm-4">
				<div  class="card mt-4">
					<img src="${product.image}" class="card-img-top"
						alt="Product Image">
					<div class="card-body">
						<h5 class="card-title">${product.productName}</h5>
						<p class="card-text">${product.productDescription}</p>
						<p class="card-text">${product.productPrice}</p>
						<a href="/profile/addToCart/${product.productId}"
							class="btn btn-primary">AddToCart</a>
					</div>
				</div>
			</div>
		</c:forEach>

	</div>

</div>
</body>
</html>