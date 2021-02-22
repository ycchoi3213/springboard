<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<%@include file="../includes/sidebar.jsp" %>
<%@include file="../includes/topbar.jsp" %>


                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Tables</h1>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                            <button id="regBtn" type="button" class="btn btn-xs pull-right" style="float: right;">Register New Board</button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>BNO</th>
                                            <th>Title</th>
                                            <th>Writer</th>
                                            <th>RegDate</th>
                                            <th>UpdateDate</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${list}" var="board">
                                        <tr>
                                            <td>${board.bno}</td>
                                            <td><a href="/board/get?bno=<c:out value="${board.bno}"/>">${board.title}</a></td>
                                            <td>${board.writer}</td>
                                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}"/></td>
                                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate}"/></td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                          
                                <div class='pull-right'>
                                	<ul class="pagination">
                                		<c:if test="${pageMaker.prev}">
              		                  	<li class="page-item">
    									   <a class="page-link" href="${pageMaker.StartPage - 1 }" tabindex="-1">Previous</a>
   										</li>
   										</c:if>
                                		<c:forEach begin="${pageMaker.startPage }" end = "${pageMaker.endPage}" var = "num">
                                		<li class="page-item ${pageMaker.cri.pageNum == num?"active":"" }"><a class="page-link" href="${num}">${num}</a></li>
                         				</c:forEach>
                         				<c:if test="${pageMaker.next}">
                         				<li class="page-item">
    									   <a class="page-link" href="${pageMaker.endPage + 1 }" tabindex="-1">Next</a>
   										</li>
   										</c:if>
                                	</ul>
                                
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
            
            <form id = 'actionForm' action "/board/list" method='get'>
            	<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
            	<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
            
            </form>
            
            
            
           
<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Modal body text goes here.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Save changes</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>


           
<script type="text/javascript">

$(document).ready(function(){

	var result = '<c:out value="${result}"/>';

	checkModal(result);

	history.replaceState({}, null, null);

	function checkModal(result){

		if(result ==='' || history.state){
			return;
		}

		if(parseInt(result) > 0){
			$(".modal-body").html("게시글 " + parseInt(result) + "번이 등록되었습니다.");
		} else if(result === 'success'){
			$(".modal-body").html("정상적으로 처리되었습니다.");

		}
		$("#myModal").modal("show");		

	}
	$("#regBtn").click(function(){

		self.location="/board/register";

	});

	var actionForm = $("#actionForm");

	$(".page-link").on("click", function(e){
		e.preventDefault();

		var targetPage = $(this).attr("href");

		console.log(targetPage);

		actionForm.find("input[name='pageNum']").val(targetPage);

		});
		
	
});


</script>
            
            
            
 <%@include file="../includes/footer.jsp" %>
