<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko" data-theme="light">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Tmoney CMS"/>
  <meta name="keywords" content="Tmoney CMS"/>
  <meta property="og:type" content="website" />
  <meta property="og:title" content="Tmoney CMS" />
  <meta property="og:description" content="Tmoney CMS" />

  <title>Tmoney CMS LOGIN</title>

  <link rel="stylesheet" href="./assets/scss/index.css" />
  <link rel="stylesheet" href="./assets/scss/page/page.css" />

</head>
<body>
  <div id="wrapper" class="fluid">
    <main id="contents">
    <div class="container">
      <div class="login-wrap">
        <img src="./assets/images/logo-t-money.png" alt="">
        <div class="fluid mt40">
          <p class="field-title">로그인</p>
          <input type="text" class="text-field" placeholder="아이디" />
        </div>
        <div class="fluid mt40">
          <p class="field-title">비밀번호</p>
          <input type="password" class="text-field" placeholder="비밀번호 입력" />
        </div>
        <button type="button" class="btn btn-login btn-primary size-lg mt40">로그인</button>
        <div class="btn-wrap">
          <button type="button" class="btn btn-dark-line size-lg">아이디 찾기</button>
          <button type="button" class="btn btn-dark-line size-lg">비밀번호 찾기</button>
          <button type="button" class="btn btn-dark-line size-lg">신규등록</button>
        </div>
      </div>
    </div>
    </main>
  </div>
</body>
</html>