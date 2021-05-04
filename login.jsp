<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
       <html>
       
       <head>
  <title>Login App</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css" />
  
  
<style>
@charset "ISO-8859-1";
 
  body {
    background:#333;
}
.form_bg {
    background-color:#eee;
    color:#666;
    padding:20px;
    border-radius:10px;
    position: absolute;
    border:1px solid #fff;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 320px;
    height: 340px;
}
.align-center {
    text-align:center;
}
</style>

<script type="text/javascript">
$(document).ready(function(){
	if($("#firstname").html()!=""){
	$("#hidebutton").click();
	}
});
</script>
  
  
</head>
       <div class="container">
    <div class="row">
        <div class="form_bg">
          <form:form id="loginForm" modelAttribute="login" action="loginProcess" method="post">
                 <h2 class="text-center">Login Page</h2>
                 
                <br/>
                <div class="align-center">
                <div id="firstname" style="display:none">${firstname}</div>
					<strong>${message}</strong> 
					</div>
                <div class="form-group">
                 <form:input path="username" name="username" id="username" class="form-control" />
                </div>
                <div class="form-group">
                
                 <form:password path="password" name="password" id="password" class="form-control"  />
                </div>
                <br/>
                <div class="align-center">
                    <button type="submit" class="btn btn-default" id="login">Login</button>
                </div>
                 <div class="align-right">
                 <a href="register" >Register</a>
                </div>
                  
                  
			</form:form>
            
           
        </div>
    </div>
</div>
       </html>
     
     
     
<button type="button" class="btn btn-info btn-lg hide" id="hidebutton" data-toggle="modal" data-target="#myModal">Open Modal</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Login Success</h4>
        </div>
        <div class="modal-body">
          <p>Welcome ${firstname}</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>