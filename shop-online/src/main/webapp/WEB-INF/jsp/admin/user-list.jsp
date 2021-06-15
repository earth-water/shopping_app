<%@ include file="../fragments.jsp"%>

	<div class="container">
	<div class="row my-5">
			<div class="list-group list-group-flush col-5">
				<a class="list-group-item list-group-item-action" 
					href="/manager/category-form">Manage Category</a>
				<a class="list-group-item list-group-item-action" 
					href="/manager/product-form">Manage Product</a>
				<a class="list-group-item list-group-item-action" 
					href="/admin/add-user">Add Admin/Manager</a>
				<a class="list-group-item list-group-item-action" 
					href="/admin/user-list">User/Manager/Admin List</a>
			</div>

		<table class="table table-striped my-5">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Email</th>
					<th scope="col">Role</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
			
			<c:forEach items="${userList}" var="user">
				
					<!--  <th  scope="row" th:text="${user.userId}"></th>-->
					<tr>
					<td>${user.userId}</td>
					<td>${user.firstName}</td>
					<td>${user.lastName}</td>
					<td>${user.email}</td>
					<td>${user.role}</td>
					<td>
						<a href="/admin/delete-User/${user.userId}" 
						class="btn btn-danger">Delete</a>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</div>
	</div>
</body>
</html>