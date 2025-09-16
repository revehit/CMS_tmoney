<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<footer id="footer">
  <div class="container">
    <div class="footer-inner">
      <div class="top-box flex">
        <div class="box-item">
          <div class="logo-box"></div>
        </div>
        <div class="box-item">
          <p class="info-item"><b>T</b>02-332-1514</p>
          <p class="info-item"><b>F</b>02-332-1516</p>
          <p class="info-item"><b>E</b>ginzaryoko@ginzaryoko.co.kr</p>
          <p class="info-item"><b>제휴문의</b>partner@ginzaryoko.kr</p>
        </div>
      </div>
      <div class="bot-box flex">
        <div class="box-item">
          <address>
            <span>서울특별시 서초구 강남대로101길 34(잠원동 8-9) 금좌빌딩</span>
            <span class="bar">사업자등록증 : 762-81-02333</span>
            <span>대표이사 : 원일호, 김인교</span>
          </address>
        </div>
      </div>
      <p class="copy">COPYRIGHT ⓒ 2025. GINZARYOKO. ALL RIGHTS RESERVED.</p>
    </div>
  </div>
</footer>

<%-- top button --%>
<button id="goTop" title="맨 위로 이동">
  <em></em>
</button>

<script>
  // 스크롤 위치에 따라 버튼 보이기
  $(window).on('scroll', function () {
    if ($(this).scrollTop() > 1) {
      $('#goTop').addClass('on');
    } else {
      $('#goTop').removeClass('on');
    }
  });

  // 버튼 클릭 시 부드럽게 맨 위로
  $('#goTop').on('click', function () {
    $('html, body').animate({ scrollTop: 0 }, 600, 'swing'); // 600ms 부드럽게
  });
</script>
<script>
  $(window).on('scroll resize', function () {
    const scrollTop = $(window).scrollTop();
    const windowHeight = $(window).height();
    const footerOffsetTop = $('#footer').offset().top;
    const btnHeight = $('#goTop').outerHeight(true);
    const buffer = 20; // 여유 공간

    // 기본 on 클래스 처리
    if (scrollTop > 1) {
      $('#goTop').addClass('on');
    } else {
      $('#goTop').removeClass('on');
    }

    // footer 겹침 방지
    const btnBottomSpace = footerOffsetTop - (scrollTop + windowHeight);
    if (btnBottomSpace < 0) {
      $('#goTop').css('bottom', (40 - btnBottomSpace) + 'px');
    } else {
      $('#goTop').css('bottom', '40px');
    }
  });
</script>
