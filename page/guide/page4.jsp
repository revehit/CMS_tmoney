<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="../../components/commonHead.jsp" %>
<section class="section">
  <div class="section-header">
    <div class="title-wrap">
      <h3 class="section-title">회원서비스 변경이력 조회 상세</h3>
    </div>
    <div class="box-wrap">
      <div class="box">
        <p class="field-title">회원 ID</p>
        <input type="text" class="text-field" readonly value="B2342345435">
      </div>
      <div class="box">
        <p class="field-title">성명</p>
        <input type="text" class="text-field" readonly value="홍길동">
      </div>
      <div class="box">
        <p class="field-title">서비스 유형</p>
        <input type="text" class="text-field" readonly value="청소년">
      </div>
      <div class="box">
        <p class="field-title">회원상태</p>
        <input type="text" class="text-field" readonly value="정상">
      </div>
    </div>
    <div class="box-wrap">
      <div class="box">
        <p class="field-title">변경일(최종)</p>
        <input type="text" class="text-field" readonly value="2025-09-03">
      </div>
      <div class="box">
        <p class="field-title">변경유형</p>
        <div class="dropdown" data-name="state">
          <button type="button"
            class="dropdown_button"
            aria-haspopup="listbox"
            aria-expanded="false"
            aria-label="변경유형 드롭다운">
            <span class="dropdown_value" data-placeholder="선택하세요">선택하세요</span>
          </button>
    
          <ul class="dropdown_list" role="listbox" tabindex="-1">
            <li role="option" class="dropdown_option" data-value="amount">금액</li>
            <li role="option" class="dropdown_option" data-value="number">건수</li>
          </ul>
    
          <input type="hidden" name="state" value="">
        </div>
      </div>
      <div class="box">
        <p class="field-title">변경일(최종)</p>
        <input type="text" class="text-field" readonly value="2025-09-03">
      </div>
    </div>
    
    <div class="btn-wrap">
      <button type="button" class="btn btn-primary">
        저장
      </button>
    </div>
  </div>

  <div class="section-content">
    <!-- <div class="title-wrap">
      <h3 class="section-title">한도구분(건수)</h3>
    </div> -->
    <div class="flex justify-space-between">
      <b>검색결과: 10건</b>
      <div class="flex col-">
        <button type="button" class="btn btn-primary btn-icon-left">
          엑셀 다운로드
          <i class="icon icon-save"></i>
        </button>
        <button type="button" class="btn btn-dark-line">
          목록
        </button>
      </div>
    </div>
    <div class="table-wrap mt20">
      <table class="table">
        <caption class="blind">회원서비스 변경이력 조회 상세 테이블</caption>
        <colgroup>
          <!-- 필요한 부분에 width 지정 -->
          <col width="80px">
          <col width="150px">
          <col width="200px">
          <col width="150px">
          <col width="150px">
          <col width="150px">
          <col width="150px">
        </colgroup>
        <thead>
          <tr>
            <th scope="col">순번</th>
            <th scope="col">변경일자</th>
            <th scope="col">서비스명</th>
            <th scope="col">서비스유형명</th>
            <th scope="col">서비스유형 시작일자</th>
            <th scope="col">서비스유형 종료일자</th>
            <th scope="col">변경 전 서비스 유형명</th>
          </tr>
        </thead>
        <tbody>
          <!-- 행 반복 -->
          <tr>
            <td>1</td>
            <td>2025-03-12</td>
            <td>어린이/청소년 교통비 지원사업</td>
            <td>청소년</td>
            <td>2025-03-12</td>
            <td>2025-13-31</td>
            <td>성인</td>
          </tr>
          <tr>
            <td>2</td>
            <td>2025-03-12</td>
            <td>어린이/청소년 교통비 지원사업</td>
            <td>청소년</td>
            <td>2025-03-12</td>
            <td>2025-13-31</td>
            <td>성인</td>
          </tr>
          <tr>
            <td>3</td>
            <td>2025-03-12</td>
            <td>어린이/청소년 교통비 지원사업</td>
            <td>청소년</td>
            <td>2025-03-12</td>
            <td>2025-13-31</td>
            <td>성인</td>
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
</section>

<%@ include file="../../components/commonFooter.jsp" %>