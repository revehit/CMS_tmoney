<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="../../components/commonHead.jsp" %>
<section class="section">
  <div class="section-header">
    <div class="title-wrap">
      <h3 class="section-title">관리자정보 상세관리</h3>
    </div>
    <div class="box-wrap">
      <div class="box">
        <p class="field-title">역활 ID</p>
        <input type="text" class="text-field" placeholder="ID 입력">
      </div>
      <div class="box">
        <p class="field-title">역활명</p>
        <input type="text" class="text-field" placeholder="역활명 입력">
      </div>
    </div>
    
    <div class="btn-wrap">
      <button type="button" class="btn btn-primary btn-icon-left">
        검색
        <i class="icon icon-search"></i>
      </button>
    </div>
  </div>

  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">역활 목록</h3>
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
        <caption class="blind">역활 목록 테이블</caption>
        <colgroup>
          <!-- 필요한 부분에 width 지정 -->
          <col width="300px">
          <col>
          <col width="150px">
          <col width="150px">
        </colgroup>
        <thead>
          <tr>
            <th scope="col">역활 ID</th>
            <th scope="col">역활명</th>
            <th scope="col">사용여부</th>
            <th scope="col">설정</th>
          </tr>
        </thead>
        <tbody>
          <!-- 행 반복 -->
          <tr>
            <td>A0001</td>
            <td>시스템관리자</td>
            <td>Y</td>
            <td>
              <button type="button" class="btn btn-dark-line open-modal" data-target="#modal-basic1">설정하기</button>
            </td>
          </tr>
          <tr>
            <td>A0002</td>
            <td>시스템운영자</td>
            <td>Y</td>
            <td>
              <button type="button" class="btn btn-dark-line open-modal" data-target="#modal-basic2">설정하기</button>
            </td>
          </tr>
          <tr>
            <td>A0003</td>
            <td>고객센터A</td>
            <td>Y</td>
            <td>
              <button type="button" class="btn btn-dark-line open-modal" data-target="#modal-basic3">설정하기</button>
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
<div id="modal-basic1" class="modal modal-lg" role="dialog" aria-modal="true" aria-hidden="true" aria-labelledby="modal-title-basic">
  <div class="modal-overlay" data-dismiss></div>

  <div class="modal-container" role="document" tabindex="-1">
    <header class="modal-header">
      <h3 id="modal-title-basic" class="modal-title">시스템관리자 설정</h3>
      <button type="button" class="modal-close" aria-label="닫기" data-dismiss></button>
    </header>

    <div class="modal-body">
      <div class="box-wrap">
        <div class="box">
          <p class="field-title">관리자 ID</p>
          <input type="text" class="text-field" placeholder="관리자 입력">
        </div>
        <div class="box">
          <p class="field-title">관리자명</p>
          <input type="text" class="text-field" placeholder="관리자명 입력">
        </div>
      </div>
      <div class="flex align-center justify-end">
        <button type="button" class="btn btn-primary">검색</button>
      </div>
      <div class="flex col- mt20">
        <div>
          <p class="field-title">리스트</p>
          <div class="table-wrap">
            <table class="table">
              <caption class="blind">관리자 목록 테이블</caption>
              <colgroup>
                <!-- 필요한 부분에 width 지정 -->
                <col style="width: 60px;">
                <col>
                <col style="width: 80px;">
              </colgroup>
              <thead>
                <tr>
                  <th scope="col">
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-all">
                      <label for="tb-all"></label>
                    </div>
                  </th>
                  <th scope="col">관리자 ID</th>
                  <th scope="col">관리자명</th>
                  <th scope="col">역활</th>
                </tr>
              </thead>
              <tbody>
                <!-- 행 반복 -->
                <tr>
                  <td>
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-1">
                      <label for="tb-1"></label>
                    </div>
                  </td>
                  <td>KSKPCY</td>
                  <td>고석균</td>
                  <td>시스템관리자</td>
                </tr>
                <tr>
                  <td>
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-2">
                      <label for="tb-2"></label>
                    </div>
                  </td>
                  <td>HWYANG</td>
                  <td>양희원</td>
                  <td>시스템관리자</td>
                </tr>
                <tr>
                  <td>
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-3">
                      <label for="tb-3"></label>
                    </div>
                  </td>
                  <td>DKKIM</td>
                  <td>김덕기</td>
                  <td>시스템관리자</td>
                </tr>
                <!-- ... -->
              </tbody>
            </table>
          </div>
          <div class="flex justify-end mt10">
            <button type="button" class="btn btn-secondary">추가</button>
          </div>
        </div>

        <div>
          <p class="field-title">추가됨</p>
          <div class="table-wrap">
            <table class="table">
              <caption class="blind">관리자 목록 테이블</caption>
              <colgroup>
                <!-- 필요한 부분에 width 지정 -->
                <col style="width: 60px;">
                <col>
                <col style="width: 80px;">
              </colgroup>
              <thead>
                <tr>
                  <th scope="col">
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-all2">
                      <label for="tb-all2"></label>
                    </div>
                  </th>
                  <th scope="col">관리자 ID</th>
                  <th scope="col">관리자명</th>
                  <th scope="col">역활</th>
                </tr>
              </thead>
              <tbody>
                <!-- 행 반복 -->
                <tr>
                  <td>
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-right1">
                      <label for="tb-right1"></label>
                    </div>
                  </td>
                  <td>KSKPCY</td>
                  <td>고석균</td>
                  <td>시스템관리자</td>
                </tr>
                <tr>
                  <td>
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-right2">
                      <label for="tb-right2"></label>
                    </div>
                  </td>
                  <td>HWYANG</td>
                  <td>양희원</td>
                  <td>시스템관리자</td>
                </tr>
                <!-- ... -->
              </tbody>
            </table>
          </div>
          <div class="flex justify-end mt10">
            <button type="button" class="btn btn-red">제거</button>
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

