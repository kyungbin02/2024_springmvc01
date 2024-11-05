<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고기고기 - 마이페이지</title>
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            padding: 20px;
            background-color: #f8f9fa;
            border-bottom: 1px solid #ddd;
            text-align: center;
        }

        main {
            padding: 20px;
            max-width: 800px;
            margin: 0 auto;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .user-info, .order-history, .address-info {
            margin-bottom: 30px;
        }

        .info-title {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .info-content {
            background-color: #f4f4f4;
            padding: 15px;
            border-radius: 5px;
        }

        button {
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<header>
    <h1>마이페이지</h1>
</header>

<main>
    <section class="user-info">
        <div class="info-title">사용자 정보</div>
        <div class="info-content">
            <p>이름: 홍길동</p>
            <p>이메일: honggildong@example.com</p>
            <button>정보 수정</button>
        </div>
    </section>

    <section class="order-history">
        <div class="info-title">주문 내역</div>
        <div class="info-content">
            <p>주문 번호: 12345</p>
            <p>주문 날짜: 2024-10-15</p>
            <p>상품: 한우 갈비살</p>
            <p>가격: 27,500원</p>
            <button>주문 내역 더 보기</button>
        </div>
    </section>

    <section class="address-info">
        <div class="info-title">배송지 정보</div>
        <div class="info-content">
            <p>주소: 서울특별시 강남구 테헤란로 123</p>
            <button>배송지 수정</button>
        </div>
    </section>
</main>

</body>
</html>
