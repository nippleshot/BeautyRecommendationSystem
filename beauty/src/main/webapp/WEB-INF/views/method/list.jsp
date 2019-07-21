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
                        
                        <!-- start page title -->
                      <!--   <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Hyper</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Tables</a></li>
                                            <li class="breadcrumb-item active">Basic Tables</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Basic Tables</h4>
                                </div>
                            </div>
                        </div>      -->
                        <!-- end page title --> 


                        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">세안법 등록</h4>
                                        <div align="right">
                                        <div align="left">
					<label>피부타입</label>
					<select name="searchType">
						<option value="n"
							<c:out value="${cri.searchType == null?'selected':''}"/>>
							---</option>
						<option value="p"
							<c:out value="${cri.searchType eq 'p'?'selected':''}"/>>
							건성</option>
						<option value="g"
							<c:out value="${cri.searchType eq 'g'?'selected':''}"/>>
							중성</option>
						<option value="b"
							<c:out value="${cri.searchType eq 'b'?'selected':''}"/>>
							지성</option>
						<option value="gb"
							<c:out value="${cri.searchType eq 'gb'?'selected':''}"/>>
							복합성</option>
						<option value="gb"
							<c:out value="${cri.searchType eq 'gb'?'selected':''}"/>>
							민감성</option>
					</select>
						
					<label>화장정도</label>
					<select name="searchType">
						<option value="n"
							<c:out value="${cri.searchType == null?'selected':''}"/>>
							---</option>
						<option value="p"
							<c:out value="${cri.searchType eq 'p'?'selected':''}"/>>
							건성</option>
						<option value="g"
							<c:out value="${cri.searchType eq 'g'?'selected':''}"/>>
							중성</option>
						<option value="b"
							<c:out value="${cri.searchType eq 'b'?'selected':''}"/>>
							지성</option>
						<option value="gb"
							<c:out value="${cri.searchType eq 'gb'?'selected':''}"/>>
							복합성</option>
						<option value="gb"
							<c:out value="${cri.searchType eq 'gb'?'selected':''}"/>>
							민감성</option>
					</select>
					<button id='searchBtn'>검색</button>
										</div>
											<button id='newBtn' type="button" class="btn btn-light btn-rounded">등록</button>
										</div>
										<div><h4>   </h1></div>
		
                                        <div class="table-responsive-sm">
                                            <table class="table table-hover table-centered mb-0">
                                                <thead>
                                                    <tr>
                                                        <th style="width: 10px">NO</th>
														<th>피부타입</th>
														<th>화장정도</th>
														<th>세안 Step</th>
														<th>등록일</th>
							                        </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${methodList}" var="methodVO">
							<tr>
								<td>${methodVO.methodNo}</td>
								<c:if test="${methodVO.skinType eq 'DR'}">
								<td><a href='/method/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&methodNo=${methodVO.methodNo}'>건성</a></td>
								</c:if>
								<c:if test="${methodVO.skinType eq 'NE'}">
								<td><a href='/method/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&methodNo=${methodVO.methodNo}'>중성</a></td>
								</c:if>
								<c:if test="${methodVO.skinType eq 'OI'}">
								<td><a href='/method/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&methodNo=${methodVO.methodNo}'>지성</a></td>
								</c:if>
								<c:if test="${methodVO.skinType eq 'CO'}">
								<td><a href='/method/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&methodNo=${methodVO.methodNo}'>복합성</a></td>
								</c:if>
								<c:if test="${methodVO.skinType eq 'SE'}">
								<td><a href='/method/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&methodNo=${methodVO.methodNo}'>민감성</a></td>
								</c:if>
								
								<c:if test="${methodVO.makeUpDegree eq 'NM'}">
								<td>노 메이크업</td>
								</c:if>
								<c:if test="${methodVO.makeUpDegree eq 'YM'}">
								<td>메이크업</td>
								</c:if>
								<c:if test="${methodVO.makeUpDegree eq 'SM'}">
								<td>색조 메이크업</td>
								</c:if>
								
								<td>${methodVO.methodStep}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd" value="${methodVO.regdate}"></fmt:formatDate></td>
								
							</tr>
						</c:forEach>
                                                </tbody>
                                            </table>
                                        </div> <!-- end table-responsive-->

				

					<div class="text-center" align="center">
					<nav>
						<ul class="pagination pagination-rounded">

							<c:if test="${pageMaker.prev}">
								<li class="page-item"><a
									href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }" >&laquo;</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li class="page-item active"
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="list${pageMaker.makeQuery(idx)}" class="page-link">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li class="page-item"><a
									href="list${pageMaker.makeSearch(pageMaker.endPage +1) }" >&raquo;</a></li>
							</c:if>

						</ul>
						</nav>
					</div>

				
                                    </div> <!-- end card body-->
                                </div> <!-- end card -->
                            </div><!-- end col-->

                            
                        </div>
                        <!-- end row-->


                        

                        
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

	<script>
	var result = '${msg}';

		if (result == 'SUCCESS') {
			alert("등록되었습니다.");
		} else if (result == 'ERROR') {
			alert("중복된 값이 있습니다.");
		} else if (result == 'MODSUCCESS') {
			alert("수정되었습니다.");
		} else if (result == 'DELSUCCESS') {
			alert("삭제되었습니다.");
		}
	</script>

	<script>
	$(document).ready(
			function() {

				$('#searchBtn').on(
						"click",
						function(event) {

							self.location = "list"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});

				$('#newBtn').on("click", function(evt) {

					self.location = "register";

				});
				
			});
	</script>
</body>
</html>