<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<html>
 <head>
  <link href="css/bootstrap.min.css" rel="stylesheet">
 </head>
 <body>
  <div class="container my-2" >
   <div class="card">
    <div class="card-body">
    <div align="center">
     <h4 style='color:red'>${error}</h4>
    </div>
    <frm:form action="save" method="post">
     <div class="row col-md-12">
      <div class="col-md-10 my-2">
       <label for="eid" class="label-form-control">Employee Id</label>
       <frm:input class="form-control" type="text" path="eid"/>
      </div>
      <div class="col-md-10 my-2">
       <label for="firstname" class="label-form-control">First Name</label>
       <frm:input class="form-control" type="text" path="firstname"/>
      </div>
      <div class="col-md-10 my-2">
       <label for="lastname" class="label-form-control">Last Name</label>
       <frm:input class="form-control" type="text" path="lastname"/>
      </div>
      <div class="col-md-10 my-2">
       <label for="email" class="label-form-control">Email</label>
       <frm:input class="form-control" type="text" path="email"/>
      </div>
      <div class="col-md-10 my-2">
       <label for="age" class="label-form-control">age</label>
       <frm:input class="form-control" type="text" path="age"/>
      </div>
      <div class="col-md-10 my-2">
       <input class="btn btn-primary" type="submit" value="Submit"/>
      </div>
     </div>
     </frm:form>
    </div>
   </div>
  </div>
 </body>
</html>