<div id="modal-basic2" class="modal modal-lg" role="dialog" aria-modal="true" aria-hidden="true" aria-labelledby="modal-title-basic">
  <div class="modal-overlay" data-dismiss></div>

  <div class="modal-container" role="document" tabindex="-1">
    <header class="modal-header">
      <h3 id="modal-title-basic" class="modal-title">시스템운영자 설정</h3>
      <button type="button" class="modal-close" aria-label="닫기" data-dismiss></button>
    </header>

    <div class="modal-body">
      <div class="box-wrap">
        <div class="box">
          <p class="field-title">관리자 ID</p>
          <input type="text" class="text-field" placeholder="관리자 입력">
        </div>
        <div class="box">
          <p class="field-title">관리자명</p>
          <input type="text" class="text-field" placeholder="관리자명 입력">
        </div>
      </div>
      <div class="flex align-center justify-end">
        <button type="button" class="btn btn-primary">검색</button>
      </div>
      <div class="flex col- mt20">
        <div>
          <p class="field-title">리스트</p>
          <div class="table-wrap">
            <table class="table">
              <caption class="blind">관리자 목록 테이블</caption>
              <colgroup>
                <!-- 필요한 부분에 width 지정 -->
                <col style="width: 60px;">
                <col>
                <col style="width: 80px;">
              </colgroup>
              <thead>
                <tr>
                  <th scope="col">
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-all">
                      <label for="tb-all"></label>
                    </div>
                  </th>
                  <th scope="col">관리자 ID</th>
                  <th scope="col">관리자명</th>
                  <th scope="col">역활</th>
                </tr>
              </thead>
              <tbody>
                <!-- 행 반복 -->
                <tr>
                  <td>
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-1">
                      <label for="tb-1"></label>
                    </div>
                  </td>
                  <td>KSKPCY</td>
                  <td>고석균</td>
                  <td>시스템관리자</td>
                </tr>
                <tr>
                  <td>
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-2">
                      <label for="tb-2"></label>
                    </div>
                  </td>
                  <td>HWYANG</td>
                  <td>양희원</td>
                  <td>시스템관리자</td>
                </tr>
                <tr>
                  <td>
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-3">
                      <label for="tb-3"></label>
                    </div>
                  </td>
                  <td>DKKIM</td>
                  <td>김덕기</td>
                  <td>시스템관리자</td>
                </tr>
                <!-- ... -->
              </tbody>
            </table>
          </div>
          <div class="flex justify-end mt10">
            <button type="button" class="btn btn-secondary">추가</button>
          </div>
        </div>

        <div>
          <p class="field-title">추가됨</p>
          <div class="table-wrap">
            <table class="table">
              <caption class="blind">관리자 목록 테이블</caption>
              <colgroup>
                <!-- 필요한 부분에 width 지정 -->
                <col style="width: 60px;">
                <col>
                <col style="width: 80px;">
              </colgroup>
              <thead>
                <tr>
                  <th scope="col">
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-all2">
                      <label for="tb-all2"></label>
                    </div>
                  </th>
                  <th scope="col">관리자 ID</th>
                  <th scope="col">관리자명</th>
                  <th scope="col">역활</th>
                </tr>
              </thead>
              <tbody>
                <!-- 행 반복 -->
                <tr>
                  <td>
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-right1">
                      <label for="tb-right1"></label>
                    </div>
                  </td>
                  <td>KSKPCY</td>
                  <td>고석균</td>
                  <td>시스템관리자</td>
                </tr>
                <tr>
                  <td>
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-right2">
                      <label for="tb-right2"></label>
                    </div>
                  </td>
                  <td>HWYANG</td>
                  <td>양희원</td>
                  <td>시스템관리자</td>
                </tr>
                <!-- ... -->
              </tbody>
            </table>
          </div>
          <div class="flex justify-end mt10">
            <button type="button" class="btn btn-red">제거</button>
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

