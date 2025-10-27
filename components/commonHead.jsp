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

  <title>Tmoney CMS</title>

  <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css" />
  <%-- <link rel="stylesheet" href="https://unpkg.com/swiper@11/swiper-bundle.min.css" /> --%>

  <link rel="stylesheet" href="../../assets/scss/index.css" />

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/i18n/jquery-ui-i18n.js"></script>
  <%-- <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script src="https://unpkg.com/swiper@11/swiper-bundle.min.js"></script> --%>

  <script src="../../assets/js/theme.js"></script>
  <script src="../../assets/js/common.js"></script>
  <script src="../../assets/js/datepicker.js" defer></script>
</head>
<body>
  <script>

    // 1) 저장된 테마 or 시스템 선호도
    (function() {
      try {
        const KEY = 'theme';
        const stored = localStorage.getItem(KEY);
        const prefersDark = window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches;
        const theme = stored || (prefersDark ? 'dark' : 'light');
        document.documentElement.setAttribute('data-theme', theme);
        // 서버사이드에서 light로 박아놨다면 덮어쓰기
      } catch (e) {
        document.documentElement.setAttribute('data-theme', 'light');
      }
    })();
  </script>
  
  <div id="wrapper">
    <%@ include file="aside.jsp" %>
    <%@ include file="header.jsp" %>
    <main id="contents">
      <div class="container">