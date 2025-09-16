<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="../../components/commonHead.jsp" %>
<section class="section">
  <div class="section-header">
    <div class="title-wrap">
      <h3 class="section-title">공통코드 목록</h3>
    </div>
    <div class="flex justify-end">
      <button type="button" class="btn btn-primary open-modal" data-target="#modal-basic2">신규등록</button>
    </div>
    <div class="table-wrap mt20">
      <table class="table">
        <caption class="blind">공통코드 목록 테이블</caption>
        <colgroup>
          <!-- 필요한 부분에 width 지정 -->
          <col width="80px">
          <col>
          <col>
          <col width="150px">
        </colgroup>
        <thead>
          <tr>
            <th scope="col">순번</th>
            <th scope="col">코드 ID</th>
            <th scope="col">코드명</th>
            <th scope="col">설정</th>
          </tr>
        </thead>
        <tbody>
          <!-- 행 반복 -->
          <tr>
            <td>1</td>
            <td>APLY_HSTRY_RSN_CD</td>
            <td>신청이력사유코드</td>
            <td>
              <button type="button" class="btn btn-dark-line open-modal" data-target="#modal-basic1">상세보기</button>
            </td>
          </tr>
          <tr>
            <td>2</td>
            <td>APRV_STTS_CD</td>
            <td>승인상태코드</td>
            <td>
              <button type="button" class="btn btn-dark-line open-modal" data-target="#modal-basic1">상세보기</button>
            </td>
          </tr>
          <tr>
            <td>3</td>
            <td>ATCH_FILE_SE_CD</td>
            <td>파일 구분 코드</td>
            <td>
              <button type="button" class="btn btn-dark-line open-modal" data-target="#modal-basic1">상세보기</button>
            </td>
          </tr>
          <tr>
            <td>4</td>
            <td>BANK_CD</td>
            <td>은행코드</td>
            <td>
              <button type="button" class="btn btn-dark-line open-modal" data-target="#modal-basic1">상세보기</button>
            </td>
          </tr>
          <tr>
            <td>5</td>
            <td>BBS_TY</td>
            <td>게시판타입</td>
            <td>
              <button type="button" class="btn btn-dark-line open-modal" data-target="#modal-basic1">상세보기</button>
            </td>
          </tr>
          <tr>
            <td>6</td>
            <td>CHG_CD</td>
            <td>변경코드</td>
            <td>
              <button type="button" class="btn btn-dark-line open-modal" data-target="#modal-basic1">상세보기</button>
            </td>
          </tr>
          <tr>
            <td>7</td>
            <td>ERROR_CD</td>
            <td>에러코드</td>
            <td>
              <button type="button" class="btn btn-dark-line open-modal" data-target="#modal-basic1">상세보기</button>
            </td>
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

<!-- modal -->
<div id="modal-basic1" class="modal" role="dialog" aria-modal="true" aria-hidden="true" aria-labelledby="modal-title-basic">
  <div class="modal-overlay" data-dismiss></div>

  <div class="modal-container" role="document" tabindex="-1">
    <header class="modal-header">
      <h3 id="modal-title-basic" class="modal-title">상세코드 정보</h3>
      <button type="button" class="modal-close" aria-label="닫기" data-dismiss></button>
    </header>

    <div class="modal-body">
      <div class="table-wrap">
        <table class="table table table-vertical">
          <caption class="blind">상세코드 정보 테이블</caption>
          <colgroup>
            <!-- 필요한 부분에 width 지정 -->
            <col style="width: 200px;">
            <col>
          </colgroup>
          <tbody>
            <!-- 행 반복 -->
            <tr>
              <th scope="col">코드 ID <span class="color-red">*</span></th>
              <td>
                <input type="text" class="text-field" readonly value="SV000001">
              </td>
            </tr>
            <tr>
              <th scope="col">코드명 <span class="color-red">*</span></th>
              <td>
                <input type="text" class="text-field" readonly value="powerpower">
              </td>
            </tr>
            <tr>
              <th scope="col">코드 약어</th>
              <td>
                <input type="text" class="text-field" readonly value="power">
              </td>
            </tr>
            <tr>
              <th scope="col">코드 설명</th>
              <td>
                <input type="text" class="text-field" readonly value="powerd입니다">
              </td>
            </tr>
            <tr>
              <th scope="col">정렬일련번호 <span class="color-red">*</span></th>
              <td>
                <input type="text" class="text-field" readonly value="12345696979695">
              </td>
            </tr>
            <tr>
              <th scope="col">사용유무 <span class="color-red">*</span></th>
              <td>
                <div class="control switch">
                  <input type="checkbox" id="sw-on" role="switch" aria-checked="true" checked>
                  <label for="sw-on"></label>
                </div>
              </td>
            </tr>
            <!-- ... -->
          </tbody>
        </table>
      </div>
    </div>

    <footer class="modal-footer">
      <button type="button" class="btn btn-dark-line" data-dismiss>취소</button>
      <button type="button" class="btn btn-blue">저장</button>
    </footer>
  </div>
</div>

<div id="modal-basic2" class="modal" role="dialog" aria-modal="true" aria-hidden="true" aria-labelledby="modal-title-basic">
  <div class="modal-overlay" data-dismiss></div>

  <div class="modal-container" role="document" tabindex="-1">
    <header class="modal-header">
      <h3 id="modal-title-basic" class="modal-title">상세코드 신규</h3>
      <button type="button" class="modal-close" aria-label="닫기" data-dismiss></button>
    </header>

    <div class="modal-body">
      <div class="table-wrap">
        <table class="table table table-vertical">
          <caption class="blind">상세코드 정보 테이블</caption>
          <colgroup>
            <!-- 필요한 부분에 width 지정 -->
            <col style="width: 200px;">
            <col>
          </colgroup>
          <tbody>
            <!-- 행 반복 -->
            <tr>
              <th scope="col">코드 ID <span class="color-red">*</span></th>
              <td>
                <input type="text" class="text-field" placeholder="코드 ID">
              </td>
            </tr>
            <tr>
              <th scope="col">코드명 <span class="color-red">*</span></th>
              <td>
                <input type="text" class="text-field" placeholder="코드명">
              </td>
            </tr>
            <tr>
              <th scope="col">코드 약어</th>
              <td>
                <input type="text" class="text-field" placeholder="코드약어">
              </td>
            </tr>
            <tr>
              <th scope="col">코드 설명</th>
              <td>
                <input type="text" class="text-field" placeholder="코드설명">
              </td>
            </tr>
            <tr>
              <th scope="col">정렬일련번호 <span class="color-red">*</span></th>
              <td>
                <input type="text" class="text-field" placeholder="정렬일련번호">
              </td>
            </tr>
            <tr>
              <th scope="col">사용유무 <span class="color-red">*</span></th>
              <td>
                <div class="control switch">
                  <input type="checkbox" id="sw-off" role="switch" aria-checked="false">
                  <label for="sw-off"></label>
                </div>
              </td>
            </tr>
            <!-- ... -->
          </tbody>
        </table>
      </div>
    </div>

    <footer class="modal-footer">
      <button type="button" class="btn btn-dark-line" data-dismiss>취소</button>
      <button type="button" class="btn btn-blue">저장</button>
    </footer>
  </div>
</div>

<%@ include file="../../components/commonFooter.jsp" %>