<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>


<head>
<!--    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<title>Start Take the personality type test</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- Favicon -->
<link href="/img/feature.jpg" rel="icon">

<!-- Google Web Fonts -->

<script src="lib/3.6.0/jquery.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&family=Rubik:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="/lib/animate/animate.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="/css/style.css" rel="stylesheet">

<!-- JavaScript Libraries -->
<script src="lib/jquery-3.4.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="lib/wow/wow.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/waypoints/waypoints.min.js"></script>
<script src="lib/counterup/counterup.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>
<!-- Template Javascript -->
<script src="js/main.js"></script>
</head>

<body>
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner"></div>
	</div>
	<!-- Spinner End -->


	<!-- Topbar Start -->
	<div class="container-fluid bg-dark px-5 d-none d-lg-block">
		<div class="row gx-0">
			<div class="col-lg-8 text-center text-lg-start mb-2 mb-lg-0">
				<div class="d-inline-flex align-items-center" style="height: 45px;">
					<small class="me-3 text-light"><i
						class="fa fa-map-marker-alt me-2"></i>123 Street, New York, USA</small> <small
						class="me-3 text-light"><i class="fa fa-phone-alt me-2"></i>+012
						345 6789</small> <small class="text-light"><i
						class="fa fa-envelope-open me-2"></i>info@example.com</small>
				</div>
			</div>
			<div class="col-lg-4 text-center text-lg-end">
				<div class="d-inline-flex align-items-center" style="height: 45px;">
					<a
						class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2"
						href=""><i class="fab fa-twitter fw-normal"></i></a> <a
						class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2"
						href=""><i class="fab fa-facebook-f fw-normal"></i></a> <a
						class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2"
						href=""><i class="fab fa-linkedin-in fw-normal"></i></a> <a
						class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2"
						href=""><i class="fab fa-instagram fw-normal"></i></a> <a
						class="btn btn-sm btn-outline-light btn-sm-square rounded-circle"
						href=""><i class="fab fa-youtube fw-normal"></i></a>
				</div>
			</div>
		</div>
	</div>
	<!-- Topbar End -->


	<!-- Navbar & Carousel Start -->
	<div class="container-fluid position-relative p-0">
		<nav class="navbar navbar-expand-lg navbar-dark px-5 py-3 py-lg-0">
			<!-- 네비게이션 바 내용은 여기에 추가 -->
		</nav>

		<div id="header-carousel" class="carousel slide carousel-fade"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="w-100" src="/img/mbti.png" alt="Image">
					<div
						class="carousel-caption d-flex flex-column align-items-center justify-content-center">
						<div class="p-3" style="max-width: 900px;">
							<h1 class="display-1 text-white mb-md-4 animated zoomIn">MBTI
								& Start</h1>
							<h3 style="margin-top: 50px" id="content"
								class="display-1 text-white mb-md-4 animated zoomIn"></h3>
							<input type="hidden" name="questionId" id="questionId"> <input
								type="hidden" id="questioncontent"> <input type="hidden"
								id="questionType">
							<button style="margin-top: 50px" id="yesButton"
								class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Yes</button>
							<button style="margin-top: 50px" id="noButton"
								class="btn btn-outline-light py-md-3 px-md-5 animated slideInRight"
								>No</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Navbar & Carousel End -->


	<!-- Full Screen Search Start -->
	<div class="modal fade" id="searchModal" tabindex="-1">
		<div class="modal-dialog modal-fullscreen">
			<div class="modal-content" style="background: rgba(9, 30, 62, .7);">
				<div class="modal-header border-0">
					<button type="button" class="btn bg-white btn-close"
						data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div
					class="modal-body d-flex align-items-center justify-content-center">
					<div class="input-group" style="max-width: 600px;">
						<input type="text"
							class="form-control bg-transparent border-primary p-3"
							placeholder="Type search keyword">
						<button class="btn btn-primary px-4">
							<i class="bi bi-search"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Footer Start -->
	<div class="container-fluid bg-dark text-light mt-5 wow fadeInUp"
		data-wow-delay="0.1s">
		<div class="container">
			<div class="row gx-5">
				<div class="col-lg-4 col-md-6 footer-about">
					<div
						class="d-flex flex-column align-items-center justify-content-center text-center h-100 bg-primary p-4">
						<a href="" class="navbar-brand">
							<h1 class="m-0 text-white">
								<i class="fa fa-user-tie me-2"></i>Startup
							</h1>
						</a>
						<p class="mt-3 mb-4">Lorem diam sit erat dolor elitr et, diam
							lorem justo amet clita stet eos sit. Elitr dolor duo lorem, elitr
							clita ipsum sea. Diam amet erat lorem stet eos. Diam amet et kasd
							eos duo.</p>
						<form action="">
							<div class="input-group">
								<input type="text" class="form-control border-white p-3"
									placeholder="Your Email">
								<button class="btn btn-dark">결과보기</button>
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div class="container-fluid text-white" style="background: #061429;">
		<div class="container text-center">
			<div class="row justify-content-end">
				<div class="col-lg-8 col-md-6">
					<div class="d-flex align-items-center justify-content-center"
						style="height: 75px;">
						<p class="mb-0">
							&copy; <a class="text-white border-bottom" href="#">Your Site
								Name</a>. All Rights Reserved.

							<!--/*** This template is free as long as you keep the footer authorâs credit link/attribution link/backlink. If you'd like to use the template without the footer authorâs credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							Designed by <a class="text-white border-bottom"
								href="https://htmlcodex.com">HTML Codex</a>
						</p>
						<br>Distributed By: <a class="border-bottom"
							href="https://themewagon.com" target="_blank">ThemeWagon</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->


	<!-- Back to Top -->
	<a href="#"
		class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i
		class="bi bi-arrow-up"></i></a>

	<script>
		$(document)
				.ready(
						function() {
							var questionData = []; // 질문 데이터를 저장할 배열
							var selectedTypes = [];
							var selectCheckList = [];
							var questionIndex = 0; // 현재 질문 인덱스

							// 초기 질문 데이터를 불러오고 배열에 저장
							$
									.ajax({
										type : "GET",
										url : "/Nextquestion.do",
										dataType : "json",
										contentType : "application/json;charset=UTF-8",
										data : {
											question_id : 0
										},
										success : function(data, status,
												request) {
											if (data.questionList.length > 0) {
												questionData = data.questionList;
												displayQuestion(questionData[questionIndex]); // 초기 질문 표시
											} else {
												alert("문항을 불러오지 못했습니다.");
											}
										},
										error : function(request, status, error) {
											alert("에러발생");
										}
									});

							// "Yes" 버튼 클릭 이벤트 핸들러
							$("#yesButton")
									.click(
											function() {
												if (questionIndex < questionData.length - 1) {
													selectedTypes
															.push(questionData[questionIndex].questionType);
													selectCheckList
															.push(questionData[questionIndex].questionContent);
													questionIndex++; // 다음 질문 인덱스로 이동
													displayQuestion(questionData[questionIndex]); // 다음 질문 표시
												} else {
													alert("더 이상 질문이 없습니다. 결과 확인 처리를 진행하세요.");
													check_list(selectedTypes,
															selectCheckList);
												}
											});

							// "No" 버튼 클릭 이벤트 핸들러 (예시에서는 사용하지 않음)
							$("#noButton")
									.click(
											function() {
												// 선택하지 않았을 때의 처리 추가
												// 예: selectedTypes, selectCheckList에 아무것도 추가하지 않음
												if (questionIndex < questionData.length - 1) {
													questionIndex++; // 다음 질문 인덱스로 이동
													displayQuestion(questionData[questionIndex]); // 다음 질문 표시
												} else {
													alert("더 이상 질문이 없습니다. 결과 확인 처리를 진행하세요.");
													check_list(selectedTypes,
															selectCheckList);
												}
											});

							// 질문을 화면에 표시하는 함수
							function displayQuestion(question) {
								$("#content").text(question.questionContent);
								$("#questionId").val(question.questionId);
								$("#questionType").val(question.questionType);
								$("#questioncontent").val(
										question.questionContent);
							}
						});

		function check_list(selectedTypes, selectCheckList) {
			if (!confirm("내 MBTI 유형 결과 확인")) {
				alert("처음부터 다시하기");
				questionIndex = 0; // 질문 인덱스 초기화
				selectedTypes.length = 0; // 선택한 타입 배열 초기화
				selectCheckList.length = 0; // 선택한 문항 배열 초기화
				displayQuestion(questionData[questionIndex]); // 초기 질문 표시
			} else {
				/*  
				var requestData = {
					    selectedTypes: selectedTypes,
					    selectCheckList: selectCheckList
					};
				JSON.stringify 하지 않았을경우 415 에러 혹은 400에러가 나왔음 
				
				 */
				var requestData = JSON.stringify({
					selectedTypes : selectedTypes,
					selectCheckList : selectCheckList
				});				
				console.log(requestData);
				// selectedTypes 결과 값 전달 
				$.ajax({
					type : "POST",
					url : "/CheckResult.do",
					contentType : 'application/json',
					data : requestData,

					success : function(data, status, request) {
						alert(data);
						console.log(data);
						
						 window.location.href = "/resultPage.do?resultType="+data;
						 
					},
					error : function(request, status, error) {
						console.log("에러 발생: ");
						console.log("요청: " + JSON.stringify(request));
						console.log("상태: " + status);
						console.log("에러: " + error);

						// 실제 에러 메시지를 확인
						alert("에러 발생: " + error);
					}
				});
			}
		}
	</script>
</body>

</html>