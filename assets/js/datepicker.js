/* ========================================================================
 * datepick.js (Vanilla JS)
 * - yyyy-mm-dd 마스킹(입력/붙여넣기)
 * - 버튼([data-dp-toggle])으로만 팝업 열기/닫기
 * - 단일/범위 선택 지원(data-dp="range", data-role="start|end", data-dp-group)
 * - 팝업은 body 포털 + position:fixed, flipY/clamp 배치
 * - Alt+↓로 열기, ESC/바깥 클릭으로 닫기
 * - 키보드 내비(← → ↑ ↓ / PageUp / PageDown / Home / End / Enter/Space)
 * - 공개 API: window.DP.open(inputEl), window.DP.close()
 * ======================================================================== */
(function () {
  /* ---------- 유틸 ---------- */
  const pad = (n) => String(n).padStart(2, "0");
  const fmt = (d) => `${d.getFullYear()}-${pad(d.getMonth() + 1)}-${pad(d.getDate())}`;
  const parse = (s) => {
    const m = /^(\d{4})-(\d{2})-(\d{2})$/.exec((s || "").trim());
    if (!m) return null;
    const d = new Date(+m[1], +m[2] - 1, +m[3]);
    if (d.getFullYear() !== +m[1] || d.getMonth() !== +m[2] - 1 || d.getDate() !== +m[3]) return null;
    return d;
  };
  const sameDay = (a, b) =>
    !!a && !!b &&
    a.getFullYear() === b.getFullYear() &&
    a.getMonth() === b.getMonth() &&
    a.getDate() === b.getDate();
  const cmp = (a, b) => a.getTime() - b.getTime();
  const today = () => {
    const t = new Date();
    return new Date(t.getFullYear(), t.getMonth(), t.getDate());
  };

  /* ---------- 전역 상태 ---------- */
  let activeInput = null;            // 현재 연결된 input
  let activeField = null;            // 현재 활성 .text-field.datepicker
  let suppressOpenByPointer = false; // input 클릭으로 열림 방지
  let viewYM = (() => { const t = new Date(); return { y: t.getFullYear(), m: t.getMonth() }; })();
  const rangeStore = new Map();      // groupId -> {start:Date|null, end:Date|null}

  // 팝업(단일 인스턴스)
  const pop = window.__DP_POP__ || createPopupOnce();
  window.__DP_POP__ = pop;

  /* ---------- 팝업 생성 ---------- */
  function createPopupOnce() {
    const el = document.createElement("div");
    el.id = "dp-pop";
    el.className = "dp-pop";
    el.setAttribute("role", "dialog");
    el.setAttribute("aria-modal", "true");
    el.setAttribute("aria-label", "날짜 선택");
    el.hidden = true;
    el.innerHTML = `
      <div class="dp-head">
        <button class="nav prev" type="button" aria-label="이전 달">&#x2039;</button>
        <div class="title" aria-live="polite"></div>
        <button class="nav next" type="button" aria-label="다음 달">&#x203A;</button>
      </div>
      <div class="dp-grid">
        <div class="dp-week"><span>일</span><span>월</span><span>화</span><span>수</span><span>목</span><span>금</span><span>토</span></div>
        <div class="dp-days" role="rowgroup"></div>
      </div>
    `;
    document.body.appendChild(el);
    el.style.position = "fixed";

    el.querySelector(".prev").addEventListener("click", () => { shiftMonth(-1); });
    el.querySelector(".next").addEventListener("click", () => { shiftMonth(+1); });
    return el;
  }

  function shiftMonth(delta) {
    viewYM.m += delta;
    while (viewYM.m < 0) { viewYM.m += 12; viewYM.y--; }
    while (viewYM.m > 11) { viewYM.m -= 12; viewYM.y++; }
    render();
  }

  /* ---------- 입력 마스킹: yyyy-mm-dd 자동 완성 ---------- */
  (function inputMasking() {
    const SEL = '.text-field.datepicker .dp-input';

    // 초깃값 세팅
    document.querySelectorAll(SEL).forEach(inp => {
      inp.setAttribute('maxlength', '10');        // yyyy-mm-dd
      inp.setAttribute('autocomplete', 'off');
      inp.setAttribute('inputmode', 'numeric');
      inp.setAttribute('pattern', '\\d{4}-\\d{2}-\\d{2}');
    });

    function formatYYYYMMDD(raw){
      const digits = (raw || '').replace(/\D/g, '').slice(0, 8);
      const len = digits.length;
      if (len <= 4) return digits;                                  // yyyy
      if (len <= 6) return digits.slice(0,4) + '-' + digits.slice(4); // yyyy-mm
      return digits.slice(0,4) + '-' + digits.slice(4,6) + '-' + digits.slice(6); // yyyy-mm-dd
    }

    function onInput(e){
      const el = e.target;
      if (!el.matches(SEL)) return;
      const before = el.value;
      const after  = formatYYYYMMDD(before);
      if (before !== after){
        const end = after.length;
        el.value = after;
        try { el.setSelectionRange(end, end); } catch(_) {}
      }
    }

    function onPaste(e){
      const el = e.target;
      if (!el.matches(SEL)) return;
      const txt = (e.clipboardData || window.clipboardData).getData('text') || '';
      const after = formatYYYYMMDD(txt);
      e.preventDefault();
      el.value = after;
      try { el.setSelectionRange(after.length, after.length); } catch(_) {}
      el.dispatchEvent(new Event('input', { bubbles: true }));
    }

    function onKeydown(e){
      const el = e.target;
      if (!el.matches(SEL)) return;
      const allowed = ['Backspace','Delete','Tab','Enter','Escape','ArrowLeft','ArrowRight','Home','End'];
      const isNumber = e.key >= '0' && e.key <= '9';
      const isHyphen = e.key === '-';
      if (allowed.includes(e.key) || isNumber || isHyphen) return;
      if ((e.ctrlKey||e.metaKey) && ['a','c','v','x','A','C','V','X'].includes(e.key)) return;
      e.preventDefault();
    }

    document.addEventListener('input', onInput, true);
    document.addEventListener('paste', onPaste, true);
    document.addEventListener('keydown', onKeydown, true);
  })();

  /* ---------- 포인터 캡처로 인풋-클릭 오픈 억제 ---------- */
  document.addEventListener("mousedown", (e) => {
    const field = e.target.closest(".text-field.datepicker");
    if (!field) return;
    const isToggle = e.target.closest("[data-dp-toggle]");
    if (!isToggle) suppressOpenByPointer = true;
  }, true);
  ["mouseup","dragend","touchend","pointerup"].forEach(ev =>
    document.addEventListener(ev, () => setTimeout(() => (suppressOpenByPointer = false), 0), true)
  );

  /* ---------- 토글/닫기 처리(필수) ---------- */
  document.addEventListener("click", (e) => {
    // 버튼으로만 열기/닫기
    const toggle = e.target.closest("[data-dp-toggle]");
    if (toggle) {
      const field = toggle.closest(".text-field.datepicker");
      const input = field?.querySelector(".dp-input");
      if (!input) return;
      if (pop.hidden || activeInput !== input) openFor(input);
      else closePop();
      return;
    }

    // 바깥 클릭 닫기
    const clickInsidePop = !!e.target.closest(".dp-pop");
    const clickInsideActiveField =
      !!activeField &&
      !!e.target.closest(".text-field.datepicker") &&
      activeField.contains(e.target);
    if (!clickInsidePop && !clickInsideActiveField) closePop();
  });

  // 키보드: Alt+↓ 열기, ESC 닫기
  document.addEventListener("keydown", (e) => {
    const inputEl = e.target.closest(".dp-input");
    if (!inputEl || !inputEl.closest(".text-field.datepicker")) return;
    if (e.altKey && e.key === "ArrowDown") {
      e.preventDefault();
      openFor(inputEl);
    }
    if (e.key === "Escape") closePop();
  });

  /* ---------- 열기/닫기/위치 ---------- */
  function openFor(input) {
    if (suppressOpenByPointer) return;
    const field = input.closest(".text-field.datepicker");
    if (!field) return;

    activeInput = input;
    activeField = field;
    window.__DP_ACTIVE_INPUT__ = activeInput;
    window.__DP_ACTIVE_FIELD__ = activeField;

    if (!document.body.contains(pop)) document.body.appendChild(pop);
    pop.style.position = "fixed";

    field.classList.add("is-open");
    syncExpanded(true);
    pop.hidden = false;

    // 현재값 기준 월로 이동, 없으면 오늘
    const d = parse(input.value) || today();
    viewYM = { y: d.getFullYear(), m: d.getMonth() };
    render();
    positionPopupFixed(field);

    const focusBtn = pop.querySelector('.dp-day.is-selected') ||
                     pop.querySelector('.dp-day[tabindex="0"]') ||
                     pop.querySelector('.dp-day');
    focusBtn?.focus();

    window.addEventListener("resize", onRelayout, { passive: true });
    window.addEventListener("scroll", onRelayout, { passive: true });
  }

  function closePop() {
    if (!activeInput) { pop.hidden = true; return; }
    syncExpanded(false);
    activeField?.classList.remove("is-open");
    pop.hidden = true;
    pop.classList.remove("flipY");

    // 포커스 복귀: 토글 버튼
    activeField?.querySelector("[data-dp-toggle]")?.focus();

    activeInput = null;
    activeField = null;
    window.__DP_ACTIVE_INPUT__ = null;
    window.__DP_ACTIVE_FIELD__ = null;

    window.removeEventListener("resize", onRelayout);
    window.removeEventListener("scroll", onRelayout);
  }

  function syncExpanded(expanded) {
    const btn = activeField?.querySelector("[data-dp-toggle]");
    btn?.setAttribute("aria-expanded", expanded ? "true" : "false");
  }

  function onRelayout() {
    if (activeField && !pop.hidden) positionPopupFixed(activeField);
  }

  function positionPopupFixed(field) {
    const r = field.getBoundingClientRect();
    const popW = pop.offsetWidth || 328;
    const popH = pop.offsetHeight || 320;
    const margin = 6;

    let top = r.bottom + margin; // 아래 기본
    let left = r.left;

    // 좌우 clamp
    const maxLeft = Math.max(4, window.innerWidth - popW - 4);
    left = Math.min(Math.max(left, 4), maxLeft);

    // 하단 공간 부족 시 위로 flip
    const spaceBelow = window.innerHeight - (r.bottom + margin);
    if (spaceBelow < popH) {
      top = Math.max(4, r.top - popH - margin);
      pop.classList.add("flipY");
    } else {
      pop.classList.remove("flipY");
    }

    pop.style.left = `${Math.round(left)}px`;
    pop.style.top  = `${Math.round(top)}px`;
  }

  /* ---------- 렌더 ---------- */
  function render() {
    const y = viewYM.y;
    const m = viewYM.m;
    pop.querySelector(".title").textContent = `${y}년 ${m + 1}월`;

    const mode = getMode(activeInput);
    const groupId = activeInput?.dataset.dpGroup;
    const grp = groupId ? (rangeStore.get(groupId) || { start: null, end: null }) : { start: null, end: null };

    const daysWrap = pop.querySelector(".dp-days");
    daysWrap.innerHTML = "";

    const first = new Date(y, m, 1);
    const startW = first.getDay();
    const lastDate = new Date(y, m + 1, 0).getDate();
    const prevLast = new Date(y, m, 0).getDate();

    const cells = [];

    // 이전 달
    for (let i = 0; i < startW; i++) {
      const d = new Date(y, m - 1, prevLast - startW + i + 1);
      cells.push(makeCell(d, true, mode, grp));
    }
    // 이번 달
    for (let i = 1; i <= lastDate; i++) {
      const d = new Date(y, m, i);
      cells.push(makeCell(d, false, mode, grp));
    }
    // 다음 달: 6행(42셀) 채우기
    const remain = 42 - cells.length;
    for (let i = 1; i <= remain; i++) {
      const d = new Date(y, m + 1, i);
      cells.push(makeCell(d, true, mode, grp));
    }

    cells.forEach((c) => daysWrap.appendChild(c));
  }

  function makeCell(d, out, mode, grp) {
    const btn = document.createElement("button");
    btn.type = "button";
    btn.className = "dp-day";
    btn.setAttribute("role", "gridcell");
    btn.textContent = d.getDate();
    if (out) btn.dataset.out = "1";

    // 오늘 날짜 포커스 우선(기본값)
    btn.setAttribute("tabindex", sameDay(d, today()) ? "0" : "-1");

    // 선택 상태 표시
    const curr = parse(activeInput?.value);
    if (mode === "single" && sameDay(d, curr)) {
      btn.classList.add("is-selected");
      btn.setAttribute("tabindex", "0");
    }
    if (mode === "range") {
      const { start, end } = grp;
      if (start && end && cmp(start, d) <= 0 && cmp(d, end) <= 0) btn.classList.add("in-range");
      if (start && sameDay(d, start)) btn.classList.add("range-start", "is-selected");
      if (end && sameDay(d, end))   btn.classList.add("range-end",   "is-selected");
      if ((start && sameDay(d, start)) || (end && sameDay(d, end))) btn.setAttribute("tabindex","0");
    }

    // 이벤트
    btn.addEventListener("click", () => onPick(d));
    btn.addEventListener("keydown", onCellKey(d));

    return btn;
  }

  /* ---------- 선택 로직 ---------- */
  function onPick(date) {
    const mode = getMode(activeInput);
    if (mode === "single") {
      activeInput.value = fmt(date);
      activeInput.dispatchEvent(new Event("change"));
      closePop();
      return;
    }

    // range 모드
    const groupId = activeInput.dataset.dpGroup;
    const role = activeInput.dataset.role; // start | end
    if (!groupId || !role) return;

    const state = rangeStore.get(groupId) || { start: null, end: null };

    if (role === "start") {
      state.start = date;
      if (state.end && cmp(state.start, state.end) > 0) state.end = null;
    } else {
      state.end = date;
      if (state.start && cmp(state.end, state.start) < 0) {
        const t = state.start;
        state.start = state.end;
        state.end = t;
      }
    }

    rangeStore.set(groupId, state);
    syncRangeInputs(groupId, state);

    if (state.start && state.end) closePop();
    else render();
  }

  function syncRangeInputs(groupId, state) {
    // 동일 groupId를 가진 모든 input을 찾아 동기화
    const inputs = document.querySelectorAll(`.dp-input[data-dp-group="${CSS.escape(groupId)}"]`);
    inputs.forEach(inp => {
      const role = inp.dataset.role;
      if (role === "start" && state.start) inp.value = fmt(state.start);
      if (role === "end"   && state.end)   inp.value = fmt(state.end);
    });
  }

  /* ---------- 키보드 내비 ---------- */
  function onCellKey(baseDate) {
    return (e) => {
      let d = new Date(baseDate);
      const k = e.key;
      if (k === "ArrowLeft") d.setDate(d.getDate() - 1);
      else if (k === "ArrowRight") d.setDate(d.getDate() + 1);
      else if (k === "ArrowUp") d.setDate(d.getDate() - 7);
      else if (k === "ArrowDown") d.setDate(d.getDate() + 7);
      else if (k === "PageUp") d.setMonth(d.getMonth() - 1);
      else if (k === "PageDown") d.setMonth(d.getMonth() + 1);
      else if (k === "Home") d.setDate(1);
      else if (k === "End") d.setMonth(d.getMonth() + 1, 0);
      else if (k === "Enter" || k === " ") { onPick(baseDate); return; }
      else return;

      e.preventDefault();
      viewYM = { y: d.getFullYear(), m: d.getMonth() };
      render();
      const focusBtn = [...pop.querySelectorAll(".dp-day")].find(
        (b) => Number(b.textContent) === d.getDate() && !b.dataset.out
      );
      focusBtn && focusBtn.focus();
    };
  }

  /* ---------- 직접 입력(blur 검증/정규화) ---------- */
  document.addEventListener("blur", (e) => {
    const inp = e.target.closest(".dp-input");
    if (!inp) return;
    const v = (inp.value || "").trim();
    if (!v) return;

    const d = parse(v);
    if (!d) { inp.value = ""; return; }
    inp.value = fmt(d);

    // range 상호관계 갱신
    const gid = inp.dataset.dpGroup;
    const role = inp.dataset.role;
    if (gid && role) {
      const state = rangeStore.get(gid) || { start: null, end: null };
      state[role] = d;
      if (state.start && state.end && cmp(state.start, state.end) > 0) {
        const t = state.start; state.start = state.end; state.end = t;
      }
      rangeStore.set(gid, state);
      syncRangeInputs(gid, state);
    }
  }, true);

  /* ---------- 모드 판단 ---------- */
  function getMode(input) {
    const rangeHost = input.closest('[data-dp="range"]');
    return rangeHost ? "range" : "single";
  }

  /* ---------- 외부 제어용 공개 API ---------- */
  window.DP = {
    open: (inputEl) => openFor(inputEl),
    close: () => closePop(),
  };
})();