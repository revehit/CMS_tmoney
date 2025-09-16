<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="pagination">
  <button class="btn-pgn first">
    <em class="icon icon-doublearrow"></em> 
  </button>
  <button class="btn-pgn prev">
    <em class="icon icon-arrow-right"></em>
  </button>
  <ul class="num-list">
    <li class="active"><a href="#url" class="">1</a></li>
    <li><a href="#url" class="">2</a></li>
    <li><a href="#url" class="">3</a></li>
    <li><a href="#url" class="">4</a></li>
    <li><a href="#url" class="">5</a></li>
  </ul>
  <%-- <a href="#url" class="btn-pgn next">
    <em class="icon icon-arrow-right"></em>
  </a>
  <a href="#url" class="btn-pgn last">
    <em class="icon icon-doublearrow"></em>
  </a> --%>
    <button class="btn-pgn next">
    <em class="icon icon-arrow-right"></em>
  </button>
  <button class="btn-pgn last">
    <em class="icon icon-doublearrow"></em>
  </button>
</div>
<script>
  // pagination.js
  function createPagination({ container, totalItems, itemsPerPage, currentPage = 1, onPageChange }) {
    const totalPages = Math.ceil(totalItems / itemsPerPage);
    const $container = $(container);
    const $numList = $container.find(".num-list");

    // 숫자 버튼 그리기
    function render() {
      $numList.empty();
      for (let i = 1; i <= totalPages; i++) {
        const $li = $("<li>");
        const $a = $("<a>", { href: "#", text: i });
        if (i === currentPage) $li.addClass("active");
        $li.append($a);
        $numList.append($li);
      }

      // 버튼 이벤트
      $container.find(".first").off("click").on("click", () => changePage(1));
      $container.find(".prev").off("click").on("click", () => changePage(Math.max(1, currentPage - 1)));
      $container.find(".next").off("click").on("click", () => changePage(Math.min(totalPages, currentPage + 1)));
      $container.find(".last").off("click").on("click", () => changePage(totalPages));

      $numList.find("li").off("click").on("click", function () {
        const index = $(this).index() + 1;
        changePage(index);
      });
    }

    // 페이지 변경 함수
    function changePage(newPage) {
      if (newPage !== currentPage) {
        currentPage = newPage;
        render();
        onPageChange(currentPage);
      }
    }

    render(); // 초기 렌더
  }

</script>

