<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="../../components/commonHead.jsp" %>
<link rel="stylesheet" href="../../assets/scss/page/page.css" />

<section class="section">
  <div class="menubox-wrap">
    <div class="section-header menu">
      <div class="flex justify-space-between">
        <div class="title-wrap">
          <h3 class="section-title">메뉴관리</h3>
        </div>
      </div>
      <div class="menu-bar">
        <ul>
          <li>
            <div class="depth1">
              회원관리1 
              <div class="box">
                <button type="button" class="btn btn-icon-only">
                  <i class="icon icon-minus"></i>
                </button>
                <button type="button" class="btn btn-icon-only open-modal" data-target="#modal-basic1">
                  <i class="icon icon-plus"></i>
                </button>
              </div>
            </div>
            <ul class="depth2">
              <li class="depth2-item">
                <div>
                  회원정보관리1 
                  <div class="box">
                    <button type="button" class="btn btn-icon-only">
                      <i class="icon icon-minus"></i>
                    </button>
                    <button type="button" class="btn btn-icon-only open-modal" data-target="#modal-basic1">
                      <i class="icon icon-plus"></i>
                    </button>
                  </div>
                </div>
                <ul class="depth3">
                  <li class="depth3-item">
                    <div>
                      회원정보내역조회
                      <div class="box">
                        <button type="button" class="btn btn-icon-only">
                          <i class="icon icon-minus"></i>
                        </button>
                        <button type="button" class="btn btn-icon-only open-modal" data-target="#modal-basic1">
                          <i class="icon icon-plus"></i>
                        </button>
                      </div>
                    </div>
                    <div>회원정보상세관리</div>
                    <div>카드변경이력조회</div>
                    <div>계좌번경이력조회</div>
                  </li>
                </ul>
              </li>
              <li class="depth2-item">
                <div>회원정보관리2</div>
                <ul class="depth3">
                  <li class="depth3-item">
                    <div>회원정보내역조회</div>
                    <div>회원정보상세관리</div>
                    <div>카드변경이력조회</div>
                    <div>계좌번경이력조회</div>
                  </li>
                </ul>
              </li>
              <li class="depth2-item">
                <div>회원정보관리3</div>
                <ul class="depth3">
                  <li class="depth3-item">
                    <div>회원정보내역조회</div>
                    <div>회원정보상세관리</div>
                    <div>카드변경이력조회</div>
                    <div>계좌번경이력조회</div>
                  </li>
                </ul>
              </li>
              <li class="depth2-item">
                <div>회원정보관리4</div>
                <ul class="depth3">
                  <li class="depth3-item">
                    <div>회원정보내역조회</div>
                    <div>회원정보상세관리</div>
                    <div>카드변경이력조회</div>
                    <div>계좌번경이력조회</div>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
          <li>
            <div class="depth1">회원관리2</div>
            <ul class="depth2">
              <li class="depth2-item">
                <div>회원정보관리1</div>
                <ul class="depth3">
                  <li class="depth3-item">
                    <div>회원정보내역조회</div>
                    <div>회원정보상세관리</div>
                    <div>카드변경이력조회</div>
                    <div>계좌번경이력조회</div>
                  </li>
                </ul>
              </li>
              <li class="depth2-item">
                <div>회원정보관리2</div>
                <ul class="depth3">
                  <li class="depth3-item">
                    <div>회원정보내역조회</div>
                    <div>회원정보상세관리</div>
                    <div>카드변경이력조회</div>
                    <div>계좌번경이력조회</div>
                  </li>
                </ul>
              </li>
              <li class="depth2-item">
                <div>회원정보관리3</div>
                <ul class="depth3">
                  <li class="depth3-item">
                    <div>회원정보내역조회</div>
                    <div>회원정보상세관리</div>
                    <div>카드변경이력조회</div>
                    <div>계좌번경이력조회</div>
                  </li>
                </ul>
              </li>
              <li class="depth2-item">
                <div>회원정보관리4</div>
                <ul class="depth3">
                  <li class="depth3-item">
                    <div>회원정보내역조회</div>
                    <div>회원정보상세관리</div>
                    <div>카드변경이력조회</div>
                    <div>계좌번경이력조회</div>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
      </div>

    </div>
    <div class="section-header">
      <div class="flex align-center gap8">
        <div class="title-wrap">
          <h3 class="section-title">상세메뉴 정보</h3>
        </div>
        <div class="breadcrumb">
          <div class="badge">회원관리1</div>
          <div class="badge">회원정보관리3</div>
          <div class="badge">회원정보내역조회</div>
        </div>
      </div>
      <div>
        <div class="box-wrap">
          <div class="box col2">
            <p class="field-title">메뉴 ID</p>
            <input type="text" class="text-field" placeholder="메뉴ID 입력">
          </div>
          <div class="box col2">
            <p class="field-title">상위메뉴 ID</p>
            <input type="text" class="text-field" placeholder="상위메뉴 ID 입력">
          </div>
        </div>
        <div class="box-wrap">
          <div class="box col2">
            <p class="field-title">메뉴명 <span class="color-red">*</span></p>
            <input type="text" class="text-field" placeholder="메뉴명 입력">
          </div>
          <div class="box col2">
            <p class="field-title">메뉴구분</p>
            <input type="text" class="text-field" placeholder="(메뉴 or 화면)">
          </div>
        </div>
        <div class="box-wrap">
          <div class="box col2">
            <p class="field-title">메뉴레벨 <span class="color-red">*</span></p>
            <div class="dropdown" data-name="department">
              <button type="button"
                class="dropdown_button"
                aria-haspopup="listbox"
                aria-expanded="false"
                aria-label="메뉴레벨 선택 드롭다운">
                <span class="dropdown_value" data-placeholder="선택하세요">선택하세요</span>
              </button>
        
              <ul class="dropdown_list" role="listbox" tabindex="-1">
                <li role="option" class="dropdown_option" data-value="1 Depth">1 Depth</li>
                <li role="option" class="dropdown_option" data-value="2 Depth">2 Depth</li>
                <li role="option" class="dropdown_option" data-value="3 Depth">3 Depth</li>
              </ul>
        
              <input type="hidden" name="department" value="">
            </div>
          </div>
          <div class="box col2">
            <p class="field-title">정렬순서 <span class="color-red">*</span></p>
            <input type="text" class="text-field" placeholder="(메뉴 or 화면)">
          </div>
        </div>
        <div class="box-wrap">
          <div class="box col4">
            <p class="field-title">사용여부 <span class="color-red">*</span></p>
            <div class="control switch">
              <input type="checkbox" id="sw-on" role="switch" aria-checked="true" checked>
              <label for="sw-on"></label>
            </div>
          </div>
        </div>
        <div class="box-wrap">
          <div class="box col4">
            <p class="field-title">URL</p>
            <input type="text" class="text-field" placeholder="URL 입력">
          </div>
        </div>
        <div class="box-wrap">
          <div class="box col4">
            <p class="field-title">메뉴 설명</p>
            <input type="text" class="text-field" placeholder="메뉴 설명">
          </div>
        </div>
      </div>
      <div class="btn-wrap">
        <button type="button" class="btn btn-red">삭제</button>
        <button type="button" class="btn btn-blue">저장</button>
      </div>
    </div>
  </div>
