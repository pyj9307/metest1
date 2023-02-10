<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="shortcut icon"
	href="https://www.megabox.co.kr/static/pc/images/favicon.ico">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>MEET PLAY SHARE, 메가박스</title>

<link rel="stylesheet" type="text/css" href="/resources/css/style.css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/list.css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/main_files/megabox.min.css" media="all">


<script type="text/javascript" src="/resources/js/util.js"></script>
<script type="text/javascript">

	function sendIt(){
		
		var f = document.myForm;
		
		str = f.subject.value;
		str = str.trim();
		if(!str){
			alert("\n제목을 입력하세요.");
			f.subject.focus();
			return;
		}
		f.subject.value = str;
		
		str = f.name.value;
		str = str.trim();
		if(!str){
			alert("\n이름을 입력하세요.");
			f.name.focus();
			return;
		}		
		
		/* if(!isValidKorean(str)){
			alert("\n이름을 정확히 입력하세요.");
			f.name.focus()
			return;
		}	*/	
		f.name.value = str;
		
		if(f.email.value){
			if(!isValidEmail(f.email.value)){
				alert("\n정상적인 E-Mail을 입력하세요.");
				f.email.focus();
				return;
			}
		}
		
		str = f.content.value;
		str = str.trim();
		if(!str){
			alert("\n내용을 입력하세요.");
			f.content.focus();
			return;
		}
		f.content.value = str;
		
		str = f.pwd.value;
		str = str.trim();
		if(!str){
			alert("\n패스워드를 입력하세요.");
			f.pwd.focus();
			return;
		}
		f.pwd.value = str;
		
		f.action = "<%=cp%>/movie/created2";
		f.submit();
		
	}

</script>


</head>
<body>

	<!-- header -->
	<jsp:include page="../layout/headerWhite.jsp"></jsp:include>
	<!--// header -->



<!-- container -->
	<div class="container has-lnb">
		<div class="page-util fixed">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span>
					<a href="https://www.megabox.co.kr/support" title="고객센터 페이지로 이동">고객센터</a>
					<a href="https://www.megabox.co.kr/support/notice" title="공지사항 페이지로 이동">공지사항</a>
				</div>

			</div>
		</div>

		<div class="inner-wrap">
			<div class="lnb-area addchat location-fixed">
				<nav id="lnb">
					<p class="tit"><a href="https://www.megabox.co.kr/support" title="고객센터">고객센터</a></p>
					<ul>
						<li><a href="http://localhost:8080/movie/list" title="고객센터 홈">고객센터 홈</a></li>
						<li ><a href="http://localhost:8080/movie/list" title="자주 묻는 질문">자주 묻는 질문</a></li>
						<li ><a href="http://localhost:8080/movie/list" title="공지사항">공지사항</a></li>
						<li class="on"><a href="http://localhost:8080/movie/created" title="1:1문의">1:1문의</a></li>
						<li><a href="http://localhost:8080/movie/list" title="단체관람 및 대관문의">단체관람 및 대관문의</a></li>
						<li><a href="http://localhost:8080/movie/list" title="분실물 문의">분실물 문의</a></li>
						<li><a href="http://localhost:8080/movie/list" title="이용약관">이용약관</a></li>
						<li><a href="http://localhost:8080//movielist" title="위치기반서비스이용약관">위치기반서비스이용약관</a></li>
						<li><a href="http://localhost:8080/movie/list" title="개인정보처리방침">개인정보처리방침</a></li>
						<li><a href="http://localhost:8080/movie/list" style="border-radius: 0 0 10px 10px;" title="스크린배정수에관한기준">스크린배정수에관한기준</a></li>
					</ul>

					<!-- 고객센터 메뉴일때만 출력 -->
					<div class="left-customer-info">
						<p class="tit">
							메가박스 고객센터
							<span>Dream center</span>
						</p>
						<p class="time"><i class="iconset ico-clock"></i> 10:00~19:00</p>
					</div>
				</nav>
			</div>

			<div id="contents" class="location-fixed">
				<h2 class="tit">1:1문의</h2>
				
				<div class="mypage-infomation mb30">
					<ul class="dot-list">
						<li>문의하시기 전 FAQ를 확인하시면 궁금증을 더욱 빠르게 해결하실 수 있습니다. </li>
					</ul>

					<div class="btn-group right">
						<a href="http://localhost:8080/movie/list2" class="button purple" id="myQnaBtn" title="나의 문의내역 페이지로 이동">나의 문의내역</a><!-- btn-layer-open -->
					</div>
				</div>
				
