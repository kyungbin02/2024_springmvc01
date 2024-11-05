<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>고기고기 - 고기 전문 쇼핑몰</title>
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">

<style>
* {
    margin: 0 auto;
    max-width: 1294px;
}

    body {
        font-family: 'Noto Sans KR', sans-serif;
        margin: 0;
        padding: 0;
        background-color: #fff; /* 전체 배경색을 흰색으로 변경 */
        display: flex;
        flex-direction: column;
        min-height: 100vh;
        min-width: 540px;
    }

    .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 15px;
        flex-grow: 1;
    }

    /* 헤더 스타일 */
    header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 40px 20px;
        background-color: #ffffff;
        border-bottom: 1px solid #ddd;
        position: relative;
    }

    .logo {
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
        height: 80px; /* 이미지 크기에 맞게 높이를 조정 */
    }

    .header-left {
        display: flex;
        align-items: center;
        gap: 15px;
        position: relative;
    }

    .category-button {
        padding: 10px 15px;
        font-size: 16px;
        background-color: #007bff;
        color: white;
        border: none;
        cursor: pointer;
        border-radius: 5px;
        position: relative;
    }

    /* 헤더 오른쪽 */
    .header-right {
        display: flex;
        gap: 15px;
        align-items: center;
        margin-left: 730px;
    }

    .header-right a {
        font-size: 16px;
        color: #007bff;
        text-decoration: none;
        padding: 10px;
    }

    .header-right a:hover {
        color: #0056b3;
    }

    .search-toggle {
        cursor: pointer;
        font-size: 24px;
        color: #007bff;
        padding: 10px;
    }

    .search-bar {
        display: none;
        margin-top: 10px;
    }

    .search-bar input {
        width: 300px;
        padding: 8px;
        font-size: 14px;
        border: 1px solid #ddd;
        border-radius: 5px;
    }

    .search-bar button {
        padding: 8px;
        font-size: 14px;
        background-color: #28a745;
        color: white;
        border: none;
        cursor: pointer;
        border-radius: 5px;
    }

    /* 메인 콘텐츠 */
    main {
        padding: 10px;
        text-align: center;
    }

    .notice {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 20px;
    }

    .carousel {
        display: flex;
        justify-content: center;
        margin-bottom: 20px;
    }

    .carousel img {
        width: 100%;
        max-width: 1200px;
        height: 400px;
        border-radius: 10px;
        border: 2px solid #ddd;
    }

    /* 상품 목록 */
    .product-list {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 20px;
        justify-items: center;
        padding: 10px;
    }

    .product {
        display: flex;
        flex-direction: column;
        width: 220px;
        margin: 10px;
        border: 1px solid #ddd;
        padding: 15px;
        border-radius: 10px;
        background-color: #fff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: transform 0.2s;
    }

    .product:hover {
        transform: scale(1.03);
    }

    .product img {
        width: 100%;
        height: auto;
        border-radius: 10px;
    }

    .product p {
        margin-top: 15px;
        font-size: 20px;
        font-weight: bold;
    }

    .product .price {
        margin-top: 10px;
        font-size: 18px;
        color: #28a745;
    }

    /* 푸터 */
    footer {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 20px;
        background-color: #f8f9fa;
        font-size: 14px;
        color: #6c757d;
        margin-top: auto;
    }

    .footer-left {
        text-align: left;
    }

    .footer-right {
        text-align: right;
    }

    /* 반응형 웹 디자인 */
    @media (max-width: 1200px) {
        .product-list {
            grid-template-columns: repeat(3, 1fr);
        }
    }

    @media (max-width: 992px) {
        .product-list {
            grid-template-columns: repeat(3, 1fr);
        }
    }

    @media (max-width: 768px) {
        header {
            flex-direction: column;
            align-items: center;
        }

        .header-left {
            flex-direction: column;
            align-items: center;
        }

        .header-right {
            margin-top: 10px;
        }

        .product-list {
            grid-template-columns: repeat(2, 1fr);
        }

        .logo {
            font-size: 24px;
        }
    }

    @media (max-width: 576px) {
        .product-list {
            grid-template-columns: repeat(1, 1fr);
        }

        .carousel img {
            width: 100%;
        }
    }