</section>

<!-- modal -->
<div id="modal-basic1" class="modal" role="dialog" aria-modal="true" aria-hidden="true" aria-labelledby="modal-title-basic">
  <div class="modal-overlay" data-dismiss></div>

  <div class="modal-container" role="document" tabindex="-1">
    <header class="modal-header">
      <h3 id="modal-title-basic" class="modal-title">상세메뉴 정보</h3>
      <button type="button" class="modal-close" aria-label="닫기" data-dismiss></button>
    </header>

    <div class="modal-body">
      <div class="box-wrap">
        <div class="box col2">
          <p class="field-title">메뉴 ID</p>
          <input type="text" class="text-field" placeholder="메뉴ID 입력">
        </div>
        <div class="box col2">
          <p class="field-title">상위메뉴 ID</p>
          <input type="text" class="text-field" placeholder="상위메뉴 ID 입력">
        </div>
      </div>
      <div class="box-wrap">
        <div class="box col2">
          <p class="field-title">메뉴명 <span class="color-red">*</span></p>
          <input type="text" class="text-field" placeholder="메뉴명 입력">
        </div>
        <div class="box col2">
          <p class="field-title">메뉴구분</p>
          <input type="text" class="text-field" placeholder="(메뉴 or 화면)">
        </div>
      </div>
      <div class="box-wrap">
        <div class="box col2">
          <p class="field-title">메뉴레벨</p>
          <div class="dropdown" data-name="department">
            <button type="button"
              class="dropdown_button"
              aria-haspopup="listbox"
              aria-expanded="false"
              aria-label="메뉴레벨 선택 드롭다운">
              <span class="dropdown_value" data-placeholder="선택하세요">선택하세요</span>
            </button>
      
            <ul class="dropdown_list" role="listbox" tabindex="-1">
              <li role="option" class="dropdown_option" data-value="1 Depth">1 Depth</li>
              <li role="option" class="dropdown_option" data-value="2 Depth">2 Depth</li>
              <li role="option" class="dropdown_option" data-value="3 Depth">3 Depth</li>
            </ul>
      
            <input type="hidden" name="department" value="">
          </div>
        </div>
        <div class="box col2">
          <p class="field-title">정렬순서 <span class="color-red">*</span></p>
          <input type="text" class="text-field" placeholder="(메뉴 or 화면)">
        </div>
      </div>
      <div class="box-wrap">
        <div class="box col4">
          <p class="field-title">사용여부 <span class="color-red">*</span></p>
          <div class="control switch">
            <input type="checkbox" id="sw-on" role="switch" aria-checked="true" checked>
            <label for="sw-on"></label>
          </div>
        </div>
      </div>
      <div class="box-wrap">
        <div class="box col4">
          <p class="field-title">URL</p>
          <input type="text" class="text-field" placeholder="URL 입력">
        </div>
      </div>
      <div class="box-wrap">
        <div class="box col4">
          <p class="field-title">메뉴 설명</p>
          <input type="text" class="text-field" placeholder="메뉴 설명">
        </div>
      </div>
    </div>

    <footer class="modal-footer">
      <button type="button" class="btn btn-red">삭제</button>
      <button type="button" class="btn btn-dark-line" data-dismiss>취소</button>
      <button type="button" class="btn btn-blue">저장</button>
    </footer>
  </div>
