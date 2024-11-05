<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>사업자 회원가입</title>
<!-- 글꼴 -->
<link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Black+And+White+Picture&family=East+Sea+Dokdo&family=Gaegu&family=Single+Day&family=Yeon+Sung&display=swap" rel="stylesheet">
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet">

<style>
    /* 글꼴 적용 */
    body {
        font-family: "Single Day", cursive !important;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    .navbar-brand {
        font-size: 24px;
        font-weight: bold;
    }

    /* 검색 버튼 스타일 */
    .search-container {
        display: flex;
        align-items: center;
        width: 300px;
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

    /* 폼 스타일 */
    .form-container {
        max-width: 800px;
        margin: 50px auto;
        flex: 1;
    }

    .highlight {
        color: #e74c3c;
        font-weight: bold;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    .form-group input {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }

    .warning {
        margin-top: 20px;
        color: #888;
        font-size: 14px;
    }

    .submit-button {
        width: 100%;
        padding: 15px;
        background-color: #e74c3c;
        color: #fff;
        border: none;
        border-radius: 5px;
        font-size: 18px;
        cursor: pointer;
        transition: background-color 0.3s;
        margin-top: 30px;
    }

    .submit-button:hover {
        background-color: #c0392b;
    }

    /* 푸터 스타일 */
    footer {
        background-color: LightCoral;
        padding: 20px 0;
        margin-top: auto;
    }

    footer .container-1 {
        text-align: center;
    }

    footer p {
        margin: 5px 0;
    }
</style>
</head>
<body>
<header>
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#!">경빈이네</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                <ul class="navbar-nav mb-2 mb-lg-0">
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
                <div class="search-container ms-3">
                    <input type="text" class="search-input" placeholder="검색어를 입력하세요">
                    <button class="search-button">
                        <img src="https://img.icons8.com/ios-filled/50/ffffff/search.png" alt="돋보기">
                    </button>
                </div>
                <form class="d-flex ms-3">
                    <button class="btn btn-outline-dark" type="submit">
                        <i class="bi-cart-fill me-1"></i> Cart
                    </button>
                </form>
            </div>
        </div>
    </nav>
</header>

<!-- Form Content -->
<div class="form-container">
    <h2 class="title">사업자 회원가입</h2>
    <p class="highlight">사업자등록증의 정보를 입력해주세요</p>
    <form action="/submit_business_signup" method="post">
        <div class="form-group">
            <label for="companyName">상호</label> 
            <input type="text" id="companyName" name="companyName" required>
        </div>
        <div class="form-group">
            <label for="representative">대표자명</label> 
            <input type="text" id="representative" name="representative" required>
        </div>
        <div class="form-group">
            <label for="businessPhone">사업장 전화번호</label> 
            <input type="tel" id="businessPhone" name="businessPhone" required>
        </div>
        <p class="warning">사업자 정보를 도용하거나 허위 기재 시, 관련 법령에 따라 처벌받을 수 있습니다.</p>
        <button type="submit" class="submit-button">가입 하기</button>
    </form>
</div>

<!-- Footer -->
<footer class="py-5">
    <div class="container-1">
        <p class="m-0 text-center text-white">| 회사명: 경빈이네 주식회사 대표자: 3조 주소: 서울특별시 마포구 |</p>
        <p class="m-0 text-center text-white">| 전화: 1818-9797 | 팩스: 042-526-9289 |</p>
        <p class="m-0 text-center text-white">| 개인정보보호책임자: 노종문 (jsfood5@naver.com) |</p>
        <p class="m-0 text-center text-white">| COPYRIGHT (c) 경빈이네 주식회사 ALL RIGHTS RESERVED. |</p>
    </div>
</footer>

<!-- Bootstrap core JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