<!-- 
				<div class="tab-block mb30">
					<ul>
						<li class="on tabBtn"><button type="button" class="btn tabBtn" data-no="" title="전체공지 보기">전체</button></li>
						
							<li class="tabBtn"><button type="button" class="btn" data-no="81" title="메가박스 공지 보기">메가박스 공지</button></li>
						
							<li class="tabBtn"><button type="button" class="btn" data-no="82" title="지점 공지 보기">지점 공지</button></li>
						
					</ul>
				</div>
				 -->
				 
				 
				 
				 
					<div class="agree-box">
					<dl>
						<dt>
							<span class="bg-chk mr10">
								<input type="checkbox" id="chk">
								<label for="chk"><strong>개인정보 수집에 대한 동의</strong></label>
							<span class="font-orange">[필수]</span></span>

							
						</dt>
						<dd style="font-size:13px;">
							귀하께서 문의하신 다음의 내역은 법률에 의거 개인정보 수집·이용에 대한 본인동의가 필요한 항목입니다.<br><br>

							[개인정보의 수집 및 이용목적]<br>
							회사는 1:1 문의 내역의 확인, 요청사항 처리 또는 완료 시 원활한 의사소통 경로 확보를 위해 수집하고 있습니다.<br><br>

							[필수 수집하는 개인정보의 항목]<br>
							이름, 휴대전화, 이메일, 문의내용<br><br>

							[개인정보의 보유기간 및 이용기간]<br>
							<span class="ismsimp">문의 접수 ~ 처리 완료 후 6개월<br>
							(단, 관계법령의 규정에 의하여 보존 할 필요성이 있는 경우에는 관계 법령에 따라 보존)<br>
							자세한 내용은 '개인정보 처리방침'을 확인하시기 바랍니다.</span>
						</dd>
					</dl>
				</div>
				<br/>
			<p class="reset mt10">* 원활한 서비스 이용을 위한 최소한의 개인정보이므로 동의하지 않을 경우 서비스를 이용하실 수 없습니다</p>
	<br/>
	
	

