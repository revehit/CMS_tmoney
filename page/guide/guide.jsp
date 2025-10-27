<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="../../components/commonHead.jsp" %>

<section class="section">
  <div class="section-header">
    <div class="title-wrap">
      <h3 class="section-title">가이드페이지 타이틀</h3>
    </div>
  </div>

  <!-- button -->
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">Button</h3>
    </div>
    <p class="field-title">enabled</p>
    <div class="flex gap8">
      <button class="btn btn-red">삭제</button>
      <button class="btn btn-blue">확인</button>
      <button class="btn btn-dark">취소</button>
      <button class="btn btn-red-line">삭제</button>
      <button class="btn btn-blue-line">확인</button>
      <button class="btn btn-dark-line">취소</button>
      <button class="btn btn-dark-line" disabled>비활성</button>
    </div>
    <p class="field-title mt40">텍스트 + 아이콘</p>
    <div class="flex gap8">
      <button class="btn btn-red btn-icon-left">
        <i class="icon icon-save"></i> 저장
      </button>
      <button class="btn btn-blue btn-icon-right">
        다음 <i class="icon icon-arrow-right"></i>
      </button>
    </div>
    <p class="field-title mt40">only 아이콘</p>
    <div class="flex gap8">
      <button class="btn btn-red btn-icon-only">
        <i class="icon icon-search"></i>
      </button>
      <button class="btn btn-blue btn-icon-only">
        <i class="icon icon-close"></i>
      </button>
    </div>

  </div>

  <!-- textfield -->
  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">text-field</h3>
    </div>
    <input type="text" class="text-field" placeholder="텍스트 필드입니다." />
    <div class="mt40">
      <p class="field-title">타이틀이 있는 텍스트필드</p>
      <input type="text" class="text-field" placeholder="텍스트 필드입니다." />
    </div>
    <div class="mt40">
      <p class="field-title">텍스트필드 2개</p>
      <div class="flex col-2">
        <input type="text" class="text-field" placeholder="텍스트 필드입니다." />
        <input type="text" class="text-field" placeholder="텍스트 필드입니다." />
      </div>
    </div>
    <div class="mt40">
      <p class="field-title">Disabled</p>
      <input type="text" class="text-field" disabled placeholder="텍스트 필드입니다." />
    </div>
  </div>

  <!-- textarea -->
  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">Text-area</h3>
    </div>
    <label for="user-comment1" class="blind">텍스트 에어리어입니다</label>
    <textarea id="user-comment1" class="textarea-box" rows="4" placeholder="텍스트 에어리어입니다."></textarea>
    <div class="mt40">
      <p class="field-title">텍스트에어리어</p>
      <label for="user-comment2" class="blind">텍스트 에어리어입니다</label>
      <textarea id="user-comment2" class="textarea-box" rows="4" placeholder="텍스트 에어리어입니다."></textarea>
    </div>
    <div class="mt40">
      <p class="field-title">Disabled</p>
      <label for="user-comment3" class="blind">텍스트 에어리어입니다</label>
      <textarea id="user-comment3" class="textarea-box" rows="4" disabled placeholder="텍스트 에어리어입니다."></textarea>
    </div>
  </div>

  <!-- select(dropdown) -->
  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">Select(dropdown)</h3>
    </div>
    <p class="field-title">부서선택</p>
    <div style="width:240px">
      <div class="dropdown" data-name="department">
        <button type="button"
          class="dropdown_button"
          aria-haspopup="listbox"
          aria-expanded="false"
          aria-label="부서 선택 드롭다운">
          <span class="dropdown_value" data-placeholder="선택하세요">선택하세요</span>
        </button>
  
        <ul class="dropdown_list" role="listbox" tabindex="-1">
          <li role="option" class="dropdown_option" data-value="dev">개발팀</li>
          <li role="option" class="dropdown_option" data-value="design">디자인팀</li>
          <li role="option" class="dropdown_option" data-value="sales">영업팀</li>
        </ul>
  
        <input type="hidden" name="department" value="">
      </div>
    </div>
  </div>

  <!-- checkbox -->
  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">Checkbox</h3>
    </div>
    <p class="field-title">체크박스(텍스트없음)</p>
    <div class="control checkbox">
      <input type="checkbox" id="cb0">
      <label for="cb0"></label>
    </div>
    <div class="mt40">
      <p class="field-title">체크박스(텍스트포함)</p>
      <div class="control checkbox">
        <input type="checkbox" id="cb1">
        <label for="cb1">이용약관 동의</label>
      </div>
    </div>
    <div class="mt40">
      <p class="field-title">체크박스(disabled)</p>
      <div class="control checkbox disabled">
        <input type="checkbox" id="cb2" disabled>
        <label for="cb2">뉴스레터 수신</label>
      </div>
    </div>
    <div class="mt40">
      <p class="field-title">체크박스 그룹 (vertical)</p>
      <fieldset class="control-group checkbox-group vertical">
        <legend class="field-title">관심 분야</legend>

        <div class="control checkbox">
          <input type="checkbox" id="chk-dev-v" name="interest-vertical" value="dev">
          <label for="chk-dev-v">개발</label>
        </div>

        <div class="control checkbox">
          <input type="checkbox" id="chk-design-v" name="interest-vertical" value="design">
          <label for="chk-design-v">디자인</label>
        </div>

        <div class="control checkbox">
          <input type="checkbox" id="chk-sales-v" name="interest-vertical" value="sales">
          <label for="chk-sales-v">영업</label>
        </div>

        <div class="control checkbox disabled">
          <input type="checkbox" id="chk-marketing-v" name="interest-vertical" value="marketing" disabled>
          <label for="chk-marketing-v">마케팅 (비활성화)</label>
        </div>
      </fieldset>
    </div>
    <div class="mt40">
      <p class="field-title">체크박스 그룹 (horizontal)</p>
      <fieldset class="control-group checkbox-group horizontal">
        <legend class="field-title">관심 분야</legend>

        <div class="control checkbox">
          <input type="checkbox" id="chk-dev-h" name="interest-horizontal" value="dev">
          <label for="chk-dev-h">개발</label>
        </div>

        <div class="control checkbox">
          <input type="checkbox" id="chk-design-h" name="interest-horizontal" value="design">
          <label for="chk-design-h">디자인</label>
        </div>

        <div class="control checkbox">
          <input type="checkbox" id="chk-sales-h" name="interest-horizontal" value="sales">
          <label for="chk-sales-h">영업</label>
        </div>

        <div class="control checkbox disabled">
          <input type="checkbox" id="chk-marketing-h" name="interest-horizontal" value="marketing" disabled>
          <label for="chk-marketing-h">마케팅 (비활성화)</label>
        </div>
      </fieldset>
    </div>
  </div>

  <!-- radio -->
  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">Radio</h3>
    </div>
    <p class="field-title">라디오(텍스트 앖음)</p>
    <div class="control radio">
      <input type="radio" id="r0" name="sample-empty" aria-label="선택">
      <label for="r0"></label>
    </div>

    <div class="mt40">
      <p class="field-title">라디오(텍스트 포함)</p>
      <div class="control radio">
        <input type="radio" id="r1" name="grade" value="A">
        <label for="r1">A등급</label>
      </div>
      <div class="control radio">
        <input type="radio" id="r2" name="grade" value="B">
        <label for="r2">B등급</label>
      </div>
    </div>

    <div class="mt40">
      <p class="field-title">라디오(disabled)</p>
      <div class="control radio disabled">
        <input type="radio" id="r3" name="grade-disabled" value="A" disabled>
        <label for="r3">A등급 (비활성)</label>
      </div>
      <div class="control radio disabled">
        <input type="radio" id="r4" name="grade-disabled" value="B" disabled>
        <label for="r4">B등급 (비활성)</label>
      </div>
    </div>

    <div class="mt40">
      <p class="field-title">라디오 그룹 (vertical)</p>
      <fieldset class="control-group radio-group vertical">
        <legend class="field-title">결제 수단</legend>

        <div class="control radio">
          <input type="radio" id="pay-card-v" name="pay-vertical" value="card">
          <label for="pay-card-v">카드</label>
        </div>

        <div class="control radio">
          <input type="radio" id="pay-bank-v" name="pay-vertical" value="bank">
          <label for="pay-bank-v">계좌이체</label>
        </div>

        <div class="control radio">
          <input type="radio" id="pay-cash-v" name="pay-vertical" value="cash">
          <label for="pay-cash-v">현금</label>
        </div>

        <div class="control radio disabled">
          <input type="radio" id="pay-virtual-v" name="pay-vertical" value="virtual" disabled>
          <label for="pay-virtual-v">가상계좌 (비활성)</label>
        </div>
      </fieldset>
    </div>

    <div class="mt40">
      <p class="field-title">라디오 그룹 (horizontal)</p>
      <fieldset class="control-group radio-group horizontal">
        <legend class="field-title">결제 수단</legend>

        <div class="control radio">
          <input type="radio" id="pay-card-h" name="pay-horizontal" value="card">
          <label for="pay-card-h">카드</label>
        </div>

        <div class="control radio">
          <input type="radio" id="pay-bank-h" name="pay-horizontal" value="bank">
          <label for="pay-bank-h">계좌이체</label>
        </div>

        <div class="control radio">
          <input type="radio" id="pay-cash-h" name="pay-horizontal" value="cash">
          <label for="pay-cash-h">현금</label>
        </div>

        <div class="control radio disabled">
          <input type="radio" id="pay-virtual-h" name="pay-horizontal" value="virtual" disabled>
          <label for="pay-virtual-h">가상계좌 (비활성)</label>
        </div>
      </fieldset>
    </div>
  </div>

  <!-- switch -->
  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">Switch</h3>
    </div>
    <!-- On -->
    <p class="field-title">switch(on)</p>
    <div class="control switch">
      <input type="checkbox" id="sw-on" role="switch" aria-checked="true" checked>
      <label for="sw-on"></label>
    </div>

    <!-- Off -->
    <p class="field-title">switch(off)</p>
    <div class="control switch">
      <input type="checkbox" id="sw-off" role="switch" aria-checked="false">
      <label for="sw-off"></label>
    </div>

    <!-- Disabled -->
    <p class="field-title">switch(disabled)</p>
    <div class="control switch disabled">
      <input type="checkbox" id="sw-disabled" role="switch" aria-checked="false" disabled>
      <label for="sw-disabled"></label>
    </div>
  </div>

  <!-- table -->
  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">Table(일반 가로형)</h3>
    </div>
    <div class="table-wrap">
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
          <!-- ... -->
        </tbody>
      </table>
    </div>
  </div>

  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">Table(일반 가로형 스크롤)</h3>
    </div>
    <div class="table-wrap">
      <table class="table">
        <caption class="blind">사업 목록 테이블</caption>
        <colgroup>
          <!-- 필요한 부분에 width 지정 -->
          <col style="width: 60px;">
          <col style="width: 200px;">
          <col style="width: 200px;">
          <col style="width: 200px;">
          <col style="width: 200px;">
          <col style="width: 200px;">
          <col style="width: 200px;">
          <col style="width: 200px;">
          <col style="width: 200px;">
          <col style="width: 80px;">
        </colgroup>
        <thead>
          <tr>
            <th scope="col">No</th>
            <th scope="col">카테고리</th>
            <th scope="col">사업명</th>
            <th scope="col">사업시작일</th>
            <th scope="col">사업종료일</th>
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
  </div>

  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">Table (세로형)</h3>
    </div>
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
            <th scope="row">No</th>
            <td>203</td>
          </tr>
          <tr>
            <th scope="row">카테고리</th>
            <td>안전한 우리집</td>
          </tr>
          <tr>
            <th scope="row">사업명</th>
            <td>안전한 우리집 (안전한 가정환경)</td>
          </tr>
          <tr>
            <th scope="row">부서명</th>
            <td>안전기획팀</td>
          </tr>
          <tr>
            <th scope="row">사업시작일</th>
            <td>2025-01-10</td>
          </tr>
          <tr>
            <th scope="row">사업종료일</th>
            <td>2025-12-31</td>
          </tr>
          <tr>
            <th scope="row">진행상황</th>
            <td>진행중</td>
          </tr>
          <tr>
            <th scope="row">Y/N</th>
            <td>Y</td>
          </tr>
          <tr>
            <th scope="row">파일첨부</th>
            <td>
              <div class="dz-head">
                <button type="button" class="btn btn-dark-line" id="btnPick">파일 선택</button>
                <span class="dz-guide">이 영역에 드래그&드롭하거나 버튼으로 선택하세요.</span>
              </div>
              <!-- 드롭존 영역 -->
              <div id="dropzone" class="dropzone mt20" tabindex="0" aria-label="파일 첨부 영역">
                <ul id="fileList" class="file-list"></ul>
              </div>
              <input id="fileInput" name="files" type="file" class="sr-only" multiple>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>

  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">Table(일반 폼)</h3>
    </div>
    <div class="table-wrap">
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
            <th scope="col">
              <div class="control checkbox">
                <input type="checkbox" id="tb-all">
                <label for="tb-all"></label>
              </div>
            </th>
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
            <td>
              <div class="control checkbox">
                <input type="checkbox" id="tb-1">
                <label for="tb-1"></label>
              </div>
            </td>
            <td>카테고리</td>
            <td>안전한 우리집 (안전한 가정환경)</td>
            <td>2025-01-10</td>
            <td>2025-12-31</td>
            <td>진행상황</td>
            <td>Y</td>
          </tr>
          <tr>
            <td>
              <div class="control checkbox">
                <input type="checkbox" id="tb-2">
                <label for="tb-2"></label>
              </div>
            </td>
            <td>카테고리</td>
            <td>안전한 우리집 (안전한 가정환경)</td>
            <td>2025-01-10</td>
            <td>2025-12-31</td>
            <td>진행상황</td>
            <td>Y</td>
          </tr>
          <tr>
            <td>
              <div class="control checkbox">
                <input type="checkbox" id="tb-3">
                <label for="tb-3"></label>
              </div>
            </td>
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
  </div>

  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">Table(세로형 폼)</h3>
    </div>
    <div class="table-wrap">
      <table class="table table-vertical">
        <caption class="blind">사업 상세 정보</caption>
        <colgroup>
          <col style="width: 160px;">
          <col>
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">No</th>
            <td>
              <div style="width: 250px">
                <input type="text" class="text-field" value="203">
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row">카테고리</th>
            <td>
              <div style="width: 250px">
                <input type="text" class="text-field" value="안전한 우리집">
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row">사업명</th>
            <td>
              <div style="width: 250px">
                <input type="text" class="text-field" value="안전한 우리집 (안전한 가정환경)">
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row">부서명</th>
            <td>
              <div style="width: 250px">
                <input type="text" class="text-field" value="안전기획팀">
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row">datepicker 신규</th>
            <td>
              <div class="flex align-center col-2">
                <div class="text-field datepicker" style="width: 200px">
                  <label for="startDatenew2" class="sr-only">시작일</label>
                  <input
                    id="startDatenew2"
                    type="text"
                    class="dp-input"
                    placeholder="YYYY-MM-DD"
                    inputmode="numeric"
                    pattern="\d{4}-\d{2}-\d{2}"
                    autocomplete="off"
                    data-role="start"
                    data-dp-group="booking"
                    aria-describedby="startDateHelp2"
                  />
                  <button
                    type="button"
                    class="dp-btn"
                    data-dp-toggle
                    aria-label="달력 열기"
                    aria-haspopup="dialog"
                    aria-expanded="false"
                    aria-controls="dp-pop"
                  ></button>
                  <span id="startDateHelp2" class="sr-only">형식: YYYY-MM-DD. 예: 2025-10-12</span>
                </div>
                <span>~</span>
                <div class="text-field datepicker" style="width: 200px">
                  <label for="startDatenew3" class="sr-only">시작일</label>
                  <input
                    id="startDatenew3"
                    type="text"
                    class="dp-input"
                    placeholder="YYYY-MM-DD"
                    inputmode="numeric"
                    pattern="\d{4}-\d{2}-\d{2}"
                    autocomplete="off"
                    data-role="start"
                    data-dp-group="booking"
                    aria-describedby="startDateHelp3"
                  />
                  <button
                    type="button"
                    class="dp-btn"
                    data-dp-toggle
                    aria-label="달력 열기"
                    aria-haspopup="dialog"
                    aria-expanded="false"
                    aria-controls="dp-pop"
                  ></button>
                  <span id="startDateHelp3" class="sr-only">형식: YYYY-MM-DD. 예: 2025-10-12</span>
                </div>
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row">사업종료일</th>
            <td>
              <div class="flex align-center col-2">
              <div class="text-field datepicker" style="width: 200px">
                <label for="startDatenew" class="sr-only">시작일</label>
                <input
                  id="startDatenew"
                  type="text"
                  class="dp-input"
                  placeholder="YYYY-MM-DD"
                  inputmode="numeric"
                  pattern="\d{4}-\d{2}-\d{2}"
                  autocomplete="off"
                  data-role="start"
                  data-dp-group="booking"
                  aria-describedby="startDateHelp"
                />
                <button
                  type="button"
                  class="dp-btn"
                  data-dp-toggle
                  aria-label="달력 열기"
                  aria-haspopup="dialog"
                  aria-expanded="false"
                  aria-controls="dp-pop"
                ></button>
                <span id="startDateHelp" class="sr-only">형식: YYYY-MM-DD. 예: 2025-10-12</span>
              </div>
              </div>
            </td>
          </tr>

          <tr>
            <th scope="row">사업시작일</th>
            <td>
              <div class="date-field" style="width: 200px">
                <input type="text" id="startDate" class="text-field date-text" value="2025-01-10">
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row">사업종료일</th>
            <td>
              <div class="date-field" style="width: 200px">
                <input type="text" id="endDate" class="text-field date-text" value="2025-01-10">
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row">사업종료일</th>
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
          </tr>
          <tr>
            <th scope="row">진행상황</th>
            <td>
              <div style="width: 250px">
                <div class="dropdown" data-name="status">
                  <button type="button"
                    class="dropdown_button"
                    aria-haspopup="listbox"
                    aria-expanded="false"
                    aria-label="진행상황 선택">
                    <span class="dropdown_value" data-placeholder="선택하세요">진행중</span>
                  </button>
                  <ul class="dropdown_list" role="listbox" tabindex="-1">
                    <li role="option" class="dropdown_option" data-value="진행중" aria-selected="true">진행중</li>
                    <li role="option" class="dropdown_option" data-value="완료">완료</li>
                    <li role="option" class="dropdown_option" data-value="보류">보류</li>
                  </ul>
                  <input type="hidden" name="status" value="진행중">
                </div>
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row">Y/N</th>
            <td>
              <div class="control checkbox">
                <input type="checkbox" id="detail-yn" checked>
                <label for="detail-yn">예</label>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>

  <!-- list -->
  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">List</h3>
    </div>
    <div class="list-box">
      <div class="list-head">
        <div>No</div>
        <div>카테고리</div>
        <div>사업명</div>
        <div>사업시작일</div>
        <div>사업종료일</div>
        <div>진행상황</div>
        <div>Y/N</div>
      </div>
      <div class="list-body">
        <div class="list-tr">
          <div>No</div>
          <div>카테고리</div>
          <div>사업명</div>
          <div>사업시작일</div>
          <div>사업종료일</div>
          <div>진행상황</div>
          <div>Y/N</div>
        </div>
        <div class="list-tr">
          <div>No</div>
          <div>카테고리</div>
          <div>사업명</div>
          <div>사업시작일</div>
          <div>사업종료일</div>
          <div>진행상황</div>
          <div>Y/N</div>
        </div>
        <div class="list-tr">
          <div>No</div>
          <div>카테고리</div>
          <div>사업명</div>
          <div>사업시작일</div>
          <div>사업종료일</div>
          <div>진행상황</div>
          <div>Y/N</div>
        </div>
      </div>
    </div>
  </div>

  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">List(link)</h3>
    </div>
    <div class="list-box">
      <div class="list-head">
        <div class="num">No</div>
        <div class="title">제목</div>
        <div class="date">날자</div>
      </div>
      <div class="list-body">
        <a href="" class="list-tr">
          <div class="num">No</div>
          <div class="title">교통복지 카드에 대한 지차체별 할인혜택 가이드</div>
          <div class="date">2025-07-10</div>
        </a>
        <a href="" class="list-tr">
          <div class="num">No</div>
          <div class="title">교통복지 카드에 대한 지차체별 할인혜택 가이드</div>
          <div class="date">2025-07-10</div>
        </a>
        <a href="" class="list-tr">
          <div class="num">No</div>
          <div class="title">교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드교통복지 카드에 대한 지차체별 할인혜택 가이드</div>
          <div class="date">2025-07-10</div>
        </a>
      </div>
    </div>
  </div>

  <!-- pagination -->
  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">Pagination</h3>
    </div>
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

  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">Pagination(disabled)</h3>
    </div>
    <div class="pagination" role="navigation" aria-label="목록 페이지 이동">
      <button type="button" class="pager-btn prev" disabled aria-label="이전 페이지">Prev</button>

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

  <!-- modal -->
  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">Modal</h3>
    </div>
    <div class="flex">
      <!-- 트리거 버튼 -->
      <button type="button" class="btn btn-dark-line open-modal" data-target="#modal-basic">Open modal</button>

      <!-- 모달 -->
      <div id="modal-basic" class="modal" role="dialog" aria-modal="true" aria-hidden="true" aria-labelledby="modal-title-basic">
        <div class="modal-overlay" data-dismiss></div>

        <div class="modal-container" role="document" tabindex="-1">
          <header class="modal-header">
            <h3 id="modal-title-basic" class="modal-title">모달 타이틀</h3>
            <button type="button" class="modal-close" aria-label="닫기" data-dismiss></button>
          </header>

          <div class="modal-body">
            모달 내용 영역입니다. 폼·테이블·문구 등을 배치하세요.
          </div>

          <footer class="modal-footer">
            <button type="button" class="btn btn-dark-line" data-dismiss>취소</button>
            <button type="button" class="btn btn-blue">확인</button>
          </footer>
        </div>
      </div>
    </div>
  </div>

  <!-- tabs -->
  <div class="spacer"></div>
  <div class="section-content">
    <div class="title-wrap">
      <h3 class="section-title">Tabs</h3>
    </div>
    <div class="tabs" role="tablist">
      <button class="tab is-active" role="tab" aria-selected="true" aria-controls="panel-1" id="tab-1">탭1</button>
      <button class="tab" role="tab" aria-selected="false" aria-controls="panel-2" id="tab-2">탭2</button>
      <button class="tab" role="tab" aria-selected="false" aria-controls="panel-3" id="tab-3">탭3</button>
    </div>

    <div class="tab-panels">
      <div class="tab-panel is-active" role="tabpanel" id="panel-1" aria-labelledby="tab-1">
        탭1 내용입니다.
      </div>
      <div class="tab-panel" role="tabpanel" id="panel-2" aria-labelledby="tab-2">
        탭2 내용입니다.
      </div>
      <div class="tab-panel" role="tabpanel" id="panel-3" aria-labelledby="tab-3">
        탭3 내용입니다.
      </div>
    </div>
  </div>
</section>

<script>
  $(function() {
    $("#startDate, #endDate, #startDate1, #endDate1").datepicker({
      dateFormat: "yy-mm-dd", // JSP 서버와 맞춤
      changeMonth: true,
      changeYear: true
    });
  });
</script>
<%@ include file="../../components/commonFooter.jsp" %>