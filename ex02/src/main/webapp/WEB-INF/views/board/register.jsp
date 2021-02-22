<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<%@include file="../includes/sidebar.jsp" %>
<%@include file="../includes/topbar.jsp" %>


                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Borard Register</h1>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Borard Register</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                               <form action="/board/register" method="post">
                               		<div class="form-group">
                               			<label>Title</label>
                               			<input class="form-control" name="title"><br>
                               		<div class="form-group">
                               			<label>Content</label>
                               			<textarea rows="5" cols="50" name="content" class="form-control"></textarea>
                               		</div>
                               		<div class="form-group">
                               			<label>Writer</label>
                               			<input class="form-control" name="writer">
                               		</div>
                                 	<button type="submit" class="btn btn-default">Submit Button</button>
                            		<button type="reset" class="btn btn-default">Reset Button</button>
                               </form>
                               
                               
                               
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
            
 <%@include file="../includes/footer.jsp" %>
