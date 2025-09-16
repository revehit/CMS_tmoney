<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="../../components/commonHead.jsp" %>
<section class="section">
  <div class="section-header">
    <div class="title-wrap">
      <h3 class="section-title">교통비 사용 내역 조회</h3>
    </div>
    <div class="box-wrap">
      <div class="box">
        <p class="field-title">거래기간</p>
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
      <div class="box">
        <p class="field-title">회원아이디</p>
        <input type="text" class="text-field" value="아이디입니다.">
      </div>
      <div class="box">
        <p class="field-title">회원명</p>
        <input type="text" class="text-field" value="아이디입니다.">
      </div>
    </div>
    <div class="box-wrap">
      <div class="box">
        <p class="field-title">서비스명</p>
        <input type="text" class="text-field" value="아이디입니다.">
      </div>
      <div class="box">
        <p class="field-title">교통수단</p>
        <div class="dropdown" data-name="department">
          <button type="button"
            class="dropdown_button"
            aria-haspopup="listbox"
            aria-expanded="false"
            aria-label="교통수단 드롭다운">
            <span class="dropdown_value" data-placeholder="선택하세요">선택하세요</span>
          </button>
    
          <ul class="dropdown_list" role="listbox" tabindex="-1">
            <li role="option" class="dropdown_option" data-value="bus">버스</li>
            <li role="option" class="dropdown_option" data-value="taxi">택시</li>
            <li role="option" class="dropdown_option" data-value="car">차</li>
          </ul>
    
          <input type="hidden" name="department" value="">
        </div>
      </div>
      <div class="box">
        <p class="field-title">승객 수</p>
        <div class="dropdown" data-name="people">
          <button type="button"
            class="dropdown_button"
            aria-haspopup="listbox"
            aria-expanded="false"
            aria-label="승객 수 드롭다운">
            <span class="dropdown_value" data-placeholder="선택하세요">선택하세요</span>
          </button>
    
          <ul class="dropdown_list" role="listbox" tabindex="-1">
            <li role="option" class="dropdown_option" data-value="bus">1명</li>
            <li role="option" class="dropdown_option" data-value="taxi">2명</li>
            <li role="option" class="dropdown_option" data-value="car">3명</li>
          </ul>
    
          <input type="hidden" name="people" value="">
        </div>
      </div>
      <div class="box">
        <p class="field-title">그룹명</p>
        <input type="text" class="text-field" value="그룹명입니다.">
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
    <div class="flex justify-space-between">
      <b>검색결과: 10건</b>
      <button type="button" class="btn btn-primary btn-icon-left">
        엑셀 다운로드
        <i class="icon icon-save"></i>
      </button>
    </div>
    <div class="table-wrap mt20">
      <table class="table">
        <caption class="blind">사업 목록 테이블</caption>
        <colgroup>
          <!-- 필요한 부분에 width 지정 -->
          <col style="width: 60px;">
          <col>
          <col>
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
            <th scope="col">사업시작일</th>
            <th scope="col">사업종료일</th>
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
            <td>2025-01-10</td>
            <td>2025-12-31</td>
            <td>진행상황</td>
            <td>Y</td>
          </tr>
          <tr>
            <td>203</td>
            <td>카테고리</td>
            <td>안전한 우리집 (안전한 가정환경)</td>
            <td>2025-01-10</td>
            <td>2025-12-31</td>
            <td>진행상황</td>
            <td>Y</td>
          </tr>
          <tr>
            <td>203</td>
            <td>카테고리</td>
            <td>안전한 우리집 (안전한 가정환경)</td>
            <td>2025-01-10</td>
            <td>2025-12-31</td>
            <td>진행상황</td>
            <td>Y</td>
          </tr>
          <tr>
            <td>203</td>
            <td>카테고리</td>
            <td>안전한 우리집 (안전한 가정환경)</td>
            <td>2025-01-10</td>
            <td>2025-12-31</td>
            <td>진행상황</td>
            <td>Y</td>
          </tr>
          <tr>
            <td>203</td>
            <td>카테고리</td>
            <td>안전한 우리집 (안전한 가정환경)</td>
            <td>2025-01-10</td>
            <td>2025-12-31</td>
            <td>진행상황</td>
            <td>Y</td>
          </tr>
          <tr>
            <td>203</td>
            <td>카테고리</td>
            <td>안전한 우리집 (안전한 가정환경)</td>
            <td>2025-01-10</td>
            <td>2025-12-31</td>
            <td>진행상황</td>
            <td>Y</td>
          </tr>
          <tr>
            <td>203</td>
            <td>카테고리</td>
            <td>안전한 우리집 (안전한 가정환경)</td>
            <td>2025-01-10</td>
            <td>2025-12-31</td>
            <td>진행상황</td>
            <td>Y</td>
          </tr>
          <tr>
            <td>203</td>
            <td>카테고리</td>
            <td>안전한 우리집 (안전한 가정환경)</td>
            <td>2025-01-10</td>
            <td>2025-12-31</td>
            <td>진행상황</td>
            <td>Y</td>
          </tr>
          <tr>
            <td>203</td>
            <td>카테고리</td>
            <td>안전한 우리집 (안전한 가정환경)</td>
            <td>2025-01-10</td>
            <td>2025-12-31</td>
            <td>진행상황</td>
            <td>Y</td>
          </tr>
          <tr>
            <td>203</td>
            <td>카테고리</td>
            <td>안전한 우리집 (안전한 가정환경)</td>
            <td>2025-01-10</td>
            <td>2025-12-31</td>
            <td>진행상황</td>
            <td>Y</td>
          </tr>
          <!-- ... -->
        </tbody>
      </table>
    </div>
    <div class="mt20">
      <div class="pagination" role="navigation" aria-label="목록 페이지 이동">
        <button type="button" class="pager-btn prev" aria-label="이전 페이지">Prev</button>
  
        <div class="pager-list">
          <button type="button" class="pager-item is-active" aria-current="page">1</button>
          <button type="button" class="pager-item">2</button>
          <button type="button" class="pager-item">3</button>
          <button type="button" class="pager-item">4</button>
          <button type="button" class="pager-item">5</button>
        </div>
  
        <button type="button" class="pager-btn next" aria-label="다음 페이지">Next</button>
      </div>
    </div>

  </div>
  <div class="section-content">
    <div class="flex justify-space-between">
      <b>검색결과: 0건</b>
      <button type="button" class="btn btn-primary btn-icon-left">
        엑셀 다운로드
        <i class="icon icon-save"></i>
      </button>
    </div>
    <div class="table-wrap mt20">
      <table class="table">
        <caption class="blind">사업 목록 테이블</caption>
        <colgroup>
          <!-- 필요한 부분에 width 지정 -->
          <col style="width: 60px;">
          <col>
          <col>
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
            <th scope="col">사업시작일</th>
            <th scope="col">사업종료일</th>
            <th scope="col">진행상황</th>
            <th scope="col">Y/N</th>
          </tr>
        </thead>
        <tbody>
          <!-- 행 반복 -->
          <tr class="no-data">
            <td colspan="7">검색 조건에 해당하는 데이터가 없습니다.</td>
          </tr>
          <!-- ... -->
        </tbody>
      </table>
    </div>
  </div>
</section>

<script>
  $(function() {
    $("#startDate, #endDate").datepicker({
      dateFormat: "yy-mm-dd", // JSP 서버와 맞춤
      changeMonth: true,
      changeYear: true
    });
  });
</script>
<%@ include file="../../components/commonFooter.jsp" %>