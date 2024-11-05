<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 찾기</title>
</head>
<body>
    <h1>비밀번호 찾기</h1>
    <form action="/find_password" method="post">
        <label for="email">가입한 이메일 주소를 입력하세요:</label>
        <input type="email" name="email" id="email" required>
        <button type="submit">비밀번호 찾기</button>
    </form>
</body>
</html>
