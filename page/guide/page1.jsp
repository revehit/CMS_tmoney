<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="../../components/commonHead.jsp" %>
<section class="section">
  <div class="section-header">
    <div class="title-wrap">
      <h3 class="section-title">지급금신청내역관리</h3>
    </div>
    <div class="box-wrap">
      <div class="box">
        <p class="field-title">기관코드</p>
        <input type="text" class="text-field" placeholder="기관코드 입력">
      </div>
      <div class="box">
        <p class="field-title">서비스명</p>
        <input type="text" class="text-field" placeholder="서비스명 입력">
      </div>
      <div class="box">
        <p class="field-title">정산일자</p>
        <div class="date-field">
          <input type="text" id="startDate" class="text-field date-text" value="2025-01-10">
        </div>
      </div>
    </div>
    <div class="box-wrap">
      <div class="box">
        <p class="field-title">회원 ID</p>
        <input type="text" class="text-field" placeholder="아이디 입력">
      </div>
      <div class="box">
        <p class="field-title">승인상태</p>
        <div class="dropdown" data-name="state">
          <button type="button"
            class="dropdown_button"
            aria-haspopup="listbox"
            aria-expanded="false"
            aria-label="승인상태 드롭다운">
            <span class="dropdown_value" data-placeholder="선택하세요">선택하세요</span>
          </button>
    
          <ul class="dropdown_list" role="listbox" tabindex="-1">
            <li role="option" class="dropdown_option" data-value="stateAll">전체</li>
            <li role="option" class="dropdown_option" data-value="pass">승인</li>
            <li role="option" class="dropdown_option" data-value="reject">미승인</li>
          </ul>
    
          <input type="hidden" name="state" value="">
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
          <col width="150px">
          <col width="150px">
          <col width="200px">
          <col width="150px">
          <col width="250px">
          <col width="150px">
          <col width="300px">
          <col width="150px">
          <col width="150px">
          <col width="150px">
          <col width="150px">
          <col width="150px">
          <col width="150px">
          <col width="200px">
        </colgroup>
        <thead>
          <tr>
            <th scope="col">서비스 유형명</th>
            <th scope="col">정산일자</th>
            <th scope="col">회원 ID</th>
            <th scope="col">신청일자</th>
            <th scope="col">카드번호</th>
            <th scope="col">은행명</th>
            <th scope="col">계좌번호</th>
            <th scope="col">예금주명</th>
            <th scope="col">승인자 ID</th>
            <th scope="col">승인일시</th>
            <th scope="col">승인하기</th>
            <th scope="col">지원대상 유형</th>
            <th scope="col">첨부파일관리번호</th>
            <th scope="col">신청진행상태</th>
          </tr>
        </thead>
        <tbody>
          <!-- 행 반복 -->
          <tr>
            <td>서비스명서비스</td>
            <td>2025-01-10</td>
            <td>IDIDIDID</td>
            <td>2025-12-31</td>
            <td>0000-0000-0000-0000</td>
            <td>신한은행</td>
            <td>203-888-777888</td>
            <td>홍길동</td>
            <td>IDIDIDID</td>
            <td>2025-09-30</td>
            <td>
              <button type="button" class="btn btn-dark-line">승인하기</button>
            </td>
            <td>어린이</td>
            <td>링크 미리보기</td>
            <td>대기</td>
          </tr>
          <tr>
            <td>서비스명서비스</td>
            <td>2025-01-10</td>
            <td>IDIDIDID</td>
            <td>2025-12-31</td>
            <td>0000-0000-0000-0000</td>
            <td>신한은행</td>
            <td>203-888-777888</td>
            <td>홍길동</td>
            <td>IDIDIDID</td>
            <td>2025-09-30</td>
            <td>
              <button type="button" class="btn btn-dark-line">승인하기</button>
            </td>
            <td>어린이</td>
            <td>링크 미리보기</td>
            <td>대기</td>
          </tr>
          <tr>
            <td>서비스명서비스</td>
            <td>2025-01-10</td>
            <td>IDIDIDID</td>
            <td>2025-12-31</td>
            <td>0000-0000-0000-0000</td>
            <td>신한은행</td>
            <td>203-888-777888</td>
            <td>홍길동</td>
            <td>IDIDIDID</td>
            <td>2025-09-30</td>
            <td>
              <button type="button" class="btn btn-dark-line">승인하기</button>
            </td>
            <td>어린이</td>
            <td>링크 미리보기</td>
            <td>대기</td>
          </tr>
          <tr>
            <td>서비스명서비스</td>
            <td>2025-01-10</td>
            <td>IDIDIDID</td>
            <td>2025-12-31</td>
            <td>0000-0000-0000-0000</td>
            <td>신한은행</td>
            <td>203-888-777888</td>
            <td>홍길동</td>
            <td>IDIDIDID</td>
            <td>2025-09-30</td>
            <td>
              <button type="button" class="btn btn-dark-line">승인하기</button>
            </td>
            <td>어린이</td>
            <td>링크 미리보기</td>
            <td>대기</td>
          </tr>
          <tr>
            <td>서비스명서비스</td>
            <td>2025-01-10</td>
            <td>IDIDIDID</td>
            <td>2025-12-31</td>
            <td>0000-0000-0000-0000</td>
            <td>신한은행</td>
            <td>203-888-777888</td>
            <td>홍길동</td>
            <td>IDIDIDID</td>
            <td>2025-09-30</td>
            <td>
              <button type="button" class="btn btn-dark-line">승인하기</button>
            </td>
            <td>어린이</td>
            <td>링크 미리보기</td>
            <td>대기</td>
          </tr>
          <tr>
            <td>서비스명서비스</td>
            <td>2025-01-10</td>
            <td>IDIDIDID</td>
            <td>2025-12-31</td>
            <td>0000-0000-0000-0000</td>
            <td>신한은행</td>
            <td>203-888-777888</td>
            <td>홍길동</td>
            <td>IDIDIDID</td>
            <td>2025-09-30</td>
            <td>
              <button type="button" class="btn btn-dark-line">승인하기</button>
            </td>
            <td>어린이</td>
            <td>링크 미리보기</td>
            <td>대기</td>
          </tr>
          <tr>
            <td>서비스명서비스</td>
            <td>2025-01-10</td>
            <td>IDIDIDID</td>
            <td>2025-12-31</td>
            <td>0000-0000-0000-0000</td>
            <td>신한은행</td>
            <td>203-888-777888</td>
            <td>홍길동</td>
            <td>IDIDIDID</td>
            <td>2025-09-30</td>
            <td>
              <button type="button" class="btn btn-dark-line">승인하기</button>
            </td>
            <td>어린이</td>
            <td>링크 미리보기</td>
            <td>대기</td>
          </tr>
          <tr>
            <td>서비스명서비스</td>
            <td>2025-01-10</td>
            <td>IDIDIDID</td>
            <td>2025-12-31</td>
            <td>0000-0000-0000-0000</td>
            <td>신한은행</td>
            <td>203-888-777888</td>
            <td>홍길동</td>
            <td>IDIDIDID</td>
            <td>2025-09-30</td>
            <td>
              <button type="button" class="btn btn-dark-line">승인하기</button>
            </td>
            <td>어린이</td>
            <td>링크 미리보기</td>
            <td>대기</td>
          </tr>
          <tr>
            <td>서비스명서비스</td>
            <td>2025-01-10</td>
            <td>IDIDIDID</td>
            <td>2025-12-31</td>
            <td>0000-0000-0000-0000</td>
            <td>신한은행</td>
            <td>203-888-777888</td>
            <td>홍길동</td>
            <td>IDIDIDID</td>
            <td>2025-09-30</td>
            <td>
              <button type="button" class="btn btn-dark-line">승인하기</button>
            </td>
            <td>어린이</td>
            <td>링크 미리보기</td>
            <td>대기</td>
          </tr>
          <tr>
            <td>서비스명서비스</td>
            <td>2025-01-10</td>
            <td>IDIDIDID</td>
            <td>2025-12-31</td>
            <td>0000-0000-0000-0000</td>
            <td>신한은행</td>
            <td>203-888-777888</td>
            <td>홍길동</td>
            <td>IDIDIDID</td>
            <td>2025-09-30</td>
            <td>
              <button type="button" class="btn btn-dark-line">승인하기</button>
            </td>
            <td>어린이</td>
            <td>링크 미리보기</td>
            <td>대기</td>
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
    <div class="title-wrap">
      <h3 class="section-title">신청현황</h3>
    </div>
    <div class="table-wrap mt20">
      <table class="table">
        <caption class="blind">신청현황 테이블</caption>
        <colgroup>
          <!-- 필요한 부분에 width 지정 -->
          <col width="160px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">일</th>
            <td>1</td>
            <td>2</td>
            <td>3</td>
            <td>4</td>
            <td>5</td>
            <td>6</td>
            <td>7</td>
            <td>8</td>
            <td>9</td>
            <td>10</td>
            <td>11</td>
            <td>12</td>
            <td>13</td>
            <td>14</td>
            <td>15</td>
            <td>16</td>
            <td>17</td>
            <td>18</td>
            <td>19</td>
            <td>20</td>
            <td>21</td>
            <td>22</td>
            <td>23</td>
            <td>24</td>
            <td>25</td>
            <td>26</td>
            <td>27</td>
            <td>28</td>
            <td>29</td>
            <td>30</td>
          </tr>
          <tr>
            <th scope="row">신청자 수</th>
            <td>45</td>
            <td>34</td>
            <td>22</td>
            <td>35</td>
            <td>12</td>
            <td>24</td>
            <td>26</td>
            <td>3</td>
            <td>9</td>
            <td>12</td>
            <td>32</td>
            <td>11</td>
            <td>20</td>
            <td>56</td>
            <td>22</td>
            <td>16</td>
            <td>2</td>
            <td>18</td>
            <td>0</td>
            <td>30</td>
            <td>12</td>
            <td>22</td>
            <td>23</td>
            <td>24</td>
            <td>25</td>
            <td>26</td>
            <td>27</td>
            <td>28</td>
            <td>29</td>
            <td>30</td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="table-wrap mt20">
      <table class="table">
        <caption class="blind">신청현황 테이블</caption>
        <colgroup>
          <!-- 필요한 부분에 width 지정 -->
          <col width="160px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
          <col width="100px">
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">일</th>
            <td>2023-07</td>
            <td>2023-08</td>
            <td>2023-09</td>
            <td>2023-10</td>
            <td>2023-11</td>
            <td>2023-12</td>
            <td>2024-01</td>
            <td>2024-02</td>
            <td>2024-03</td>
            <td>2024-04</td>
            <td>2024-05</td>
            <td>2024-06</td>
            <td>2024-07</td>
            <td>2024-08</td>
            <td>2024-09</td>
            <td>2024-10</td>
            <td>2024-11</td>
            <td>2024-12</td>
            <td>2025-01</td>
            <td>2025-02</td>
            <td>2025-03</td>
            <td>2025-04</td>
            <td>2025-05</td>
            <td>2025-06</td>
            <td>2025-07</td>
            <td>2025-08</td>
            <td>2025-09</td>
            <td>2025-10</td>
            <td>2025-11</td>
            <td>2025-12</td>
          </tr>
          <tr>
            <th scope="row">신청자 수</th>
            <td>45</td>
            <td>34</td>
            <td>22</td>
            <td>35</td>
            <td>12</td>
            <td>24</td>
            <td>26</td>
            <td>3</td>
            <td>9</td>
            <td>12</td>
            <td>32</td>
            <td>11</td>
            <td>20</td>
            <td>56</td>
            <td>22</td>
            <td>16</td>
            <td>2</td>
            <td>18</td>
            <td>0</td>
            <td>30</td>
            <td>12</td>
            <td>22</td>
            <td>23</td>
            <td>24</td>
            <td>25</td>
            <td>26</td>
            <td>27</td>
            <td>28</td>
            <td>29</td>
            <td>30</td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="mt20">
      <p class="color-red">※ 시스템 담당자일 경우 기관코드 서비스명을 검색할 수 있으나 지자체 담당자인 경우 기관코드 & 서비스 관련해서는 조회돼서 나올 것</p>
      <p class="color-red">※ 월 통계는 현재 월부터 과거 1년까지</p>
      <p class="color-red">※ 일 통계는 정산년월 기준으로 신청자수가 있는 일만 표시</p>
      <p class="color-red">※ 승인상태에 “보류“ 상태 추가</p>
      <p class="color-red">※ 첨부파일 미리보기 제공</p>
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