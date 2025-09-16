<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="../../components/commonHead.jsp" %>
<section class="section">
  <div class="section-header">
    <div class="title-wrap">
      <h3 class="section-title">지원한도내역조회</h3>
    </div>
    <div class="box-wrap">
      <div class="box">
        <p class="field-title">서비스명</p>
        <input type="text" class="text-field" value="SV000001">
      </div>
      <div class="box">
        <p class="field-title">사용여부</p>
        <div class="dropdown" data-name="state">
          <button type="button"
            class="dropdown_button"
            aria-haspopup="listbox"
            aria-expanded="false"
            aria-label="사용여부 드롭다운">
            <span class="dropdown_value" data-placeholder="선택하세요">선택하세요</span>
          </button>
    
          <ul class="dropdown_list" role="listbox" tabindex="-1">
            <li role="option" class="dropdown_option" data-value="amount">Y</li>
            <li role="option" class="dropdown_option" data-value="number">N</li>
          </ul>
    
          <input type="hidden" name="state" value="">
        </div>
      </div>
      <div class="box">
        <p class="field-title">한도구분</p>
        <div class="dropdown" data-name="limit">
          <button type="button"
            class="dropdown_button"
            aria-haspopup="listbox"
            aria-expanded="false"
            aria-label="한도구분 드롭다운">
            <span class="dropdown_value" data-placeholder="선택하세요">선택하세요</span>
          </button>
    
          <ul class="dropdown_list" role="listbox" tabindex="-1">
            <li role="option" class="dropdown_option" data-value="amount">금액</li>
            <li role="option" class="dropdown_option" data-value="number">건수</li>
          </ul>
    
          <input type="hidden" name="limit" value="">
        </div>
      </div>
    </div>
    
    <div class="btn-wrap">
      <button type="button" class="btn btn-dark-line">
        신규 한도 설정
      </button>
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
      <h3 class="section-title">한도구분(금액)</h3>
    </div>
    <div class="flex justify-space-between">
      <b>검색결과: 10건</b>
      <button type="button" class="btn btn-primary btn-icon-left">
        엑셀 다운로드
        <i class="icon icon-save"></i>
      </button>
    </div>
    <div class="table-wrap mt20">
      <table class="table">
        <caption class="blind">지급금 신청 테이블</caption>
        <colgroup>
          <!-- 필요한 부분에 width 지정 -->
          <col width="100px">
          <col width="150px">
          <col width="200px">
          <col width="150px">
          <col width="150px">
          <col width="300px">
          <col width="150px">
          <col width="150px">
          <col width="150px">
          <col width="150px">
        </colgroup>
        <thead>
          <tr>
            <th scope="col">순번</th>
            <th scope="col">서비스 ID</th>
            <th scope="col">교통비지원서비스</th>
            <th scope="col">서비스유형 ID</th>
            <th scope="col">서비스유형명</th>
            <th scope="col">한도시작년월</th>
            <th scope="col">최소한도값</th>
            <th scope="col">최대한도값</th>
            <th scope="col">사용여부</th>
            <th scope="col">한도설정</th>
          </tr>
        </thead>
        <tbody>
          <!-- 행 반복 -->
          <tr>
            <td>1</td>
            <td>SV000001</td>
            <td>어린이/청소년 교통비 지원사업</td>
            <td>SV000001</td>
            <td></td>
            <td>2024-01-02 ~ 2025-13-31</td>
            <td>0</td>
            <td>30,000</td>
            <td>Y</td>
            <td>
              <button type="button" class="btn btn-dark-line open-modal" data-target="#modal-basic1">한도설정</button>
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
      <h3 id="modal-title-basic" class="modal-title">한도(금액) 설정</h3>
      <button type="button" class="modal-close" aria-label="닫기" data-dismiss></button>
    </header>

    <div class="modal-body">
      <div class="flex align-center justify-space-between">
        <div class="tabs" role="tablist">
          <button class="tab is-active" role="tab" aria-selected="true" aria-controls="panel-1" id="tab-1">분기</button>
          <button class="tab" role="tab" aria-selected="false" aria-controls="panel-2" id="tab-2">월</button>
        </div>
        <div class="flex col-">
          <button type="button" class="btn btn-dark-line">행추가</button>
          <button type="button" class="btn btn-dark-line">행삭제</button>
        </div>
      </div>
      <div class="tab-panels">
      <div class="tab-panel is-active" role="tabpanel" id="panel-1" aria-labelledby="tab-1">
        <div class="table-wrap">
          <table class="table">
            <caption class="blind">지급금 신청 테이블</caption>
            <colgroup>
              <!-- 필요한 부분에 width 지정 -->
              <col width="100px">
              <col>
              <col width="150px">
            </colgroup>
            <thead>
              <tr>
                <th scope="col">순번</th>
                <th scope="col">한도 시작, 종료 기간(분기)</th>
                <th scope="col">한도금액(원)</th>
              </tr>
            </thead>
            <tbody>
              <!-- 행 반복 -->
              <tr>
                <td>1</td>
                <td>
                  <div class="flex align-center col-2">
                    <div class="date-field" style="width: 200px">
                      <input type="text" id="startDate" class="text-field date-text" value="2025-01-10">
                    </div>
                    <span>~</span>
                    <div class="date-field" style="width: 200px">
                      <input type="text" id="endDate" class="text-field date-text" value="2025-01-10">
                    </div>
                  </div>
                </td>
                <td>10,000</td>
              </tr>
              <tr>
                <td>2</td>
                <td>
                  <div class="flex align-center col-2">
                    <div class="date-field" style="width: 200px">
                      <input type="text" id="startDate1" class="text-field date-text" value="2025-01-10">
                    </div>
                    <span>~</span>
                    <div class="date-field" style="width: 200px">
                      <input type="text" id="endDate1" class="text-field date-text" value="2025-01-10">
                    </div>
                  </div>
                </td>
                <td>20,000</td>
              </tr>
              <tr>
                <td>3</td>
                <td>
                  <div class="flex align-center col-2">
                    <div class="date-field" style="width: 200px">
                      <input type="text" id="startDate2" class="text-field date-text" value="2025-01-10">
                    </div>
                    <span>~</span>
                    <div class="date-field" style="width: 200px">
                      <input type="text" id="endDate2" class="text-field date-text" value="2025-01-10">
                    </div>
                  </div>
                </td>
                <td>80,000</td>
              </tr>
              <tr>
                <td>4</td>
                <td>
                  <div class="flex align-center col-2">
                    <div class="date-field" style="width: 200px">
                      <input type="text" id="startDate3" class="text-field date-text" value="2025-01-10">
                    </div>
                    <span>~</span>
                    <div class="date-field" style="width: 200px">
                      <input type="text" id="endDate3" class="text-field date-text" value="2025-01-10">
                    </div>
                  </div>
                </td>
                <td>10,000</td>
              </tr>
              <!-- ... -->
            </tbody>
          </table>
        </div>
      </div>
      <div class="tab-panel" role="tabpanel" id="panel-2" aria-labelledby="tab-2">
        <div class="table-wrap">
          <table class="table">
            <caption class="blind">지급금 신청 테이블</caption>
            <colgroup>
              <!-- 필요한 부분에 width 지정 -->
              <col width="100px">
              <col>
              <col width="150px">
            </colgroup>
            <thead>
              <tr>
                <th scope="col">순번</th>
                <th scope="col">한도 시작, 종료 기간(월)</th>
                <th scope="col">한도금액(원)</th>
              </tr>
            </thead>
            <tbody>
              <!-- 행 반복 -->
              <tr>
                <td>1</td>
                <td>
                  <div class="flex align-center col-2">
                    <div class="date-field" style="width: 200px">
                      <input type="text" id="startDate4" class="text-field date-text" value="2025-01-10">
                    </div>
                    <span>~</span>
                    <div class="date-field" style="width: 200px">
                      <input type="text" id="endDate4" class="text-field date-text" value="2025-01-10">
                    </div>
                  </div>
                </td>
                <td>10,000</td>
              </tr>
              <tr>
                <td>2</td>
                <td>
                  <div class="flex align-center col-2">
                    <div class="date-field" style="width: 200px">
                      <input type="text" id="startDate5" class="text-field date-text" value="2025-01-10">
                    </div>
                    <span>~</span>
                    <div class="date-field" style="width: 200px">
                      <input type="text" id="endDate5" class="text-field date-text" value="2025-01-10">
                    </div>
                  </div>
                </td>
                <td>20,000</td>
              </tr>
              <tr>
                <td>3</td>
                <td>
                  <div class="flex align-center col-2">
                    <div class="date-field" style="width: 200px">
                      <input type="text" id="startDate6" class="text-field date-text" value="2025-01-10">
                    </div>
                    <span>~</span>
                    <div class="date-field" style="width: 200px">
                      <input type="text" id="endDate6" class="text-field date-text" value="2025-01-10">
                    </div>
                  </div>
                </td>
                <td>80,000</td>
              </tr>
              <tr>
                <td>4</td>
                <td>
                  <div class="flex align-center col-2">
                    <div class="date-field" style="width: 200px">
                      <input type="text" id="startDate7" class="text-field date-text" value="2025-01-10">
                    </div>
                    <span>~</span>
                    <div class="date-field" style="width: 200px">
                      <input type="text" id="endDate7" class="text-field date-text" value="2025-01-10">
                    </div>
                  </div>
                </td>
                <td>10,000</td>
              </tr>
              <!-- ... -->
            </tbody>
          </table>
        </div>
      </div>
    </div>
    </div>

    <footer class="modal-footer">
      <button type="button" class="btn btn-dark-line" data-dismiss>취소</button>
      <button type="button" class="btn btn-blue">저장</button>
    </footer>
  </div>
</div>

<script>
  $(function() {
    $("#startDate, #endDate, #startDate1, #endDate1, #startDate2, #endDate2, #startDate3, #endDate3, #startDate4, #endDate4, #startDate5, #endDate5, #startDate6, #endDate6, #startDate7, #endDate7").datepicker({
      dateFormat: "yy-mm-dd", // JSP 서버와 맞춤
      changeMonth: true,
      changeYear: true
    });
  });
</script>

<%@ include file="../../components/commonFooter.jsp" %>