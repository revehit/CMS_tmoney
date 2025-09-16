<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="../../components/commonHead.jsp" %>
<section class="section">
  <div class="section-header">
    <div class="title-wrap">
      <h3 class="section-title">연계 검증</h3>
    </div>
    <div class="text-wrap">
      <div class="box">
        <div class="flex align-center gap12">
          <p class="title">1. 알림톡을 발송하여 전송결과 확인</p>
          <button type="button" class="btn btn-secondary open-modal" data-target="#modal-basic1">알림톡 상태 점검</button>
        </div>
        <ul class="list-type dot mt20">
          <li>알림톡을 발송하여 전송결과 확인</li>
          <li>회원명 및 휴대전화번호란에 테스트 대상 내용을 입력</li>
          <li>메시지 템플릿을 선택하고 저장을 누르면 알림톡 발송</li>
        </ul>
      </div>
      <div class="box">
        <div class="flex align-center gap12">
          <p class="title">2. 거주지인증 상태 점검</p>
          <button type="button" class="btn btn-secondary open-modal" data-target="#modal-basic1">거주지인증 상태 점검</button>
        </div>
        <ul class="list-type dot mt20">
          <li>거주지 인증
            <ul>
              <li>성명에 인증 대상자 성명을 입력한 후 이름세팅 클릭</li>
              <li>주민등록번호 입력 후 거주지 인증 클릭</li>
            </ul>
          </li>
          <li>외국인등록번호 인증
            <ul>
              <li>성명에 인증 대상자 성명을 입력한 후 이름세팅 클릭</li>
              <li>외국인등록번호 입력 후 인증 클릭</li>
            </ul>
          </li>
        </ul>
      </div>
      <div class="box">
        <div class="flex align-center gap12">
          <p class="title">3. 계좌번호 상태 점검</p>
          <button type="button" class="btn btn-secondary open-modal" data-target="#modal-basic1">계좌번호 상태 점검</button>
        </div>
        <ul class="list-type dot mt20">
          <li>계좌번호 인증
            <ul>
              <li>은행명을 선택</li>
              <li>계좌번호를 입력 후 계좌인증 버튼 클릭</li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
</section>

<!-- modal -->
<div id="modal-basic1" class="modal" role="dialog" aria-modal="true" aria-hidden="true" aria-labelledby="modal-title-basic">
  <div class="modal-overlay" data-dismiss></div>

  <div class="modal-container" role="document" tabindex="-1">
    <header class="modal-header">
      <h3 id="modal-title-basic" class="modal-title">알림톡 상태 점검</h3>
      <button type="button" class="modal-close" aria-label="닫기" data-dismiss></button>
    </header>

    <div class="modal-body">
      <div class="box-wrap">
        <div class="box col2">
          <p class="field-title">성명 <span class="color-red">*</span></p>
          <input type="text" class="text-field" placeholder="성명 입력">
        </div>
        <div class="box col2">
          <p class="field-title">휴대전화번호 <span class="color-red">*</span></p>
          <input type="text" class="text-field" placeholder="휴대전화번호 입력">
        </div>
      </div>
    </div>

    <footer class="modal-footer">
      <button type="button" class="btn btn-dark-line" data-dismiss>취소</button>
      <button type="button" class="btn btn-blue">알림톡 발송</button>
    </footer>
  </div>
</div>

<%@ include file="../../components/commonFooter.jsp" %>