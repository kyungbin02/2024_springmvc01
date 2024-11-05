<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고기고기 - 장바구니</title>
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
            max-width: 1000px;
            margin: 0 auto;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f8f9fa;
            font-weight: bold;
        }

        .product-image {
            width: 80px;
        }

        .cart-total {
            margin-top: 20px;
            text-align: right;
            font-size: 20px;
            font-weight: bold;
        }

        .btn-container {
            margin-top: 20px;
            text-align: right;
        }

        button {
            padding: 10px 15px;
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<header>
    <h1>장바구니</h1>
</header>

<main>
    <table>
        <thead>
            <tr>
                <th>상품 이미지</th>
                <th>상품명</th>
                <th>가격</th>
                <th>수량</th>
                <th>합계</th>
                <th>삭제</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><img src="product1.jpg" alt="한우 갈비살" class="product-image"></td>
                <td>한우 갈비살</td>
                <td>27,500원</td>
                <td><input type="number" value="1" min="1" max="10"></td>
                <td>27,500원</td>
                <td><button>삭제</button></td>
            </tr>
            <tr>
                <td><img src="product2.jpg" alt="돼지 목살" class="product-image"></td>
                <td>돼지 목살</td>
                <td>12,000원</td>
                <td><input type="number" value="2" min="1" max="10"></td>
                <td>24,000원</td>
                <td><button>삭제</button></td>
            </tr>
        </tbody>
    </table>

    <div class="cart-total">총 합계: 51,500원</div>

    <div class="btn-container">
        <button>결제하기</button>
    </div>
</main>

</body>
</html>