<div id="modal-basic3" class="modal modal-lg" role="dialog" aria-modal="true" aria-hidden="true" aria-labelledby="modal-title-basic">
  <div class="modal-overlay" data-dismiss></div>

  <div class="modal-container" role="document" tabindex="-1">
    <header class="modal-header">
      <h3 id="modal-title-basic" class="modal-title">고객센터A 설정</h3>
      <button type="button" class="modal-close" aria-label="닫기" data-dismiss></button>
    </header>

    <div class="modal-body">
      <div class="box-wrap">
        <div class="box">
          <p class="field-title">관리자 ID</p>
          <input type="text" class="text-field" placeholder="관리자 입력">
        </div>
        <div class="box">
          <p class="field-title">관리자명</p>
          <input type="text" class="text-field" placeholder="관리자명 입력">
        </div>
      </div>
      <div class="flex align-center justify-end">
        <button type="button" class="btn btn-primary">검색</button>
      </div>
      <div class="flex col- mt20">
        <div>
          <p class="field-title">리스트</p>
          <div class="table-wrap">
            <table class="table">
              <caption class="blind">관리자 목록 테이블</caption>
              <colgroup>
                <!-- 필요한 부분에 width 지정 -->
                <col style="width: 60px;">
                <col>
                <col style="width: 80px;">
              </colgroup>
              <thead>
                <tr>
                  <th scope="col">
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-all">
                      <label for="tb-all"></label>
                    </div>
                  </th>
                  <th scope="col">관리자 ID</th>
                  <th scope="col">관리자명</th>
                  <th scope="col">역활</th>
                </tr>
              </thead>
              <tbody>
                <!-- 행 반복 -->
                <tr>
                  <td>
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-1">
                      <label for="tb-1"></label>
                    </div>
                  </td>
                  <td>KSKPCY</td>
                  <td>고석균</td>
                  <td>시스템관리자</td>
                </tr>
                <tr>
                  <td>
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-2">
                      <label for="tb-2"></label>
                    </div>
                  </td>
                  <td>HWYANG</td>
                  <td>양희원</td>
                  <td>시스템관리자</td>
                </tr>
                <tr>
                  <td>
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-3">
                      <label for="tb-3"></label>
                    </div>
                  </td>
                  <td>DKKIM</td>
                  <td>김덕기</td>
                  <td>시스템관리자</td>
                </tr>
                <!-- ... -->
              </tbody>
            </table>
          </div>
          <div class="flex justify-end mt10">
            <button type="button" class="btn btn-secondary">추가</button>
          </div>
        </div>

        <div>
          <p class="field-title">추가됨</p>
          <div class="table-wrap">
            <table class="table">
              <caption class="blind">관리자 목록 테이블</caption>
              <colgroup>
                <!-- 필요한 부분에 width 지정 -->
                <col style="width: 60px;">
                <col>
                <col style="width: 80px;">
              </colgroup>
              <thead>
                <tr>
                  <th scope="col">
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-all2">
                      <label for="tb-all2"></label>
                    </div>
                  </th>
                  <th scope="col">관리자 ID</th>
                  <th scope="col">관리자명</th>
                  <th scope="col">역활</th>
                </tr>
              </thead>
              <tbody>
                <!-- 행 반복 -->
                <tr>
                  <td>
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-right1">
                      <label for="tb-right1"></label>
                    </div>
                  </td>
                  <td>KSKPCY</td>
                  <td>고석균</td>
                  <td>시스템관리자</td>
                </tr>
                <tr>
                  <td>
                    <div class="control checkbox">
                      <input type="checkbox" id="tb-right2">
                      <label for="tb-right2"></label>
                    </div>
                  </td>
                  <td>HWYANG</td>
                  <td>양희원</td>
                  <td>시스템관리자</td>
                </tr>
                <!-- ... -->
              </tbody>
            </table>
          </div>
          <div class="flex justify-end mt10">
            <button type="button" class="btn btn-red">제거</button>
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

<%@ include file="../../components/commonFooter.jsp" %>