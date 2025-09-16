<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="../../components/commonHead.jsp" %>

<link rel="stylesheet" href="../../assets/scss/page/page.css" />

<section class="section dashboard-wrap">
  <div class="box-wrap col3">
    <div class="box">
      <div class="title-box">
        <p class="field-title">회원현황</p>
      </div>
      <ul>
        <li class="primary">
          <div class="img-box">
            <img src="../../assets/images/img-rabbit.png" alt="">
          </div>
          <span>총 회원</span>
          <span>50,260명</span>
        </li>
        <li class="secondary">
          <div class="img-box">
            <img src="../../assets/images/img-rabbit.png" alt="">
          </div>
          <span>금일 방문자</span>
          <span>59,059명</span>
        </li>
        <li class="point">
          <div class="img-box">
            <img src="../../assets/images/img-rabbit.png" alt="">
          </div>
          <span>금일 지원금 신청</span>
          <span>29,980명</span>
        </li>
        <li class="white">
          <div class="img-box">
            <img src="../../assets/images/img-rabbit.png" alt="">
          </div>
          <span>금일 지원금액</span>
          <span>714,469원</span>
        </li>
      </ul>
    </div>
    <div class="box">
      <div class="title-box">
        <p class="field-title">방문자 추이</p>
        <!-- <a href="#" class="more">+ 더보기</a> -->
      </div>
      <div class="chart-box">
        <canvas id="memberChart" data-radius="10" height="300"></canvas>
      </div>
    </div>
    <div class="box">
      <div class="title-box">
        <p class="field-title">지원금 신청/지급</p>
        <!-- <a href="#" class="more">+ 더보기</a> -->
      </div>
      <div class="chart-box">
        <canvas id="memberChart2" data-radius="10" height="300"></canvas>
      </div>
    </div>
  </div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">관리자 공지 목록 조회</h3>
    </div>
    <div class="box-wrap col2">
      <div class="box">
        <div class="flex align-center justify-space-between">
          <p class="field-title">공지사항</p>
          <a href="#">+더보기</a>
        </div>
        <div class="list-box mt20">
          <div class="list-head">
            <div class="num">번호</div>
            <div class="title">제목</div>
            <div class="date">등록일</div>
          </div>
          <div class="list-body">
            <a href="" class="list-tr">
              <div class="num">5</div>
              <div class="title">교통복지 카드에 대한 지차체별 할인혜택 가이드</div>
              <div class="date">2025-07-10</div>
            </a>
            <a href="" class="list-tr">
              <div class="num">4</div>
              <div class="title">교통복지 카드에 대한 지차체별 할인혜택 가이드</div>
              <div class="date">2025-07-10</div>
            </a>
            <a href="" class="list-tr">
              <div class="num">3</div>
              <div class="title">교통복지 카드에 대한 지차체별 할인혜택 가이드</div>
              <div class="date">2025-07-10</div>
            </a>
            <a href="" class="list-tr">
              <div class="num">2</div>
              <div class="title">교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드</div>
              <div class="date">2025-07-10</div>
            </a>
            <a href="" class="list-tr">
              <div class="num">1</div>
              <div class="title">교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드</div>
              <div class="date">2025-07-10</div>
            </a>
          </div>
        </div>
      </div>
      <div class="box">
        <div class="flex align-center justify-space-between">
          <p class="field-title">자주하는 질문</p>
          <a href="#">+더보기</a>
        </div>
        <div class="list-box mt20">
          <div class="list-head">
            <div class="num">번호</div>
            <div class="title">제목</div>
            <div class="date">등록일</div>
          </div>
          <div class="list-body">
            <a href="" class="list-tr">
              <div class="num">5</div>
              <div class="title">지원 대상은 누구인가요?</div>
              <div class="date">2025-07-10</div>
            </a>
            <a href="" class="list-tr">
              <div class="num">4</div>
              <div class="title">서울 종로구에 거주하는 외국인도 지원을 받을 수 있나요?</div>
              <div class="date">2025-07-10</div>
            </a>
            <a href="" class="list-tr">
              <div class="num">3</div>
              <div class="title">교통복지 카드에 대한 지차체별 할인혜택 가이드</div>
              <div class="date">2025-07-10</div>
            </a>
            <a href="" class="list-tr">
              <div class="num">2</div>
              <div class="title">교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드</div>
              <div class="date">2025-07-10</div>
            </a>
            <a href="" class="list-tr">
              <div class="num">1</div>
              <div class="title">교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드</div>
              <div class="date">2025-07-10</div>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- CDN -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.3"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.2.0"></script>

<!-- 방문자 추이 -->
<script>
  const canvas = document.getElementById('memberChart');
  const radius = canvas.dataset.radius ? parseInt(canvas.dataset.radius) : 0; // data-radius 읽기

  const ctx = canvas.getContext('2d');
  const memberChart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ['2025-08', '2025-07', '2025-06', '2025-05'],
      datasets: [
        {
          label: '남자',
          data: [4, 2, 3, 4],
          backgroundColor: '#861c7f',
          borderRadius: radius // <canvas> data-radius 값 적용
        },
      ]
    },
    options: {
      responsive: true,
      maintainAspectRatio: false,
      plugins: {
        legend: {
          display: true,
          position: 'bottom',
          labels: {
            // ✅ 네모 모양 (기본값, usePointStyle 제거)
            boxWidth: 20,
            boxHeight: 10,
            color: '#333',
            font: {
              size: 14,
              weight: 'bold'
            }
          }
        }
      },
      scales: {
        y: {
          beginAtZero: true,
          //최대치
          suggestedMax: 5,
          //간격
          ticks: {
            stepSize: 1
          },
          
        }
      }
    }
  });
</script>

<!-- 지원금 신청/지급 -->
<script>
  const canvas2 = document.getElementById('memberChart2');
  const radius2 = canvas2.dataset.radius ? parseInt(canvas2.dataset.radius) : 0; // data-radius 읽기

  const ctx2 = canvas2.getContext('2d');
  const memberChart2 = new Chart(ctx2, {
    type: 'bar',
    data: {
      labels: ['2025-08', '2025-07', '2025-06', '2025-05'],
      datasets: [
        {
          label: '남자',
          data: [250, 220, 240, 400],
          backgroundColor: '#861c7f',
          borderRadius: radius // <canvas> data-radius 값 적용
        },
        {
          label: '여자',
          data: [140, 190, 100, 380],
          backgroundColor: '#e3933a',
          borderRadius: radius
        }
      ]
    },
    options: {
      responsive: true,
      maintainAspectRatio: false,
      plugins: {
        legend: {
          display: true,
          position: 'bottom',
          labels: {
            // ✅ 네모 모양 (기본값, usePointStyle 제거)
            boxWidth: 20,
            boxHeight: 10,
            color: '#333',
            font: {
              size: 14,
              weight: 'bold'
            }
          }
        }
      },
      scales: {
        y: {
          beginAtZero: true,
          //최대치
          suggestedMax: 500,
          //간격
          ticks: {
            stepSize: 100
          },
          
        }
      }
    }
  });
</script>

<%@ include file="../../components/commonFooter.jsp" %>