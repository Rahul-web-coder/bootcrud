<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>>
<html>
<head>
 <link href="css/bootstrap.min.css" rel="stylesheet">
 <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
 
</head>
<body>
<div class="container my-3">
 <div class="card">
  <div class="card-body">
   <div class="row col-md-10">
    <p class="my-1">
     <a href="addemp" class="btn btn-primary"><i class="fa fa-user-plus"></i>Add Employee</a>
    </p>
    <c:choose>
     <c:when test="${list.size()==0}">
      <div class="col-md 10">
       <div class="my-5">
      <h3 style="color:red">No records Found</h3>
       </div>
      </div>
     </c:when>
    
    <c:otherwise>
    <table class="table table-bordered table-striped my-3">
     <thead>
      <tr>
       <th>Employee Id</th><th>First Name</th><th>Last Name</th><th>Email</th><th>Age</th>
       <th>Edit</th><th>Delete</th>
      </tr>
     </thead>
     <tbody>
      <c:forEach var="emp" items="${list}">
       <tr>
        <td>${emp.eid}</td>
        <td>${emp.firstname}</td>
        <td>${emp.lastname}</td>
        <td>${emp.email}</td>
        <td>${emp.age}</td>
        <td><a title="edit record" class="btn btn-primary" href="edit?eid=${emp.eid}"><i class="fa fa-user-edit"></i></a></td>
        <td><a title="delete record" class="btn btn-danger" href="delete?eid=${emp.eid}" onclick="return confirm('Are you sure ?')"><i class="fa fa-trash"></i></a></td>
       </tr>
      </c:forEach>
     </tbody>
    </table>
    </c:otherwise>
    </c:choose>
   </div>
  </div>
 </div>

</div>

</body>
</html>