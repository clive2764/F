<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>steppe 회원가입</title>
    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="resources/css/animate.css">
	<link href="resources/css/animate.min.css" rel="stylesheet"> 
	<link href="resources/css/style.css" rel="stylesheet" />
	<script src="http://code.jquery.com/jquery-3.2.1.js"></script>	
    <!-- =======================================================
        Theme Name: Day
        Theme URL: https://bootstrapmade.com/day-multipurpose-html-template-for-free/
        Author: BootstrapMade
        Author URL: https://bootstrapmade.com
    ======================================================= -->
    <style>
        .navbar-header{
            /*background-color: dimgrey;*/
        }  
        
        #join{
        	/* width: 300px; */
        	/* background-color: lightgrey; */
        	text-align: center;
        }
        table{
        	width: 300px;
        	/* text-align: center; */
        	margin:0 auto;
        	color: black;
        }
        td{
        	padding: 3px;
        }
        input{
        	color: black;
        	width: 250px; 
        }
        .btn{
        	color: white;
        	margin-top: 0px;
        }
        .btn:hover{
        	background-color:skyblue;
        	color: white;
        	margin-top: 0px;
        }
        input[type="radio"]{
        	width: 50px;
        }
        #image_preview img{
        	width: 250px;
        	height: 150px;
        }
    </style>
  </head>
  <body>
    <!--상단 메뉴바-->
	<header id="header">
        <nav class="navbar navbar-default navbar-static-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                   <div class="navbar-brand">
						<a href="main"><h1>steppe</h1></a>
					</div>
                </div>				
                <div class="navbar-collapse collapse">							
					<div class="menu">
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation"><a href="goIntro">steppe?</a></li>
							<li role="presentation"><a href="goProject">프로젝트</a></li>
							<li role="presentation"><a href="goFreelancer">프리랜서</a></li>
							<li role="presentation"><a href="goManual">이용방법</a></li>
							<li role="presentation"><a href="goNotice">공지사항</a></li>
                            <li role="presentation"><a href="goPms">프로젝트 관리</a></li>
                            <li role="presentation">
                            	<c:set var="m_id" value="${member.m_id}" />
                            	<c:if test="${!empty m_id}">
									<a href="goMyProfile">프로필</a>
								</c:if>
							</li>
                            <li role="presentation">
                            	<c:set var="m_id" value="${member.m_id}" />
                            	<c:if test="${empty m_id}">
	            					<a href="goLogin">로그인</a>
								</c:if>
								
								<c:if test="${!empty m_id}">
									<a href="logout">${m_id}님 로그아웃</a>
								</c:if>
							</li>
                            <li role="presentation">
                            <c:if test="${empty m_id}">
                            	<a href="goJoin">회원가입</a>
                            </c:if>
                            </li>
						</ul>
					</div>
				</div>		
            </div>
        </nav>	
    </header>
    <div class="about">
		<div class="container">
           	<div id="join">
           		<h3 style="color:black;">회원 가입</h3>
				<form name="joinForm" method="post">
					<table>
						<tr>
							<td><input type="radio" name="m_kind" value="클라이언트"/>클라이언트
							<input type="radio" name="m_kind" value="프리랜서"/>프리랜서</td>
						</tr>
						<tr>
							<td>
								<input type="text" id="userId" name="userId" placeholder="아이디" />
								<span id="notiId"></span>
							</td>
						</tr>
						<tr>
							<td>
								<input type="password" id="userPw" name="userPw" placeholder="비밀번호"  />
							</td>
						</tr>
						<tr>
							<td>
								<input type="password" id="confirmPw" name="confirmPw" placeholder="비밀번호 확인" />
								<span id="notiPw"></span>
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" id="userName" name="userName" placeholder="이름"/>
								<span id="notiName"></span>
							</td>
						</tr>
						<tr>
							<td>
								<input type="file" id="image" name="userImage"/>
							</td>
						</tr>
						<tr>
							<td>
								<div id="image_preview">
								<img src="resources/img/user.png" />
						        </div>
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" id="userEmail" name="userEmail" placeholder="�̸���" />
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" id="userEmail" name="userEmail" placeholder="이메일" />
								<span id="notiEmail"></span>
							</td>
						</tr>
						<tr>
							<td>
								<input type="button" class="btn" onClick="sendCode()" value="인증번호 발송" />
								<span id="notiCode"></span>
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" id="userCode" name="userCode" placeholder="인증번호" />
							</td>
						</tr>
						<tr>
							<td>
								<input type="button" class="btn" onClick="join()" value="회원가입" />
							</td>
						</tr>
						<tr>
							<td>
								<input type="button" class="btn" onClick="toIndex()" value="돌아가기" />
							</td>
						</tr>
						
					</table>
				</form>
			</div>   
        </div>
    </div>
	<hr>
    
    <div class="row"></div>
    <!--푸터 영역 시작-->
	<div class="sub-footer">
		<div class="container">
			<div class="social-icon">
				<div class="col-md-4">
					
	     		</div>
			</div>
			<div class="col-md-4 col-md-offset-4">
				<div class="copyright">
					&copy; Day Theme. All Rights Reserved.
		              <div class="credits">
		                  <!-- 
		                      All the links in the footer should remain intact. 
		                      You can delete the links only if you purchased the pro version.
		                      Licensing information: https://bootstrapmade.com/license/
		                      Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Day
		                  -->
		                  <a href="https://bootstrapmade.com/">Free Bootstrap Themes</a> by 
		                  <a href="https://bootstrapmade.com/">BootstrapMade</a>
		                  <br/>
		                  <a href="#">공지사항</a>&nbsp;&nbsp;&nbsp;
		                  <a href="#">faq</a>&nbsp;&nbsp;&nbsp;
		                  <a href="#">이용약관</a>
		              </div>
				</div>
			</div>			
		</div>
	</div>	
				
	
	<!--푸터 영역 끝-->
      
      
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>	
	<script src="resources/js/wow.min.js"></script>
	<script>wow = new WOW({}).init();</script>	
    
