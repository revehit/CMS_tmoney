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
        <div class="dropdown" data-name="traf">
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
    
          <input type="hidden" name="traf" value="">
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
    <div class="box-wrap">
      <div class="box col2">
        <p class="field-title">변경 카드번호</p>
        <div class="flex align-center col-">
          <div class="flex align-center col-">
            <input type="text" class="text-field" placeholder="" />
            <span>-</span>
            <input type="text" class="text-field" placeholder="" />
            <span>-</span>
            <input type="text" class="text-field" placeholder="" />
            <span>-</span>
            <input type="text" class="text-field" placeholder="" />
          </div>
          <button type="button" class="btn btn-primary">유효성 체크</button>
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
    <div class="btn-wrap">
      <button type="button" class="btn btn-dark-line">업로드</button>
      <button type="button" class="btn btn-blue">행추가</button>
      <button type="button" class="btn btn-red">행삭제</button>
    </div>
  </div>

  <div class="section-content">
    <!-- <div class="title-wrap">
      <h3 class="section-title">제목 없으면 지워도 됩니다</h3>
    </div> -->
    <div class="table-wrap">
      <table class="table table-vertical">
        <caption class="blind">사업 상세 정보</caption>
        <colgroup>
          <!-- 필요한 부분에 width 지정 -->
          <col style="width: 160px;">
          <col>
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">신청일자</th>
            <td>
              <div class="date-field" style="width: 150px;">
                <input type="text" id="startDate1" class="text-field date-text" value="2025-01-10">
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row">카테고리</th>
            <td>
              <input type="text" class="text-field" placeholder="텍스트 필드입니다." />
            </td>
          </tr>
          <tr>
            <th scope="row">사업명</th>
            <td>
              <input type="text" class="text-field" placeholder="텍스트 필드입니다." />
            </td>
          </tr>
          <tr>
            <th scope="row">부서명</th>
            <td><input type="text" class="text-field" placeholder="텍스트 필드입니다." /></td>
          </tr>
          <tr>
            <th scope="row">사업시작일</th>
            <td>
              <input type="text" class="text-field" placeholder="텍스트 필드입니다." />
            </td>
          </tr>
          <tr>
            <th scope="row">사업종료일</th>
            <td>
              <input type="text" class="text-field" placeholder="텍스트 필드입니다." />
            </td>
          </tr>
          <tr>
            <th scope="row">카드번호</th>
            <td>
              <div class="flex align-center col-" style="width:500px;">
                <input type="text" class="text-field" placeholder="" />
                <span>-</span>
                <input type="text" class="text-field" placeholder="" />
                <span>-</span>
                <input type="text" class="text-field" placeholder="" />
                <span>-</span>
                <input type="text" class="text-field" placeholder="" />
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row">처리상태</th>
            <td>
              <div style="width:240px">
                <div class="dropdown" data-name="state">
                  <button type="button"
                    class="dropdown_button"
                    aria-haspopup="listbox"
                    aria-expanded="false"
                    aria-label="처리상태 드롭다운">
                    <span class="dropdown_value" data-placeholder="선택하세요">선택하세요</span>
                  </button>
            
                  <ul class="dropdown_list" role="listbox" tabindex="-1">
                    <li role="option" class="dropdown_option" data-value="yes">처리</li>
                    <li role="option" class="dropdown_option" data-value="no">미처리</li>
                  </ul>
            
                  <input type="hidden" name="state" value="">
                </div>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="flex justify-end col- mt40">
      <button type="button" class="btn btn-dark-line">신규</button>
      <button type="button" class="btn btn-blue">저장</button>
    </div>
  </div>
</section>

<script>
  $(function() {
    $("#startDate, #startDate1").datepicker({
      dateFormat: "yy-mm-dd", // JSP 서버와 맞춤
      changeMonth: true,
      changeYear: true
    });
  });
</script>
<%@ include file="../../components/commonFooter.jsp" %>