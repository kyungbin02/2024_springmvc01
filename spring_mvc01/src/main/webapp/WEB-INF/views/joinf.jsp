<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<!-- 글꼴 -->
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Black+And+White+Picture&family=East+Sea+Dokdo&family=Gaegu&family=Single+Day&family=Yeon+Sung&display=swap" rel="stylesheet">
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet">

<style>
    /* 기본 스타일 설정 */
    body {
        font-family: "Single Day", cursive !important;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    .content {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .wrapper {
        background-color: white;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        width: 350px;
        padding: 20px;
        margin: auto;
    }

    .wrap {
        display: flex;
        flex-direction: column;
    }

    .subjecet {
        font-size: 24px;
        font-weight: bold;
        color: black; /* 글자 색상을 검정색으로 변경 */
        text-align: center;
        margin-bottom: 20px;
        border-bottom: 2px solid LightCoral;
        padding-bottom: 10px;
    }

    .input_wrap {
        margin-bottom: 15px;
    }

    .input_name {
        font-size: 14px;
        color: #555;
        margin-bottom: 5px;
    }

    input {
        width: calc(103% - 10px);
        padding: 10px;
        margin: 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    .find_button_wrap {
        text-align: center;
        margin-top: 20px;
    }

    .find_button {
        background-color: #e74c3c;
        color: white;
        border: none;
        padding: 12px 0;
        width: 100%;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
    }

    /* 푸터 스타일 */
    footer {
        background-color: LightCoral;
        padding: 20px 0;
        margin-top: auto;
    }

    footer .container {
        text-align: center;
    }

    footer p {
        margin: 5px 0;
    }
    
  

    .search-container {
        display: flex;
        align-items: center;
        width: 300px;
        margin: 20px auto;
    }

    .search-input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px 0 0 5px;
        outline: none;
    }

    .search-button {
        padding: 10px;
        background-color: LightCoral;
        border: none;
        cursor: pointer;
        border-radius: 0 5px 5px 0;
    }

    .search-button img {
        width: 20px;
        height: 20px;
    }
</style>
</head>
<body>
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container px-4 px-lg-5">
            <a class="navbar-brand" href="#!">경빈이네</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    <li class="nav-item"><a class="nav-link" aria-current="page" href="#!">로그인 / 회원가입</a></li>
                    <li class="nav-item"><a class="nav-link" href="#!">마이페이지</a></li>
                    <li class="nav-item"><a class="nav-link" href="#!">고객센터</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">카테고리</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#!">돼지고기</a></li>
                            <li><a class="dropdown-item" href="#!">닭고기</a></li>
                            <li><a class="dropdown-item" href="#!">소고기</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="search-container">
                    <input type="text" class="search-input" placeholder="검색어를 입력하세요">
                    <button class="search-button">
                        <img src="https://img.icons8.com/ios-filled/50/ffffff/search.png" alt="돋보기">
                    </button>
                </div>
                <form class="d-flex">
                    <button class="btn btn-outline-dark" type="submit">
                        <i class="bi-cart-fill me-1"></i> Cart
                    </button>
                </form>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="content">
        <div class="wrapper">
            <form action="">
                <div class="wrap">
                    <div class="subjecet">
                        <span>비밀번호 찾기</span>
                    </div>
                    <div class="input_wrap">
                        <div class="input_name">아이디</div>
                        <input type="text" placeholder="아이디를 입력하세요">
                    </div>
                    <div class="input_wrap">
                        <div class="input_name">이메일</div>
                        <input type="email" placeholder="이메일을 입력하세요">
                    </div>
                    <div class="find_button_wrap">
                        <input type="button" class="find_button" value="비밀번호 찾기">
                    </div>
                </div>
            </form>
        </div>
    </div>

    <!-- Footer -->
    <footer class="py-5">
        <div class="container">
            <p class="m-0 text-center text-white">| 회사명: 경빈이네 주식회사 대표자: 3조 주소: 서울특별시 마포구 |</p>
            <p class="m-0 text-center text-white">| 전화: 1818-9797 | 팩스: 042-526-9289 |</p>
            <p class="m-0 text-center text-white">| 개인정보보호책임자: 노종문 (jsfood5@naver.com) |</p>
            <p class="m-0 text-center text-white">| COPYRIGHT (c) 경빈이네 주식회사 ALL RIGHTS RESERVED. |</p>
        </div>
    </footer>

    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
