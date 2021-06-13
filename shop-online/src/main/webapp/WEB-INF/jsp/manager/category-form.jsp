<%@ include file="../fragments.jsp"%>
	<div class="container">
	
	<div class="row my-5">
			<div class="list-group list-group-flush col-5">
				<a class="list-group-item list-group-item-action" 
					href="/manager/category-form">Manage Category</a>
				<a class="list-group-item list-group-item-action" 
					href="/manager/product-form">Manage Product</a>
			</div>

		<table class="table col-7">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Category Name</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${categoryList}" var="category">
				<tr >
					<th scope="row" >${category.categoryId}</th>
					<td >${category.categoryName}</td>
					<td>
						<a href="/manager/updateCategory/${category.categoryId}" 
						class="btn btn-danger">Update</a>
						<a href="/manager/delete-Category/${category.categoryId}" 
						class="btn btn-danger">Delete</a>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</div>

		<div
			style="width: 600px; margin-left: auto; margin-right: auto; margin-top: 24px; padding: 24px;">
			<div class="card">
				<div class="card-block" style="padding: 24px;">
				
					<form:form action="/manager/add-category" method="post" modelAttribute="category">
						<fieldset>
							<div class="form-group">
								<label for="categoryName">Category Name</label> 
								<form:input required="required"
									type="text" class="form-control" id="categoryName" path="categoryName"/>
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