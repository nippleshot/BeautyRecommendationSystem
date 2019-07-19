<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>관리자 페이지</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="/resources/dist/assets/images/favicon.ico">

        <!-- inline style to handle loading of various element-->
        <style>body.loading {visibility: hidden;}</style>

        <!-- third party css -->
        <link href="/resources/dist/assets/css/vendor/fullcalendar.min.css" rel="stylesheet" type="text/css" />
        <!-- third party css end -->

        <!-- App css -->
        <link href="/resources/dist/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="/resources/dist/assets/css/app.min.css" rel="stylesheet" type="text/css" id="main-style-container" />

    </head>

    <body class="loading">
        <div id="detached-topbar-placeholder"></div>
        <!-- Begin page -->
        <div class="wrapper">

            <div id="vertical-sidebar-placeholder"></div>
            <div id="detached-sidebar-placeholder"></div>

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">

                    <div id="vertical-topbar-placeholder"></div>
                    <div id="horizontal-topbar-placeholder"></div>
					<div><h3></h3></div>
                    <!-- Start Content-->
                    <div class="container-fluid">
                        
                       

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Product Type Modify</h4>
                                       

                                        <div class="row">
                                            <div class="col-lg-6">
                                                <form role="form" action="modify" method="post">

												<input type='hidden' name='prodtypeNo' value='${prodTypeVO.prodtypeNo}'>
												<input type='hidden' name='page' value="${cri.page}"> 
												<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
                                                	

                                                    <div class="form-group mb-3">
                                                        <label for="simpleinput">제품 타입 명</label>
                                                        <input type="text" name='name' class="form-control" value="${prodTypeVO.name}" readonly="readonly">
                                                    </div>
                                                    
                                                    <div class="form-group mb-3">
                                                        <label for="simpleinput">등록일</label>
                                                         <input type="text" class="form-control" value=<fmt:formatDate pattern="yyyy-MM-dd" value="${prodTypeVO.regdate}"/> readonly="readonly">
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="example-select">카테고리</label>
                                                        <select class="form-control" name = "categoryNo">
							
															<option value = "1000" <c:out value="${prodTypeVO.categoryNo eq '1000'?'selected':'1000'}"/>>클렌징</option>
															<option value = "1001" <c:out value="${prodTypeVO.categoryNo eq '1001'?'selected':'1001'}"/>>모이스춰라이저</option>
															<option value = "1002" <c:out value="${prodTypeVO.categoryNo eq '1002'?'selected':'1002'}"/>>토너</option>
															<option value = "1003" <c:out value="${prodTypeVO.categoryNo eq '1003'?'selected':'1003'}"/>>썬스크린</option>
								
														</select>
                                                    </div>
												<div class="box-footer" align="center">
													<button type="submit" class="btn btn-outline-success btn-rounded">저장</button>
													<button type="submit" class="btn btn-outline-danger btn-rounded">취소</button>
												</div>
											</form>
                                            </div> <!-- end col -->

                                          
                                               
                                            </div> <!-- end col -->
                                        </div>
                                        <!-- end row-->

                                    </div> <!-- end card-body -->
                                </div> <!-- end card -->
                            </div><!-- end col -->
                        </div>
                        <!-- end row -->

                    </div> <!-- container -->

                </div> <!-- content -->

                <!-- Footer Start -->
                 <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6">
                                2018 - 2019 © Hyper - Coderthemes.com
                            </div>
                            <div class="col-md-6">
                                <div class="text-md-right footer-links d-none d-md-block">
                                    <a href="javascript: void(0);">About</a>
                                    <a href="javascript: void(0);">Support</a>
                                    <a href="javascript: void(0);">Contact Us</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- end Footer -->

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->


        <!-- App js -->
        <script src="/resources/dist/assets/js/app_admin.js"></script>

        <!-- third party js -->
        <script src="/resources/dist/assets/js/vendor/jquery-ui.min.js"></script>
        <script src="/resources/dist/assets/js/vendor/fullcalendar.min.js"></script>
        <!-- third party js ends -->

        <!-- demo app -->
        <script src="/resources/dist/assets/js/pages/demo.calendar.js"></script>
        <!-- end demo js-->
    </body>
    <script>
	$(document).ready(
		function() {
	
			var formObj = $("form[role='form']");

			console.log(formObj);

			$(".btn-outline-danger")
				.on("click",function() {
					self.location = "/prodtype/list?page=${cri.page}&perPageNum=${cri.perPageNum}";
				});

			$(".btn-outline-success").on("click",
				function() {
					formObj.submit();
				});
	});
	</script>
</html>