</div>

<script>
/* =========================
 * LNB(메뉴바) – Vanilla JS (Accordion All Levels / DIV version)
 * 요구사항:
 * 1) 1·2뎁스 모두 닫기 가능 (토글)
 * 2) 같은 뎁스에서는 1개만 열림
 * 3) 3뎁스가 있으면 3뎁스까지 펼치고 aria-expanded=true
 * ========================= */
(function () {
  const SPEED = 220;
  const root = document.querySelector('.menu-bar');
  if (!root) return;

  /* ---------- 유틸 ---------- */
  function isVisible(el){ return el && el.offsetParent !== null; }
  function slideUp(el, duration = SPEED) {
    if (!el) return;
    el.style.height = el.offsetHeight + 'px';
    el.style.transitionProperty = 'height, margin, padding';
    el.style.transitionDuration = duration + 'ms';
    el.offsetHeight;
    el.style.overflow = 'hidden';
    el.style.height = 0;
    el.style.paddingTop = 0;
    el.style.paddingBottom = 0;
    el.style.marginTop = 0;
    el.style.marginBottom = 0;
    window.setTimeout(() => {
      el.style.display = 'none';
      el.style.removeProperty('height');
      el.style.removeProperty('padding-top');
      el.style.removeProperty('padding-bottom');
      el.style.removeProperty('margin-top');
      el.style.removeProperty('margin-bottom');
      el.style.removeProperty('overflow');
      el.style.removeProperty('transition-duration');
      el.style.removeProperty('transition-property');
    }, duration);
  }
  function slideDown(el, duration = SPEED) {
    if (!el) return;
    el.style.removeProperty('display');
    let display = window.getComputedStyle(el).display;
    if (display === 'none') display = 'block';
    el.style.display = display;
    const height = el.scrollHeight;
    el.style.overflow = 'hidden';
    el.style.height = 0;
    el.style.paddingTop = 0;
    el.style.paddingBottom = 0;
    el.style.marginTop = 0;
    el.style.marginBottom = 0;
    el.offsetHeight;
    el.style.transitionProperty = 'height, margin, padding';
    el.style.transitionDuration = duration + 'ms';
    el.style.height = height + 'px';
    window.setTimeout(() => {
      el.style.removeProperty('height');
      el.style.removeProperty('overflow');
      el.style.removeProperty('transition-duration');
      el.style.removeProperty('transition-property');
      el.style.removeProperty('padding-top');
      el.style.removeProperty('padding-bottom');
      el.style.removeProperty('margin-top');
      el.style.removeProperty('margin-bottom');
    }, duration);
  }

  // 구조 헬퍼
  function d2(li1) {
    return li1.querySelector(':scope > ul.depth2');
  }
  function d3(triggerDiv)  {
    const n = triggerDiv.nextElementSibling;
    return n && n.matches('ul.depth3') ? n : null;
  }
  function getKey(el){
    // 상태복원/활성화 식별용
    return (el.dataset && el.dataset.menuId) ? el.dataset.menuId : (el.textContent || '').trim();
  }

  // 3뎁스 단일 활성
  function setActive3(div3) {
    const scope = div3.closest('ul.depth3');
    if (!scope) return;
    scope.querySelectorAll('li > div.is-active').forEach(el=>{
      el.classList.remove('is-active');
      el.removeAttribute('aria-current');
    });
    div3.classList.add('is-active');
    div3.setAttribute('aria-current', 'page');
  }

  /* ---------- 같은 뎁스 단일열림 ---------- */
  function closeSiblingsLevel1(exceptLi1){
    root.querySelectorAll(':scope > ul > li').forEach(li=>{
      if (li === exceptLi1) return;
      li.classList.remove('active');
      const a1 = li.querySelector(':scope > .depth1');
      if (a1) a1.setAttribute('aria-expanded','false');
      const ul2 = d2(li);
      if (ul2 && isVisible(ul2)) slideUp(ul2, SPEED);

      // 열려있던 2뎁스/3뎁스 모두 정리
      li.querySelectorAll('.depth2 > .depth2-item > div[aria-expanded="true"]').forEach(div2=>{
        div2.setAttribute('aria-expanded','false');
      });
      li.querySelectorAll('.depth2 > .depth2-item > ul.depth3').forEach(ul=>{
        ul.setAttribute('aria-hidden','true');
        if (isVisible(ul)) slideUp(ul, SPEED);
      });
    });
  }
  function closeSiblingLevel2Buttons(scopeUlDepth2, exceptDiv2){
    if (!scopeUlDepth2) return;
    scopeUlDepth2.querySelectorAll(':scope > .depth2-item > div[aria-expanded="true"]').forEach(openDiv=>{
      if (openDiv === exceptDiv2) return;
      openDiv.setAttribute('aria-expanded','false');
      const p = d3(openDiv);
      if (p) {
        p.setAttribute('aria-hidden','true');
        if (isVisible(p)) slideUp(p, SPEED);
      }
    });
  }

  /* ---------- 초기화 ---------- */
  function init() {
    // 1뎁스 트리거: div.depth1
    root.querySelectorAll(':scope > ul > li').forEach(li1=>{
      const open = li1.classList.contains('active');
      const a1 = li1.querySelector(':scope > .depth1');
      if (a1) {
        a1.setAttribute('role','button');
        a1.setAttribute('tabindex','0');
        a1.setAttribute('aria-expanded', open ? 'true' : 'false');
      }
      const ul2 = d2(li1);
      if (ul2) ul2.style.display = open ? 'block' : 'none';

      // 2뎁스 트리거: 각 .depth2-item의 첫 번째 div
      li1.querySelectorAll('.depth2 > .depth2-item').forEach(item=>{
        const trigger = item.querySelector(':scope > div:first-of-type');
        const panel = item.querySelector(':scope > ul.depth3');
        if (trigger) {
          trigger.setAttribute('role','button');
          trigger.setAttribute('tabindex','0');
          trigger.setAttribute('aria-expanded','false');
        }
        if (panel) {
          panel.style.display = 'none';
          panel.setAttribute('aria-hidden','true');
        }
      });

      // 3뎁스 항목들
      li1.querySelectorAll('ul.depth3 > li > div').forEach(div=>{
        div.setAttribute('role','menuitem');
        div.setAttribute('tabindex','0');
      });
    });
  }

  /* ---------- 클릭 ---------- */
  function onClick(e) {
    const t = e.target.closest('div');
    if (!t || !root.contains(t)) return;

    // 1뎁스
    if (t.matches('.depth1')) {
      const a1  = t;
      const li1 = a1.closest('li');
      const ul2 = d2(li1);
      const isOpen = a1.getAttribute('aria-expanded') === 'true';

      if (isOpen) {
        // 닫기
        li1.classList.remove('active');
        a1.setAttribute('aria-expanded','false');
        if (ul2 && isVisible(ul2)) slideUp(ul2, SPEED);
      } else {
        // 열기 (동레벨 단일)
        closeSiblingsLevel1(li1);
        li1.classList.add('active');
        a1.setAttribute('aria-expanded','true');
        if (ul2) slideDown(ul2, SPEED);
      }
      return;
    }

    // 2뎁스 (각 depth2-item의 첫 div)
    if (t.matches('.depth2 > .depth2-item > div:first-of-type')) {
      const a2    = t;
      const panel = d3(a2);
      const hasD3 = !!(panel && panel.children.length > 0);
      const scope = a2.closest('ul.depth2');
      const isOpen = a2.getAttribute('aria-expanded') === 'true';

      // 같은 2뎁스 내 1개만 열림
      closeSiblingLevel2Buttons(scope, a2);

      if (isOpen) {
        // 닫기
        a2.setAttribute('aria-expanded','false');
        if (panel && isVisible(panel)) slideUp(panel, SPEED);
        if (panel) panel.setAttribute('aria-hidden','true');
      } else {
        // 열기
        a2.setAttribute('aria-expanded','true');
        if (panel && hasD3) {
          panel.setAttribute('aria-hidden','false');
          slideDown(panel, SPEED);
        }
      }
      return;
    }

    // 3뎁스
    if (t.matches('ul.depth3 > li > div')) {
      const a3 = t;
      setActive3(a3); // 단일 활성

      // 상태 저장(데이터 속성 있으면 우선)
      const key3 = a3.dataset.menuId || getKey(a3);
      try { localStorage.setItem('lnbActive', JSON.stringify({ level: 'd3', key: key3 })); } catch(_){}
      return;
    }
  }

  /* ---------- 키보드 접근성 ---------- */
  function onKeydown(e) {
    const t = e.target;
    if (!root.contains(t)) return;
    if (t.matches('.depth1, .depth2 > .depth2-item > div:first-of-type, ul.depth3 > li > div')) {
      if (e.key === ' ' || e.key === 'Enter') {
        e.preventDefault();
        t.click();
      }
    }
  }

  /* ---------- 상태 복원 ---------- */
  function markActiveAndExpand(el){
    if (!el) return;

    // 3뎁스 안이라면 2뎁스/1뎁스까지 펼침
    const d3c = el.closest('ul.depth3');
    if (d3c) {
      const a2 = d3c.previousElementSibling; // 2뎁스 트리거 div
      if (a2 && a2.matches('.depth2 > .depth2-item > div:first-of-type')) {
        closeSiblingLevel2Buttons(a2.closest('ul.depth2'), a2);
        a2.setAttribute('aria-expanded','true');
        d3c.setAttribute('aria-hidden','false');
        d3c.style.display = 'block';
      }
    }

    // 1뎁스 펼침
    let li1;
    if (el.classList.contains('depth1')) li1 = el.closest('li');
    else {
      const ul2 = el.closest('ul.depth2') || el.closest('ul.depth3')?.closest('ul.depth2');
      li1 = ul2 ? ul2.closest('li') : null;
    }
    if (li1) {
      closeSiblingsLevel1(li1);
      li1.classList.add('active');
      const a1 = li1.querySelector(':scope > .depth1');
      if (a1) a1.setAttribute('aria-expanded','true');
      const ul2 = d2(li1);
      if (ul2) ul2.style.display = 'block';
    }

    if (el.closest('ul.depth3')) setActive3(el);
    else {
      root.querySelectorAll('div.is-active').forEach(x=>x.classList.remove('is-active'));
      el.classList.add('is-active');
    }
  }

  function autoRestoreLNB() {
    let payload = null;
    try {
      payload = JSON.parse(localStorage.getItem('lnbActive') || 'null');
      localStorage.removeItem('lnbActive');
    } catch(_) {}

    const targetKey = (payload && payload.key) ? String(payload.key).trim() : '';

    let best = null;
    if (payload && payload.key) {
      // data-menu-id 우선
      best = root.querySelector('div[data-menu-id="'+ targetKey +'"]');
      if (!best) {
        // 텍스트 매칭(가장 긴 부분일치)
        const candidates = Array.from(root.querySelectorAll('ul.depth3 > li > div, .depth2 > .depth2-item > div:first-of-type, .depth1'));
        let bestLen = -1;
        candidates.forEach(el=>{
          const key = getKey(el);
          if (!key) return;
          if (targetKey === key || targetKey.indexOf(key) === 0 || key.indexOf(targetKey) === 0) {
            if (key.length > bestLen) { best = el; bestLen = key.length; }
          }
        });
      }
    }
    if (best) markActiveAndExpand(best);
  }

  /* ---------- 실행 ---------- */
  function bind() {
    document.addEventListener('click', onClick);
    document.addEventListener('keydown', onKeydown);
  }
  init();
  bind();
  autoRestoreLNB();
})();
</script>






<%@ include file="../../components/commonFooter.jsp" %>