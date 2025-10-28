# 레브히트 CMS

JSP 기반의 관리형 CMS 프로젝트입니다.  
공통 헤더/레이아웃(`commonHead.jsp`)을 중심으로 테마 변경(라이트/다크)과 UI 컴포넌트를 모듈화하여 재사용성을 높였습니다.

---

## 🚀 주요 특징

- **라이트 / 다크 테마 지원**
  - `data-theme` 속성과 CSS 변수를 이용해 전역 테마 전환
  - `localStorage` 기반으로 사용자 테마 선택값을 저장
  - 공통 컴포넌트가 테마 변수(`--color-darken`, `--color-white`, `--gray-XXX`)를 따름

- **공통 컴포넌트 제공**
  - 드롭다운 (`.dropdown`)
  - 페이지네이션 (`.pagination`)
  - 모달 (`.modal`, `.modal-drawer`)
  - 버튼/입력/폼 요소의 상태(hover, active, disabled) 일관성 유지

- **JSP 공통 구조**
  - `commonHead.jsp` : 모든 페이지에서 공통으로 불러오는 헤더
  - `aside.jsp`, `header.jsp` : 공용 네비게이션/헤더 구성
  - `theme.js` : 테마 토글 제어
  - `common.js` : 공통 유틸 스크립트

- **접근성 고려**
  - 키보드 내비게이션 지원 (드롭다운, 모달)
  - `aria-*` 속성을 통한 상태 표현
  - `focus-visible` 스타일 제공

---

## 📂 디렉토리 구조
```text
CMS/
├─ assets/
│ ├─ images/ # 이미지 리소스
│ ├─ js/
│ │ ├─ common.js # 공통 유틸/이벤트
│ │ └─ theme.js # 라이트/다크 토글 + 저장
│ └─ scss/
│ ├─ index.scss # 엔트리 SCSS
│ ├─ _global.scss # 전역(타이포/레이아웃/토큰)
│ ├─ _dropdown.scss # 드롭다운 스타일
│ ├─ _pagination.scss # 페이지네이션 스타일
│ └─ _modal.scss # 모달 스타일
├─ components/
│ ├─ commonHead.jsp # 공통 head (메타/스타일/스크립트)
│ ├─ header.jsp # 상단 헤더
│ ├─ aside.jsp # 사이드 내비게이션
│ ├─ footer.jsp # 공통 푸터
│ ├─ pagination.jsp # 페이지네이션 컴포넌트
├─ page/
│ ├─ dashboard/
│ │ └─ index.jsp # 대시보드 루트
│ └─ guide/
│ ├─ guide.jsp # ⭐ Atom 컴포넌트 카탈로그
│ ├─ template.jsp # ⭐ 페이지 템플릿 (복제용)
│ ├─ page1.jsp # ⭐ 샘플 페이지 1
│ ├─ page2.jsp # 샘플 페이지 2
│ ├─ page3.jsp # 샘플 페이지 3
│ ├─ page4.jsp # 샘플 페이지 4
│ ├─ page5.jsp # 샘플 페이지 5
│ ├─ page6.jsp # 샘플 페이지 6
│ ├─ modal.jsp # 모달 샘플
│ ├─ period.jsp # 기간/필터 샘플
│ ├─ templateWrite.jsp # 템플릿 작성 예시
│ └─ ...
└─ index.jsp # 로그인 페이지

```
---

## 📂 패치노트
```text
📅 2025-10-28 버전: v1.3.0
[신규 추가]
- 가이드 > Guide(page/guide/guide.jsp) 컴포넌트 신규 추가
  · datepicker 컴포넌트 년도별, 월별 추가
  · 위치: table(세로형 폼)

- 수정사항
  · guide.jsp 하단 제이쿼리문 제거
  · datapicker 클릭 시 생성되는 팝업 위치, datapicker에 고정

📅 2025-10-27 버전: v1.2.0
[신규 추가]
- 가이드 > Guide(page/guide/guide.jsp) 컴포넌트 신규 추가
  · datepicker 컴포넌트 신규
  · 위치: table(세로형 폼)

- 수정사항
  · common.js에 datepicker구문 주석처리
  · commonHead.jsp파일에 datepicker구문 추가

📅 2025-10-15 버전: v1.1.0
[신규 추가]
- 시스템 > 메뉴관리(page/system/menu.jsp) 화면 신규 추가
  · 1Depth / 2Depth / 3Depth 구조 지원
  · 각 Depth별 신규·수정 버튼 및 카드형 리스트 UI 구성
  · 선택된 메뉴박스에 -, + 버튼 구성
  · + 버튼 클릭 시 modal 노출

- 상세메뉴 모달 UI 추가
  · 메뉴 ID, 상위메뉴 ID, 메뉴명, 구분, 레벨, 정렬순서, 사용여부, URL, 설명 입력 가능
  · 저장 / 삭제 / 취소 버튼 추가
  · 포커스 트랩 및 ESC, 오버레이 닫기 기능 적용

[디자인 및 스타일 개선]
- _global.scss : 전역 여백, 타이포, 색상 토큰 정리
- _modal.scss : 라운드·섀도 강화, 다크모드 컬러 통합
- _menu.scss : 메뉴관리페이지 scss파일 추가
- _page.scss : menu.scss파일 호출

[레이아웃 업데이트]
- aside.jsp(component/aside) : 신규 메뉴관리 페이지 라우트 등록
```
---
