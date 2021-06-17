<%@ include file="../fragments.jsp"%>
	<div class="container">
	<h1 class="display-4 my-3">Your Cart Product!</h1>
		<div class="row" >
			<ul class="list-group col-9">
				<li  class="list-group-item d-flex justify-content-around">
					<span class="my-auto h6">Product Image</span> 
					<span class="my-auto h6">Product</span> 
					<span class="my-auto h6">Price</span> 
					<span class="my-auto h6"></span> 
				</li>
			</ul>
			
			<c:forEach items="${user.productList}" var="product">
			<ul class="list-group col-9" >
				<li  class="list-group-item d-flex justify-content-around">
					<img src="data:image/jpg;base64,${product.image}" height="100"> 
					<span class="my-auto" >${product.productName}</span> 
					<span class="my-auto" >${product.productPrice}</span>
					<span class="my-auto" >
					
					<a href="profile/remove/${product.productId}"  type="button" class="btn btn-warning">Remove</a>
					</span>
				</li>
			</ul>
			</c:forEach>
		
			
			
			<ul class="list-group col-9">
				<li  class="list-group-item d-flex justify-content-end">
					<span class="h6" >Total : ${total}</span>
				</li>
				<li   class="list-group-item d-flex justify-content-end">
					<a href="/profile/checkOut" type="button" class="btn btn-primary">Check Out</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>