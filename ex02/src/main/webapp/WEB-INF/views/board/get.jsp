<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<%@include file="../includes/sidebar.jsp" %>
<%@include file="../includes/topbar.jsp" %>


                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Borard Read</h1>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Borard Read</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                               
                           		<div class="form-group">
                           			<label>Bno</label>
                           			<input class="form-control" name="bno" readonly="readonly" value='<c:out value="${board.bno}"/>'><br>
                           		<div class="form-group">
                           		<div class="form-group">
                           			<label>Title</label>
                           			<input class="form-control" name="title" readonly="readonly" value='<c:out value="${board.title}"/>'><br>
                           		<div class="form-group">
                           			<label>Content</label>
                           			<textarea rows="5" cols="50" name="content" class="form-control"  readonly="readonly"><c:out value="${board.content}"></c:out></textarea>
                           		</div>
                           		<div class="form-group">
                           			<label>Writer</label>
                           			<input class="form-control" name="writer"  readonly="readonly" value='<c:out value="${board.writer}"/>'/>
                           		</div>
                             	<button type="submit" class="btn btn-default"><a href="/board/list">List</a></button>
                             	<button type="submit" class="btn btn-default"><a href="/board/modify?bno=<c:out value="${board.bno}"/>">Modify</a></button>
                        		<button type="reset" class="btn btn-default">Reset Button</button>
                               
                               
                               
                               
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
            
 <%@include file="../includes/footer.jsp" %>
