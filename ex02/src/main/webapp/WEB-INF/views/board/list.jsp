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
                                            <td>${board.title}</td>
                                            <td>${board.writer}</td>
                                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}"/></td>
                                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate}"/></td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
            
 <%@include file="../includes/footer.jsp" %>
