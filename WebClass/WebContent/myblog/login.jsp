<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>LogIn</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="/WebClass/css/signin.css">
</head>
<body>
<div class="container">

<%
	String id = request.getParameter("id") == null ? "" : request.getParameter("id");
%>
  <form class="form-signin" action="/WebClass/bloglogin" method="post">
    <h2 class="form-signin-heading">로그인 창입니다.</h2>
    <label for="inputEmail" class="sr-only">이메일 주소</label>
    <input type="email" name="id" id="inputEmail" value="<%=id%>" class="form-control" placeholder="Email address"  autofocus>
    <label for="inputPassword" class="sr-only">비밀번호</label>
    <input type="password" name="pwd" id="inputPassword" class="form-control" placeholder="Password" >

    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
  </form>

</div>

<%@ include file="modal.jsp" %>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<script>
	<% if("error".equals(request.getAttribute("msg"))) { %>
		var myModal = $('#myModal');
		myModal.find('.modal-title').text('로그인 오류');
		myModal.find('.modal-body').text('잘못된 아이디를 입력하였습니다.');
		myModal.modal();
		
	<% } %>
</script>

</body>
</html>
