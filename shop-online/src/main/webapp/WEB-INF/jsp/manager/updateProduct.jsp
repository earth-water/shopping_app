<%@ include file="../fragments.jsp"%>
<div class="container">
	<div
		style="width: 600px; margin-left: auto; margin-right: auto; margin-top: 24px; padding: 24px;">
		<div class="card">
			<div class="card-block" style="padding: 24px;">
				<form:form action="/manager/add-product" method="post"
					modelAttribute="product" enctype="multipart/form-data">
					<fieldset>
						<form:input type="hidden" name="productId" path="productId" />
							<div class="form-group" >

							<form:select required="required" class="custom-select" name="category" path="category" >
								<option selected>Select Category</option>
								<c:forEach items="${categoryList}" var="category">
									<option value="${category.categoryId}">${category.categoryName}</option>
								</c:forEach>
							</form:select>
							</div>
			

			<div class="form-group">
				<label for="productName">Product Name</label>
				<form:input type="text" class="form-control" value="${Product.productName}" required="required"
					 name="productName" path="productName"/>
			</div>

			<div class="form-group">
				<label for="productDescription">Product Description</label>
				<form:input type="text" class="form-control" id="productDescription"  value="${Product.productDescription}" required="required"
					name="productDescription" path="productDescription"/>
			</div>

			<div class="form-group">
				<label for="productPrice">Product Price</label>
				<form:input type="number" class="form-control" id="productPrice"  value="${Product.productPrice}" required="required"
					path="productPrice" name="productPrice"/>
			</div>

			<div class="form-group">
				<label for="productUnit">Product Unit</label>
				<form:input type="number" class="form-control" id="productUnit"  value="${Product.productUnit}" required="required"
					name="productUnit" path="productUnit"/>
			</div>

			<div class="form-group">
				<label for="file">Product Image</label> <input type="file"
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

</body>
</html>