</body>
	<!-- <script>
		$(function() {
			var msg = '${joinMsg}';
			if(msg == "실패")
				alert("회원가입에 실패했습니다. 다시 시도해주세요.");
		});

	
	<script language="javascript">
		/* ��й�ȣ �ߺ� �˻� */
		function passwordCheckk(){
			var password = document.getElementById("userPassword").value;
			var passwordCheck = document.getElementById("passwordCheck").value;
	
			if (passwordCheck == "") {
				document.getElementById("passwordCheckText").innerHTML = ""
			} else if (password != passwordCheck) {
				document.getElementById("passwordCheckText").innerHTML = "<span><font color=red size=2pt>��� ��ȣ�� Ʋ���ϴ�.</font></span>"
			} else {
				document.getElementById("passwordCheckText").innerHTML = "<span><font color=red size=2pt>��� ��ȣ�� ��ġ �մϴ�.</font></span>"
			}
		}
		
		/* �̸��� ���� */
		function sendCode(){
			var flag = 1;
			var email = $('#userEmail').val();
			
			if(email!=''){
				$.ajax({
					type: 'POST',
					url: './sendCode',
					data: {flag:flag, userEmail:email},
					
					success:function(data){
						var msg = data.split(",");
						console.log(data);
						$('#notiEmail').html(msg[0]);
						$('#notiCode').html(msg[1]);
						console.log('flag');
					},
					
					error:function(error){
						console.log(error);
					}
				}); 	
			}
			else
			{
				$('#notiEmail').html("이메일을 입력해주세요");
			}
		}
		
		/* ȸ�� ���� */
		/* function join()
		{	
				var id = $('#userId').val();
				var pw = $('#userPw').val();				
				var conPw = $('#confirmPw').val();			
				var name = $('#userName').val();				
				var phone = $('#userPhone').val();
				var email = $('#userEmail').val();			
				var code = $('#userCode').val();	
				
				$.ajax({
					type: 'POST',
					url: './checkJoinForm',
					data: {userId:id, userPw:pw, confirmPw:conPw, userName:name, 
						userPhone:phone, userEmail:email, userCode:code},
						
					success:function(data)
					{
						var msg = data.split(",");
						
						console.log(msg);
	
						$('#notiId').html(msg[0]);
						$('#notiPw').html(msg[1]);
						$('#notiName').html(msg[2]);
						$('#notiPhone').html(msg[3])
						$('#notiEmail').html(msg[4]);
						$('#notiCode').html(msg[5]);
						
						if(msg[9] == '0')
						{
							join.action = "./insertMember";
							join.submit();
						}
					},
					
					error:function(error)
					{
						console.log(error);
					}
				}
		}  */
		/* ���ư��� */
		/* function toHome()
		{
			join.action = "./home";
			join.submit();
		} */
		
		
	</script>
	
	
<!-- <script>
		$(function() {
			var msg = '${joinMsg}';
			if(msg == "����")
				alert("ȸ�����Կ� �����߽��ϴ�. �ٽ� �õ����ּ���.");
		});
	
		
		
		
		
		
		
	</script> -->
	<script>
	$('#image').on('change', function() {
        
        ext = $(this).val().split('.').pop().toLowerCase(); //확장자
        
        //배열에 추출한 확장자가 존재하는지 체크
        if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
            resetFormElement($(this)); //폼 초기화
            window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
        } else {
            file = $('#image').prop("files")[0];
            blobURL = window.URL.createObjectURL(file);
            $('#image_preview img').attr('src', blobURL);
            $('#image_preview').slideDown(); //업로드한 이미지 미리보기 
            $(this).slideUp(); //파일 양식 감춤
        }
    });

    /**
    onclick event handler for the delete button.
    It removes the image, clears and unhides the file input field.
    */
    $('#image_preview a').bind('click', function() {
        resetFormElement($('#image')); //전달한 양식 초기화
        $('#image').slideDown(); //파일 양식 보여줌
        $(this).parent().slideUp(); //미리 보기 영역 감춤
        return false; //기본 이벤트 막음
    });
    
    </script>
</html>