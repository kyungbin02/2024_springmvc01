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
    body {
        font-family: 'Noto Sans KR', sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
    }

    /* 헤더 스타일 */
    header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 20px;
        background-color: #f8f9fa;
        border-bottom: 1px solid #ddd;
    }

    .header-left {
        display: flex;
        align-items: center;
        gap: 15px;
        position: relative; /* 카테고리 드롭다운을 위해 position 설정 */
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

    /* 카테고리 드롭다운 */
    .category-dropdown {
        display: none;
        position: absolute;
        top: 100%;
        left: 0;
        background-color: white;
        min-width: 160px;
        box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
        z-index: 1;
    }

    .category-dropdown a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .category-dropdown a:hover {
        background-color: #ddd;
    }

    /* 사이트 이름 스타일 */
    .site-name {
        font-size: 40px; /* 폰트 크기를 크게 설정 */
        font-family: 'Nanum Gothic', sans-serif; /* Nanum Gothic 폰트 적용 */
        font-weight: 700;
        color: #333;
    }

    /* 검색창 스타일 */
    .search-toggle {
        cursor: pointer;
        font-size: 24px;
    }

    .search-bar {
        display: none; /* 처음에는 감춰둠 */
        margin-left: 10px;
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

    /* 헤더 오른쪽: 로그인, 회원가입 등 */
    .header-right {
        display: flex;
        gap: 15px;
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
    </style><!-- 상단 헤더 -->
<header>
    <div class="header-left">
        <button class="category-button" onclick="toggleCategory()">카테고리</button>
        <div class="category-dropdown" id="categoryDropdown">
            <a href="#">소고기</a>
            <a href="#">돼지고기</a>
            <a href="#">닭 오리고기</a>
            <a href="#">양고기</a>
            <a href="#">육가공품</a>
        </div>
        <div class="site-name">고기고기</div>
        <div class="search-toggle" onclick="toggleSearch()">🔍</div> <!-- 돋보기를 누르면 검색창이 뜨게 함 -->
        <div class="search-bar" id="searchBar">
            <input type="text" placeholder="원하는 축산물을 검색하세요">
            <button>검색</button>
        </div>
    </div>

    <div class="header-right">
        <a href="/login">로그인</a>
        <a href="/join">회원가입</a>
        <a href="/m_page">마이페이지</a>
        <a href="#">주문내역</a>
        <a href="#">장바구니</a>
    </div>
</header>