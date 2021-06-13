<%@ include file="../fragments.jsp"%>
<div class="container">

	<div class="row my-5">
		<div class="list-group list-group-flush col-5">
			<a class="list-group-item list-group-item-action"
				href="/manager/category-form">Manage Category</a> <a
				class="list-group-item list-group-item-action"
				href="/manager/product-form">Manage Product</a>
		</div>
	</div>

	<table class="table my-5">
		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Image</th>
				<th scope="col">Product Name</th>
				<th scope="col">Description</th>
				<th scope="col">Price</th>
				<th scope="col">No. of Unit</th>
				<th scope="col">Update</th>
				<th scope="col">Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${productList}" var="product">
				<tr>
					<th scope="row">${product.productId}</th>
					<td><img src="${product.image}" width="300px"></td>
					<td>${product.productName}</td>
					<td>${product.productDescription}</td>
					<td>${product.productPrice}</td>
					<td>${product.productUnit}</td>
					<td><a href="/manager/updateProduct/${product.productId}"
						class="btn btn-danger">Update</a></td>
					<td><a href="/manager/delete-Product/${product.productId}"
						class="btn btn-danger">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<div
		style="width: 600px; margin-left: auto; margin-right: auto; margin-top: 24px; padding: 24px;">
		<div class="card">
			<div class="card-block" style="padding: 24px;">

				<form:form action="/manager/add-product" method="post"
					modelAttribute="product" enctype="multipart/form-data">
					<fieldset>
						<div class="form-group">
							<select  required="required" class="custom-select" name="category">
								<option selected>Select Category</option>
								<c:forEach items="${categoryList}" var="category">
									<option value="${category.categoryId}">${category.categoryName}</option>
								</c:forEach>
							</select>


						</div>

						<div class="form-group">
							<label for="productName">Product Name</label>
							<form:input  type="text" class="form-control" id="productName" required="required" 
								name="productName" path="productName" placeholder="Product Name" />
						</div>

						<div class="form-group">
							<label for="productDescription">Product Description</label>
							<form:input  type="text" class="form-control" required="required" 
								id="productDescription" path="productDescription"
								name="productDescription" placeholder="Product Description" />
						</div>

						<div class="form-group">
							<label for="productPrice">Product Price</label>
							<form:input  type="number" class="form-control" id="productPrice" required="required"
								path="productPrice" name="productPrice"
								placeholder="Product Price" />
						</div>

						<div class="form-group">
							<label for="productUnit">Product Unit</label>
							<form:input  type="number" class="form-control" id="productUnit" required="required"
								path="productUnit" name="productUnit" placeholder="Product Unit" />
						</div>

						<div class="form-group">
							<label for="file">Product Image</label> <input type="file" required="required"
								class="form-control" id="file" name="file" />
						</div>
						<div class="form-actions" style="margin-top: 12px;">
							<button type="submit" class="btn btn-success">ADD</button>
						</div>
					</fieldset>
				</form:form>
			</div>
		</div>
	</div>
</div>

</body>
</html>