<!-- <div id="bbs">
	<div id="bbs_title">
		게 시 판(boot jsp)
	</div>
	 -->
	<form action="" method="post" name="myForm">
	<div id="bbsCreated">
		<table class="board-form va-m">
							<colgroup>
								<col style="width:150px;">
								<col>
								<col style="width:150px;">
								<col>
							</colgroup>
							<tbody>
								<!-- <tr>
									<th scope="row">문의지점<em class="font-orange">*</em></th>
									<td colspan="3">
										<input type="radio" id="aq1" name="inqMclCd" value="QD01M01" data-cd="QD_BRCH_DIV_CD" checked="">
										<label for="aq1">지점문의</label>

										<div class="dropdown bootstrap-select small ml10 bs3">
											<select id="theater" class="small ml10" title="지역선택" tabindex="-98">
												<option class="bs-title-option" value="">
												</option>
												<option value="">지역선택</option>
												
												<option value="10">서울</option>
											
												<option value="30">경기</option>
											
												<option value="35">인천</option>
											
												<option value="45">대전/충청/세종</option>
											
												<option value="55">부산/대구/경상</option>
											
												<option value="65">광주/전라</option>
											
												<option value="70">강원</option>
											
												<option value="80">제주</option>
												
											</select>
											<button type="button" class="btn dropdown-toggle btn-default bs-placeholder" data-toggle="dropdown" role="button" data-id="theater" title="지역선택">
												<div class="filter-option">
													<div class="filter-option-inner">
														<div class="filter-option-inner-inner">지역선택
														</div>
													</div> 
												</div>
												<span class="bs-caret">
													<span class="caret">
													</span>
												</span>
											</button>
											<div class="dropdown-menu open" role="combobox">
												<div class="inner open" role="listbox" aria-expanded="false" tabindex="-1">
													<ul class="dropdown-menu inner ">
													</ul>
												</div>
											</div>
										</div>
										<div class="dropdown bootstrap-select disabled small ml10 bs3">
											<select name="brchNo" id="theater02" class="small ml10" title="극장선택" disabled="disabled" tabindex="-98">
												<option class="bs-title-option" value="">
												</option>
												<option value="">극장선택</option>
											</select>
											<button type="button" class="btn dropdown-toggle disabled bs-placeholder btn-default" data-toggle="dropdown" role="button" data-id="theater02" tabindex="-1" aria-disabled="true" title="극장선택">
												<div class="filter-option">
													<div class="filter-option-inner">
														<div class="filter-option-inner-inner">극장선택
														</div>
													</div> 
												</div>
												<span class="bs-caret">
													<span class="caret">
													</span>
												</span>
											</button>
											<div class="dropdown-menu open dropdown-menu-right" role="combobox" style="max-height: 756.175px; overflow: hidden; min-height: 0px;">
												<div class="inner open" role="listbox" aria-expanded="false" tabindex="-1" style="max-height: 754.175px; overflow-y: auto; min-height: 0px;">
													<ul class="dropdown-menu inner ">
														<li>
															<a role="option" aria-disabled="false" tabindex="0" aria-selected="false">
																<span class="text">극장선택</span>
															</a>
														</li>
													</ul>
												</div>
											</div>
										</div>

										<input type="radio" id="aq2" name="inqMclCd" class="ml20" value="QD01M02" data-cd="QD_ETC_DIV_CD">
										<label for="aq2">기타문의</label>
									</td>
								</tr>
								<tr>
									<th scope="row">
										<label for="ask-type">문의유형</label> 
										<em class="font-orange">*</em>
									</th>
									<td colspan="3">
										<div class="dropdown bootstrap-select small bs3 dropup">
											<select name="inqSclCd" id="ask-type" class="small" tabindex="-98">
												<option value="">문의유형 선택</option>
												<option value="QDBR01">일반문의</option>
												<option value="QDBR02">칭찬</option>
												<option value="QDBR03">불만</option>
												<option value="QDBR04">제안</option>
											</select>
											<button type="button" class="btn dropdown-toggle bs-placeholder btn-default" data-toggle="dropdown" role="button" data-id="ask-type" title="문의유형 선택">
												<div class="filter-option">
													<div class="filter-option-inner">
														<div class="filter-option-inner-inner">문의유형 선택</div>
													</div>
												</div>
												<span class="bs-caret">
													<span class="caret">
													</span>
												</span>
											</button>
											<div class="dropdown-menu open" role="combobox" style="overflow: hidden;">
												<div class="inner open" role="listbox" aria-expanded="false" tabindex="-1" style="overflow-y: auto;">
													<ul class="dropdown-menu inner ">
														<li class="selected active">
															<a role="option" aria-disabled="false" tabindex="0" class="selected active" aria-selected="true">
																<span class="text">문의유형 선택</span>
															</a>
														</li>
														<li>
															<a role="option" aria-disabled="false" tabindex="0" aria-selected="false">
																<span class="text">일반문의</span>
															</a>
														</li>
														<li>
															<a role="option" aria-disabled="false" tabindex="0" aria-selected="false">
																<span class="text">칭찬</span>
															</a>
														</li>
														<li>
															<a role="option" aria-disabled="false" tabindex="0" aria-selected="false">
																<span class="text">불만</span>
															</a>
														</li>
														<li>
															<a role="option" aria-disabled="false" tabindex="0" aria-selected="false">
																<span class="text">제안</span>
															</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</td>
								</tr> -->
								<tr>
									<th scope="row"><label for="name">이름</label> <em class="font-orange">*</em></th>
									<td><input type="text"  name ="name" class="input-text w150px" value="" maxlength="15"></td>
									<th scope="row"><label for="qnaRpstEmail">이메일</label> <em class="font-orange">*</em></th>
									<td><input type="text" name="email"  class="input-text" value="" maxlength="50"></td>
								</tr>
								<tr>
								
									
								</tr>
										
								
								<tr>
									<th scope="row"><label for="qnaCustInqTitle">제목</label> <em class="font-orange">*</em></th>
									<td colspan="3"><input type="text" name="subject"  class="input-text" maxlength="100"></td>
								</tr>
								<tr>
									<th scope="row"><label for="textarea">내용</label> <em class="font-orange">*</em></th>
									<td colspan="3">
										<div class="textarea">
											<textarea  name="content" rows="5" cols="30" title="내용입력" placeholder="※ 불편사항이나 문의사항을 남겨주시면 최대한 신속하게 답변 드리겠습니다. 
 ※ 문의 내용에 개인정보(이름, 연락처, 카드번호 등)가 포함되지 않도록 유의하시기 바랍니다." class="input-textarea"></textarea>
											<div class="util">
												<p class="count">
													<span id="textareaCnt">0</span> / 2000
												</p>
											</div>
										</div>
									</td>
								</tr>
								
								<tr>
	
									<th scope="row"><label for="name">패스워드</label> <em class="font-orange">*</em></th>
									<td><input type="password"  name ="pwd" class="input-text w150px" value="" maxlength="15"></td>
								</tr>
								
								
								
								<!-- 2019-02-14 사진첨부 마크업 수정 -->
								<!-- <tr>
									<th scope="row">사진첨부</th>
									<td colspan="3">
										<div class="upload-image-box">

											<div class="info-txt">
												<p>* JPEG, PNG 형식의 5M 이하의 파일만 첨부 가능합니다. (최대 5개)</p>

												to 개발 : 이미지 추가가 5개가 되면 버튼 숨김
												<button type="button" id="uploadBtn" class="btn-image-add"><span>파일선택</span></button>
												// to 개발 : 이미지 추가가 5개가 되면 버튼 숨김
												<p>* 개인정보가 포함된 이미지 등록은 자제하여 주시기 바랍니다.</p>
											</div>

											<div id="imgList"></div>

										</div>
									</td>
								</tr> -->
								<!--// 2019-02-14 사진첨부 마크업 수정 -->
								
								
								
							</tbody>
						</table>
	
	</div>
	
	
	<!-- 	<div class="bbsCreated_noLine">
			<dl>
				<dt>패스워드</dt>
				<dd>
				<input type="password" name="pwd" size="35" 
				maxlength="7" class="boxTF"/>
				&nbsp;(게시물 수정 및 삭제시 필요!!)
				</dd>
			</dl>		
		</div>	 -->
	
	<br/>	<br/>	
	<div id="bbsCreated_footer" align="center">
		<input type="button" value=" 등록하기 " class="button purple large" onclick="sendIt();"/>
		<input type="reset" value=" 다시입력 " class="button purple large" 
		onclick="document.myForm.subject.focus();"/>
		<input type="button" value=" 작성취소 " class="button purple large" 
		onclick="javascript:location.href='<%=cp%>/movie/list';"/>
	</div>
	
	</form>




</div>


<div class="quick-area" style="display: none;">
	<a href="https://www.megabox.co.kr/support/inquiry" class="btn-go-top" title="top" style="position: fixed;">top</a>
</div>





</body>
</html>




























