<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="../../components/commonHead.jsp" %>
<section class="section">
  <div class="section-header">
    <div class="title-wrap">
      <h3 class="section-title">회원현황 상세목록 조회</h3>
    </div>
    <div class="box-wrap">
      <div class="box col2">
        <p class="field-title">조회기간</p>
        <div class="flex col-">
          <div class="dropdown" data-name="traf" style="width:150px;">
            <button type="button"
              class="dropdown_button"
              aria-haspopup="listbox"
              aria-expanded="false"
              aria-label="조회기간 드롭다운">
              <span class="dropdown_value" data-placeholder="전체">전체</span>
            </button>
      
            <ul class="dropdown_list" role="listbox" tabindex="-1">
              <li role="option" class="dropdown_option" data-value="bus">전체</li>
              <li role="option" class="dropdown_option" data-value="taxi">3개월</li>
              <li role="option" class="dropdown_option" data-value="car">1개월</li>
            </ul>
      
            <input type="hidden" name="traf" value="">
          </div>
          <div class="flex align-center col-">
            <div class="date-field">
              <input type="text" id="startDate" class="text-field date-text" value="2025-01-10">
            </div>
            <span>~</span>
            <div class="date-field">
              <input type="text" id="endDate" class="text-field date-text" value="2025-01-10">
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <div class="btn-wrap">
      <button type="button" class="btn btn-secondary btn-icon-left">
        다운로드
        <i class="icon icon-save"></i>
      </button>
      <button type="button" class="btn btn-primary btn-icon-left">
        검색
        <i class="icon icon-search"></i>
      </button>
    </div>
  </div>

  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">회원현황</h3>
    </div>
    <div class="chart-wrap">
      <canvas id="monthlyBar"></canvas>
    </div>
    <div class="spacer"></div>
    <div class="table-wrap">
      <table class="table">
        <caption class="blind">사업 목록 테이블</caption>
        <colgroup>
          <!-- 필요한 부분에 width 지정 -->
          <col style="width: 60px;">
          <col>
          <col>
          <col>
          <col style="width: 80px;">
        </colgroup>
        <thead>
          <tr>
            <th scope="col">No</th>
            <th scope="col">카테고리</th>
            <th scope="col">사업명</th>
            <th scope="col">진행상황</th>
            <th scope="col">Y/N</th>
          </tr>
        </thead>
        <tbody>
          <!-- 행 반복 -->
          <tr>
            <td>203</td>
            <td>카테고리</td>
            <td>안전한 우리집 (안전한 가정환경)</td>
            <td>진행상황</td>
            <td>Y</td>
          </tr>
          <tr>
            <td>203</td>
            <td>카테고리</td>
            <td>안전한 우리집 (안전한 가정환경)</td>
            <td>진행상황</td>
            <td>Y</td>
          </tr>
          <tr>
            <td>203</td>
            <td>카테고리</td>
            <td>안전한 우리집 (안전한 가정환경)</td>
            <td>진행상황</td>
            <td>Y</td>
          </tr>
          <tr>
            <td>203</td>
            <td>카테고리</td>
            <td>안전한 우리집 (안전한 가정환경)</td>
            <td>진행상황</td>
            <td>Y</td>
          </tr>
          <!-- ... -->
        </tbody>
      </table>
    </div>
  </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.3"></script>
<script>
  $(function() {
    $("#startDate, #endDate").datepicker({
      dateFormat: "yy-mm-dd", // JSP 서버와 맞춤
      changeMonth: true,
      changeYear: true
    });
  });
</script>
<script>
const ctx = document.getElementById('monthlyBar');

const labels = ['2025-08','2025-07','2025-06','2025-05']; // 좌→우
const blue   = [4.2, 2.8, 3.5, 4.6];  // 파랑 막대 값
const black  = [2.3, 4.7, 1.6, 2.9];  // 검정 막대 값

new Chart(ctx, {
  type: 'bar',
  data: {
    labels,
    datasets: [
      {
        label: 'A',
        data: blue,
        backgroundColor: '#861c7f',        // 파랑
        borderRadius: 2,
        barThickness: 50,                  // 막대 두께(원하는 느낌으로 조절)
        categoryPercentage: 0.7,           // 그룹 너비 비율
        order: 1
      },
      {
        label: 'B',
        data: black,
        backgroundColor: '#e3933a',
        borderRadius: 2,
        barThickness: 50,
        categoryPercentage: 0.7,
        order: 2
      }
    ]
  },
  options: {
    responsive: true,
    maintainAspectRatio: false,           // 부모 높이(120px)에 맞추기
    plugins: {
      legend: { display: false },         // 범례 숨김
      tooltip: { enabled: true }
    },
    scales: {
      x: {
        grid: { color: 'rgba(0,0,0,0.08)' },
        ticks: { color: '#666', maxRotation: 0 }
      },
      y: {
        min: 0, max: 5, ticks: { stepSize: 1, color: '#666' },
        grid: { color: 'rgba(0,0,0,0.08)' }
      }
    }
  }
});
</script>

<%@ include file="../../components/commonFooter.jsp" %>