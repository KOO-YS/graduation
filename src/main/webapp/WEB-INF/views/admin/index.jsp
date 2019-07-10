<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
   	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   	<!-- Meta, title, CSS, favicons, etc. -->
   	<meta charset="utf-8">
   	<meta http-equiv="X-UA-Compatible" content="IE=edge">
   	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="images/favicon.ico" type="image/ico" />

   	<title>test</title>

   	<!-- Bootstrap -->
   	<link rel="stylesheet" href="/css/bootstrap.min.css">
   	<script src="js/bootstrap.min.js"></script>
<!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script> -->
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<!-- <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="#" crossorigin="anonymous"> -->
</head>

<body class="bg-light">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 ">
			     <c:import url="/WEB-INF/views/admin/resources/category.jsp"></c:import> 
			</div>
			<div class="col-md-9">
			    <div class="card">
			        <div class="card-body">
			            <div class="row">
			                <div class="col-md-2 border-right">
			                    <h4>Page name</h4>
			                </div>
			                <div class="col-md-6">
			                    <button type="button" class="btn btn-sm btn-primary">sample button</button>
			                </div>
			                
			            </div>
			            <hr>
			            <!-- <div class="row">
	        		        <div class="col-md-4 bg-light card-body">
	        		            <h5>Add New Category</h5>
	        		            <form>
	                              <div class="form-group row">
	                                <label for="text" class="col-12 col-form-label">Name</label> 
	                                <div class="col-12">
	                                  <input id="text" name="text" class="form-control here" type="text">
	                                </div>
	                              </div>
	                              <div class="form-group row">
	                                <label for="slug" class="col-12 col-form-label">Slug</label> 
	                                <div class="col-12">
	                                  <input id="slug" name="slug" class="form-control here" type="text">
	                                  <small>The “slug” is the URL-friendly version of the name. It is usually all lowercase and contains only letters, numbers, and hyphens.</small>
	
	                                </div>
	                              </div>
	                              <div class="form-group row">
	                                <label for="parent-category" class="col-12 col-form-label">Parent Category</label> 
	                                <div class="col-12">
	                                  <select id="parent-category" name="parent-category" class="custom-select">
	                                    <option value="">None</option>
	                                    <option value="uncategorized">Uncategorized</option>
	                                    <option value="new category">New Category</option>
	                                  </select>
	                                </div>
	                              </div>
	                              <div class="form-group row">
	                                <label for="description" class="col-12 col-form-label">Description</label> 
	                                <div class="col-12">
	                                  <textarea id="description" name="description" cols="40" rows="4" class="form-control"></textarea>
	                                </div>
	                              </div> 
	                              <div class="form-group row">
	                                <div class="col-12">
	                                  <button name="submit" type="submit" class="btn btn-primary btn-sm">Add New Category</button>
	                                </div>
	                              </div>
	                            </form>
	        		        </div>
	        		        <div class="col-md-8">
	        		            <table class="table table-hover ">
	                                <thead class="bg-light ">
	                                  <tr>
	                                    <th>
	                                      <div class="form-check-inline">
	                                          <label class="form-check-label">
	                                            <input type="checkbox" class="form-check-input" value="">
	                                           </label>
	                                       </div>
	                                    </th>  
	                                    <th>Name</th>
	                                    <th>Description</th>
	                                    <th>Slug</th>
	                                    <th>Count</th>
	                                  </tr>
	                                </thead>
	                                <tbody>
	                                  <tr>
	                                    <td>
	                                        <div class="form-check-inline">
	                                          <label class="form-check-label">
	                                            <input type="checkbox" class="form-check-input" value="">
	                                           </label>
	                                       </div>
	                                    </td>  
	                                    <td><a href="#"><small>Johnyahua</small></a></td>
	                                    <td><small>Doe</small></td>
	                                    <td><small>john@example.com</small></td>
	                                    <td><a href="#"><small>5</small></a></td>
	                                  </tr>
	                              
	                                 
	                                 
	                                </tbody>
	                              </table>
	        		        </div>
	        		    </div> -->
			        </div>
			    </div>
			</div>
		</div>
	</div>

	
  </body>
</html>
