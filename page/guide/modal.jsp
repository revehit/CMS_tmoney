<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="../../components/commonHead.jsp" %>
<section class="section">
  <div class="section-header">
    <div class="title-wrap">
      <h3 class="section-title">modal template</h3>
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
    <div class="table-wrap">
      <table class="table">
        <caption class="blind">사업 목록 테이블</caption>
        <colgroup>
          <!-- 필요한 부분에 width 지정 -->
          <col>
          <col>
          <col>
          <col>
          <col>
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
            <td>
              <button type="button" class="btn btn-dark-line open-modal" data-target="#modal-basic">modal case1</button>
            </td>
          </tr>
          <tr>
            <td>203</td>
            <td>카테고리</td>
            <td>안전한 우리집 (안전한 가정환경)</td>
            <td>진행상황</td>
            <td>
              <button type="button" class="btn btn-dark-line open-modal" data-target="#modal-basic2">modal case2</button>
            </td>
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

<!-- 모달 -->
<div id="modal-basic" class="modal" role="dialog" aria-modal="true" aria-hidden="true" aria-labelledby="modal-title-basic">
  <div class="modal-overlay" data-dismiss></div>

  <div class="modal-container" role="document" tabindex="-1">
    <header class="modal-header">
      <h3 id="modal-title-basic" class="modal-title">모달 타이틀</h3>
      <button type="button" class="modal-close" aria-label="닫기" data-dismiss></button>
    </header>

    <div class="modal-body">
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

    <footer class="modal-footer">
      <button type="button" class="btn btn-dark-line" data-dismiss>취소</button>
      <button type="button" class="btn btn-blue">확인</button>
    </footer>
  </div>
</div>

<div id="modal-basic2" class="modal" role="dialog" aria-modal="true" aria-hidden="true" aria-labelledby="modal-title-basic">
  <div class="modal-overlay" data-dismiss></div>

  <div class="modal-container" role="document" tabindex="-1">
    <header class="modal-header">
      <h3 id="modal-title-basic" class="modal-title">상세코드 정보</h3>
      <button type="button" class="modal-close" aria-label="닫기" data-dismiss></button>
    </header>

    <div class="modal-body">
      <div class="table-wrap">
        <table class="table table-vertical">
          <caption class="blind">상세코드 정보</caption>
          <colgroup>
            <!-- 필요한 부분에 width 지정 -->
            <col style="width: 160px;">
            <col>
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">코드 ID</th>
              <td>
                <input type="text" class="text-field" disabled placeholder="텍스트 필드입니다." />
              </td>
            </tr>
            <tr>
              <th scope="row">코드 ID</th>
              <td>
                <input type="text" class="text-field" disabled placeholder="텍스트 필드입니다." />
              </td>
            </tr>
            <tr>
              <th scope="row">코드 ID</th>
              <td>
                <input type="text" class="text-field" disabled placeholder="텍스트 필드입니다." />
              </td>
            </tr>
            <tr>
              <th scope="row">코드 ID</th>
              <td>
                <input type="text" class="text-field" disabled placeholder="텍스트 필드입니다." />
              </td>
            </tr>
            <tr>
              <th scope="row">코드 ID</th>
              <td>
                <input type="text" class="text-field" disabled placeholder="텍스트 필드입니다." />
              </td>
            </tr>
            <tr>
              <th scope="row">코드 ID</th>
              <td>
                <input type="text" class="text-field" disabled placeholder="텍스트 필드입니다." />
              </td>
            </tr>
            <tr>
              <th scope="row">코드 ID</th>
              <td>
                <div class="control switch">
                  <input type="checkbox" id="sw-on" role="switch" aria-checked="true" checked>
                  <label for="sw-on"></label>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <footer class="modal-footer">
      <button type="button" class="btn btn-dark-line" data-dismiss>취소</button>
      <button type="button" class="btn btn-blue">확인</button>
    </footer>
  </div>
</div>

<%@ include file="../../components/commonFooter.jsp" %>