</style>
</head>
<body>

<!-- 상단 헤더 -->
<header>
    <div class="header-left">
        <button class="category-button" onclick="toggleCategory()">카테고리</button>
    </div>

    <img src="/resources/images/img_01.jpg" alt="경빈이네 로고" class="logo">

    <div class="header-right">
        <a href="/login">로그인/회원가입</a>
        <a href="/m_page">마이페이지</a>
        <a href="/aaa">boot홈페</a>
        <a href="/agre">이용약관 페이지</a>
        
        <div class="search-toggle" onclick="toggleSearch()">🔍</div>
    </div>
</header>

<!-- 검색창 -->
<div class="search-bar" id="searchBar">
    <input type="text" placeholder="원하는 축산물을 검색하세요">
    <button>검색</button>
    <!-- 검색 버튼 아래에 검색창 추가 -->
<div class="container mt-3">
  <div class="search-bar collapse" id="searchBar">
    <input type="text" class="form-control" placeholder="검색어를 입력하세요" aria-label="검색">
  </div>
</div>
</div>

<!-- 메인 콘텐츠 -->
<main class="container">
    <div class="notice">📢 공지사항 및 이벤트</div>

    <!-- 하나로 통합된 이벤트 이미지 -->
    <div class="carousel">
        <img src="/resources/images/img_01.jpg" alt="이벤트 이미지">
    </div>

    <div class="product-list">
        <div class="product">
            <a href="product1.html">
                <img src="product1.jpg" alt="한우 갈비살">
            </a>
            <p>한우 갈비살</p>
            <div class="price">27,500원</div>
        </div>
        <div class="product">
            <a href="product2.html">
                <img src="product2.jpg" alt="돼지 목살">
            </a>
            <p>돼지 목살</p>
            <div class="price">12,000원</div>
        </div>
        <div class="product">
            <a href="product3.html">
            <img src="product3.jpg" alt="닭 가슴살">
            </a>
            <p>닭 가슴살</p>
            <div class="price">8,500원</div>
        </div>
        <div class="product">
            <a href="product4.html">
                <img src="product4.jpg" alt="양고기">
            </a>
            <p>양고기</p>
            <div class="price">35,000원</div>
        </div>
    </div>
</main>

<!-- 하단 푸터 -->
<footer>
    <div class="footer-left">
        <nav>
            <a href="/home">HOME</a> | 
            <a href="/company">COMPANY</a> | 
            <a href="/agreement">AGREEMENT</a> | 
            <a href="/privacy">PRIVACY POLICY</a>
        </nav>
        <p>
            회사명: 경빈이네 주식회사  |  대표자: 문민원  |  주소: 서울특별시 마포구<br>
            전화: 1818-9797  |  팩스: 042-526-9289  | <br>
            |  개인정보보호책임자: 노종문 (jsfood5@naver.com)<br>
            COPYRIGHT (c) 경빈이네 주식회사 ALL RIGHTS RESERVED.
        </p>
    </div>
</footer>

<script>
    function toggleSearch() {
        const searchBar = document.getElementById('searchBar');
        searchBar.style.display = searchBar.style.display === 'none' || searchBar.style.display === '' ? 'block' : 'none';
    }

    function toggleCategory() {
        const categoryDropdown = document.getElementById('categoryDropdown');
        categoryDropdown.style.display = categoryDropdown.style.display === 'none' || categoryDropdown.style.display === '' ? 'block' : 'none';
    }
    window.addEventListener('DOMContentLoaded', () => {
    	  const searchToggle = document.querySelector('.navbar-toggler');
    	  const searchBar = document.getElementById('searchBar');

    	  searchToggle.addEventListener('click', () => {
    	
    		  
    		  
    		  
    		  
    		  
    		  
    		  
    		  if (searchBar.classList.contains('show')) {
    	      searchBar.classList.remove('show');
    	    } else {
    	      searchBar.classList.add('show');
    	    }
    	  });
    	});
</script>

</body>
</html>
