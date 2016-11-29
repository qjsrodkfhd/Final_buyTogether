<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String cp = request.getContextPath();
%>
<%@ page session="false"%>

<head>
<link href="<%=cp%>/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>FAQ</title>

<style type="text/css">
#thead_tr {
	text-align: center
}
</style>
</head>
<!-- jquery, bootstrap -->
<script src="http://code.jquery.com/jquery-2.1.1.min.js"
	type="text/javascript"></script>
<script src="<%=cp%>/resources/bootstrap/js/bootstrap.min.js"></script>

<body>
	<div class="container">
		<div class="row">
			<form>
				<h4 style="text-align: center">FAQ</h4>
			</form>
		</div>
		<div class="row">

			<!-- 좌2 중8 우2  -->
			<div class="col-sm-offset-2 col-sm-8">

				<form>
					<div class="box">
						<div class="box-body">
							<!-- select one으로 id에 넘버값 받아서 페이지 전환 -->
							<fieldset class="centered">
								<select>
									<option value="all" id="0">전체보기</option>
									<option value="enteruser" id="1">1.회원가입</option>
									<option value="hunting" id="2">2.사냥관련</option>
									<option value="infomation" id="3">3.정보관련</option>
									<option value="usercenter" id="4">4.고객센터</option>
								</select> <label>검색창: <input id="search" type="text">
								</label>
								<button type="button" class="btn btn-default">
									<span class="glyphicon glyphicon-search"></span> Search
								</button>
							</fieldset>
						</div>
					</div>
				</form>
				<div>
					<h4>고객의 궁금증 FAQ</h4>
				</div>
				<div class="box">
					<!-- 하단 Tap  -->
					<div class="tabbable">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tab1" data-toggle="tab">전체보기</a></li>
							<li role="presentation"><a href="#tab2" data-toggle="tab">회원가입</a></li>
							<li role="presentation"><a href="#tab3" data-toggle="tab">사냥관련</a></li>
							<li role="presentation"><a href="#tab4" data-toggle="tab">정보관련</a></li>
							<li role="presentation"><a href="#tab5" data-toggle="tab">고객센터</a></li>
						</ul>
						<!-- tab content 시작 -->
						
						<!-- forEach 시작 -->
						<c:forEach items="#" var="board">
							<div class="tab-content">
								<div class="tab-pane fade in active" id="tab1">

									<!-- 상단 테이블 -->
									<div>
										<table class="table">
											<colgroup>
												<col width="116">
												<col width="183">
												<col width="638">
											</colgroup>
											<thead>
												<tr>
													<th>번호</th>
													<th>분류</th>
													<th>제목</th>
												</tr>
											</thead>
										</table>

										<!-- 바디 테이블 -->

										<table class="table table-striped">
											<colgroup>
												<col width="116">
												<col width="183">
												<col width="638">
											</colgroup>
											<tbody class="table-group" id="accordion">
												<tr data-toggle="collapse" data-target="#demo1-1"
													data-parent="#accordion">
													<td>1 ${#.board_number}</td>
													<td>회원가입</td>
													<td>회원가입 하는 방법은 어떻게 되나요?{#.board_title}</td>
												</tr>
												<tr id="demo1-1" class="collapse">
													<td colspan="3">
														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵{#.board_content}</p>
													</td>
												</tr>

												<tr data-toggle="collapse" data-target="#demo1-2">
													<td>2{#.board.number}</td>
													<td>사냥관련</td>
													<td>사냥에 대해서{#.board.title}</td>
												</tr>
												<tr id="demo1-2" class="collapse">
													<td colspan="3">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵{#.board_content}</p>

													</td>
												</tr>
												<tr data-toggle="collapse" data-target="#demo1-3">
													<td>3{#.board_number}</td>
													<td>정보관련</td>
													<td>정보정보{#.board_title}</td>
												</tr>
												<tr id="demo1-3" class="collapse">
													<td colspan="3">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵 쿵ㅋ웈웈웈우{#.board.content}</p>

													</td>
												</tr>
												<tr data-toggle="collapse" data-target="#demo1-4">
													<td>4{#.board_number}</td>
													<td>고객센터</td>
													<td>고객고객{#.board_title}</td>
												</tr>
												<tr id="demo1-4" class="collapse">
													<td colspan="3">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵 쿵ㅋ웈웈웈우{#.board_content}</p>

													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>

								<!-- 2번째 회원관련 -->
								<div class="tab-pane fade" id="tab2">
									<!-- 상단 테이블 -->
									<div>
										<table class="table">
											<colgroup>
												<col width="116">
												<col width="183">
												<col width="638">
											</colgroup>
											<thead>
												<tr>
													<th>번호</th>
													<th>분류</th>
													<th>제목</th>
												</tr>
											</thead>
										</table>

										<!-- 바디 테이블 -->
										<table class="table table-striped">
											<colgroup>
												<col width="116">
												<col width="183">
												<col width="638">
											</colgroup>
											<tbody>
												<tr id="tr_faq" data-toggle="collapse"
													data-target="#demo2-1">
													<td>1{#.board_number}</td>
													<td>회원가입</td>
													<td>회원가입 하는 방법은 어떻게 되나요?{#.baord_title}</td>
												</tr>
												<tr id="demo2-1" class="collapse">
													<td colspan="3">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵{#.board_content}</p>

													</td>
												</tr>

												<tr id="tr_faq" data-toggle="collapse"
													data-target="#demo2-2">
													<td>2{#.board_number}</td>
													<td>회원가입</td>
													<td>회원탈퇴는 어떻게 해요?{#.baord_title}</td>
												</tr>
												<tr id="demo2-2" class="collapse">
													<td colspan="3">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵{#.board_content}</p>

													</td>
												</tr>
												<tr id="tr_faq" data-toggle="collapse"
													data-target="#demo2-3">
													<td>3{#.board_number}</td>
													<td>회원가입</td>
													<td>회원가입을 안해도 되죠?{#.board_title}</td>
												</tr>
												<tr id="demo2-3" class="collapse">
													<td colspan="3">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵 쿵ㅋ웈웈웈우{#.board_content}</p>

													</td>
												</tr>
												<tr id="tr_faq" data-toggle="collapse"
													data-target="#demo2-4">
													<td>4{#.board_number}</td>
													<td>회원가입</td>
													<td>회원가입회원가입{#.board_title}</td>
												</tr>
												<tr id="demo2-4" class="collapse">
													<td colspan="4">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵 쿵ㅋ웈웈웈우{#.board_contnet}</p>

													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>

								<!-- 3번째 사냥관련 -->
								<div class="tab-pane fade" id="tab3">
									<div>
										<!-- 상단 테이블 -->
										<table class="table">
											<colgroup>
												<col width="116">
												<col width="183">
												<col width="638">
											</colgroup>
											<thead>
												<tr>
													<th>번호</th>
													<th>분류</th>
													<th>제목</th>
												</tr>
											</thead>
										</table>
										<!-- 바디 테이블 -->
										<table class="table table-striped">
											<colgroup>
												<col width="116">
												<col width="183">
												<col width="638">
											</colgroup>
											<tbody>
												<tr id="tr_faq" data-toggle="collapse"
													data-target="#demo3-1">
													<td>1</td>
													<td>사냥관련</td>
													<td>사냥에 대해서{#.board_title}</td>
												</tr>
												<tr id="demo3-1" class="collapse">
													<td colspan="3">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵{#.board_content}</p>

													</td>
												</tr>

												<tr id="tr_faq" data-toggle="collapse"
													data-target="#demo3-2">
													<td>2{#.board_title}</td>
													<td>사냥관련</td>
													<td>사냥하는법은 무어인가요?{#.board_title}</td>
												</tr>
												<tr id="demo3-2" class="collapse">
													<td colspan="3">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵{#.board_content}</p>

													</td>
												</tr>
												<tr id="tr_faq" data-toggle="collapse"
													data-target="#demo3-3">
													<td>3{#.board_number}</td>
													<td>사냥관련</td>
													<td>사냥 아이템은 따로 없나요?{#.board_content}</td>
												</tr>
												<tr id="demo3-3" class="collapse">
													<td colspan="3">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵 쿵ㅋ웈웈웈우{#.board_content}</p>

													</td>
												</tr>
												<tr id="tr_faq" data-toggle="collapse"
													data-target="#demo3-4">
													<td>4</td>
													<td>사냥관련</td>
													<td>사냥사냥사냥</td>
												</tr>
												<tr id="demo3-4" class="collapse">
													<td colspan="4">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵 쿵ㅋ웈웈웈우{#.board_content}</p>

													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>

								<!-- 4번째 정보관련 -->
								<div class="tab-pane fade" id="tab4">
									<div>
										<!-- 상단 테이블 -->
										<table class="table">
											<colgroup>
												<col width="116">
												<col width="183">
												<col width="638">
											</colgroup>
											<thead>
												<tr>
													<th>번호</th>
													<th>분류</th>
													<th>제목</th>
												</tr>
											</thead>
										</table>
										<!-- 바디테이블 -->
										<table class="table table-striped">
											<colgroup>
												<col width="116">
												<col width="183">
												<col width="638">
											</colgroup>
											<tbody>
												<tr id="tr_faq" data-toggle="collapse"
													data-target="#demo4-1">
													<td>1{#.board_number}</td>
													<td>정보관련</td>
													<td>정보에 대해서{#.board_title}</td>
												</tr>
												<tr id="demo4-1" class="collapse">
													<td colspan="3">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵{#.board_contnet}</p>

													</td>
												</tr>

												<tr id="tr_faq" data-toggle="collapse"
													data-target="#demo4-2">
													<td>2{#.board_numbar}</td>
													<td>정보관련</td>
													<td>정보관련이 무엇인가요?{#.board_title}</td>
												</tr>
												<tr id="demo4-2" class="collapse">
													<td colspan="3">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵{#.board_content}</p>

													</td>
												</tr>
												<tr id="tr_faq" data-toggle="collapse"
													data-target="#demo4-3">
													<td>3{#.board_number}</td>
													<td>정보관련</td>
													<td>정보가 필요해{#.board_title}</td>
												</tr>
												<tr id="demo4-3" class="collapse">
													<td colspan="3">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵 쿵ㅋ웈웈웈우{#.baord_content}</p>

													</td>
												</tr>
												<tr id="tr_faq" data-toggle="collapse"
													data-target="#demo4-4">
													<td>4{#.board_number}</td>
													<td>정보관련</td>
													<td>정보정보정보{#.board_title}</td>
												</tr>
												<tr id="demo4-4" class="collapse">
													<td colspan="4">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵 쿵ㅋ웈웈웈우{#.board_content}</p>

													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>

								<!-- 5번째 고객센터 -->
								<div class="tab-pane fade" id="tab5">
									<div>
										<!-- 상단 테이블 -->
										<table class="table">
											<colgroup>
												<col width="116">
												<col width="183">
												<col width="638">
											</colgroup>
											<thead>
												<tr>
													<th>번호</th>
													<th>분류</th>
													<th>제목</th>
												</tr>
											</thead>
										</table>
										<!-- 바디테이블 -->
										<table class="table table-striped">
											<colgroup>
												<col width="116">
												<col width="183">
												<col width="638">
											</colgroup>
											<tbody>
												<tr id="tr_faq" data-toggle="collapseg"
													data-target="#demo5-1">
													<td>1{#.board_numer}</td>
													<td>고객센터</td>
													<td>고객센터에 대해서{#.board_title}</td>
												</tr>
												<tr id="demo5-1" class="collapse">
													<td colspan="3">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵{#.board_content}</p>

													</td>
												</tr>

												<tr id="tr_faq" data-toggle="collapse"
													data-target="#demo5-2">
													<td>2{#.board_number}</td>
													<td>고객센터</td>
													<td>고객센터가 하는게 무엇인가요?{#.board_title}</td>
												</tr>
												<tr id="demo5-2" class="collapse">
													<td colspan="3">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵{#.board_content}</p>

													</td>
												</tr>
												<tr id="tr_faq" data-toggle="collapse"
													data-target="#demo5-3">
													<td>3{#.board_number}</td>
													<td>고객센터</td>
													<td>고객고객고개고개고객{#board.title}</td>
												</tr>
												<tr id="demo5-3" class="collapse">
													<td colspan="3">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵 쿵ㅋ웈웈웈우{#.board_content}</p>

													</td>
												</tr>
												<tr id="tr_faq" data-toggle="collapse"
													data-target="#demo5-4">
													<td>4{#.board_number}</td>
													<td>고객센터</td>
													<td>고객123{#.board_title}</td>
												</tr>
												<tr id="demo5-4" class="collapse">
													<td colspan="4">

														<p>이러쿵 저러쿵 저러쿵 쿵쿵쿵 쿵ㅋ웈웈웈우{#.board_content}</p>

													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<!-- Tap 끝부분 -->
							</div>
						</c:forEach>
					</div>
					<!-- pagination 하단 -->
					<form>
						<fieldset class="centered">
							<ul class="pagination">
								<li><a href="#" aria-label="Previous"> <span
										aria-hidden="true">&laquo;</span>
								</a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#" aria-label="Next"> <span
										aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>

