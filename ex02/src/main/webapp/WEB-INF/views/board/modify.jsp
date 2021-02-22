<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<%@include file="../includes/sidebar.jsp" %>
<%@include file="../includes/topbar.jsp" %>


                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Borard Modify/Delete</h1>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Borard Modify/Delete</h6>
                        </div>
                        <div class="card-body">
                            <div class="panel-body">
                               <form>
                           			<div class="form-group">
                           				<label>Bno</label>
                           			<input class="form-control" name="bno" readonly="readonly" value='<c:out value="${board.bno}"/>'><br>
                           			<div class="form-group">
	                           		<div class="form-group">
	                           			<label>Title</label>
	                           			<input class="form-control" name="title" readonly="readonly" value='<c:out value="${board.title}"/>'><br>
	                           		<div class="form-group">
	                           			<label>Content</label>
	                           			<textarea rows="5" cols="50" name="content" class="form-control" ><c:out value="${board.content}"></c:out></textarea>
	                           		</div>
	                           		<div class="form-group">
	                           			<label>Writer</label>
	                           			<input class="form-control" name="writer"  value='<c:out value="${board.writer}"/>'/>
	                           		</div>
	                             	<button class="btn btn-default" data-oper='modify'>Modify</button>
	                             	<button class="btn btn-danger" data-oper='remove'>Remove</button>
	                             	<button class="btn btn-info" data-oper='list'>List</button>
                        		</form>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
            
<script type="text/javascript">
	$(document).ready(function(){

		var formObj = $("form");
		
		$('.btn').click(function(e){
			
			e.preventDefault();

			var operation = $(this).data("oper");

			console.log(operation);

			if(operation==='list'){
				self.location="/board/list";
				} else if(operation==='remove'){
					formObj.attr("action", "/board/remove")
					.attr("method", "POST");
					formObj.submit();

				} else if(operation==='modify'){
					formObj.attr("action", "/board/modify")
					.attr("method", "POST");
					formObj.submit();

				}
			
			})
		})


</script>
            
            
            
 <%@include file="../includes/footer.jsp" %>
