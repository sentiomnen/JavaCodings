<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<title>자바코딩즈 배너 관리</title>
	<script src="https://code.jquery.com/jquery-3.7.1.js"
	        integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

	<%--  Web Components --%>
	<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/data-table.min.js"></script>
	<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/button.min.js"></script>
	<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/checkbox.min.js"></script>
	<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/tile.min.js"></script>
	<%-- Fragment CSS  --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/views/merchandiser/fragments/init.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/views/merchandiser/fragments/header.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/views/merchandiser/fragments/footer.css" />
	<%-- Page Fragment --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/manage_banners.css" />
	<script src="/resources/scripts/manage_banners.js"></script>
</head>
<body>
<%@ include file="/views/merchandiser/fragments/header.jsp" %>
<main>
<cds-layer level="1">
<cds-stack gap="16px" use-custom-gap-value orientation="horizontal" id="main">
	<cds-stack orientation="vertical">
		<cds-tile id="main-preview">
		<div class="slick-views">
			<c:forEach items="${mainList}" var="banner">
				<img src="/resources/images/${banner.image}">
			</c:forEach>
		</div>
		</cds-tile>

		<cds-tile id="main-list">
			<cds-table is-selectable is-sortable>
				<cds-table-header-title slot="title">메인 배너 관리</cds-table-header-title>
				<cds-table-header-description slot="description">메인 배너 관리용 테이블입니다.</cds-table-header-description>
				<cds-table-toolbar slot="toolbar">
					<cds-table-toolbar-content>
						<cds-table-toolbar-search
								placeholder="Filter table"></cds-table-toolbar-search>
						<cds-button>상품 추가</cds-button>
					</cds-table-toolbar-content>
					<cds-table-batch-actions>
						<cds-button>Delete
							<svg focusable="false" preserveAspectRatio="xMidYMid meet" xmlns="http://www.w3.org/2000/svg" fill="currentColor"
							     aria-hidden="true" width="16" height="16" viewBox="0 0 32 32" slot="icon">
								<path d="M12 12H14V24H12zM18 12H20V24H18z"></path>
								<path d="M4 6V8H6V28a2 2 0 002 2H24a2 2 0 002-2V8h2V6zM8 28V8H24V28zM12 2H20V4H12z"></path>
							</svg>
						</cds-button>
					</cds-table-batch-actions>
				</cds-table-toolbar>
				<cds-table-head>
					<cds-table-header-row hide-checkbox>
						<cds-table-header-cell></cds-table-header-cell>
						<cds-table-header-cell>이미지</cds-table-header-cell>
						<cds-table-header-cell>이름</cds-table-header-cell>
						<cds-table-header-cell>설명</cds-table-header-cell>
						<cds-table-header-cell></cds-table-header-cell>
					</cds-table-header-row>
				</cds-table-head>
				<cds-table-body>
					<c:forEach var="bannermain" items="${bannermain}">
						<cds-table-row>
							<cds-table-cell><cds-checkbox></cds-checkbox></cds-table-cell>
							<cds-table-cell>${bannermain.image}</cds-table-cell>
							<cds-table-cell>${bannermain.label}</cds-table-cell>
							<cds-table-cell>${bannermain.desc}</cds-table-cell>
							<cds-table-cell class="button-cell" item-id="${bannermain.item_id}"><cds-button kind="ghost" id="item-modal-button">수정</cds-button></cds-table-cell>
						</cds-table-row>
					</c:forEach>
				</cds-table-body>
			</cds-table>
		</cds-tile>
	</cds-stack>

	<cds-tile id="event-tile">
		<cds-table is-selectable is-sortable id="event-list">
			<cds-table-header-title slot="title">이벤트 배너 관리</cds-table-header-title>
			<cds-table-header-description slot="description">
				이벤트 배너 관리용 테이블입니다.
			</cds-table-header-description>
			<cds-table-toolbar slot="toolbar">
				<cds-table-toolbar-content>
					<cds-table-toolbar-search
							placeholder="Filter table"></cds-table-toolbar-search>
					<cds-button>상품 추가</cds-button>
				</cds-table-toolbar-content>
				<cds-table-batch-actions>
					<cds-button>Delete
						<svg focusable="false" preserveAspectRatio="xMidYMid meet" xmlns="http://www.w3.org/2000/svg" fill="currentColor"
							 aria-hidden="true" width="16" height="16" viewBox="0 0 32 32" slot="icon">
							<path d="M12 12H14V24H12zM18 12H20V24H18z"></path>
							<path d="M4 6V8H6V28a2 2 0 002 2H24a2 2 0 002-2V8h2V6zM8 28V8H24V28zM12 2H20V4H12z"></path>
						</svg>
					</cds-button>
				</cds-table-batch-actions>
			</cds-table-toolbar>
			<cds-table-head>
				<cds-table-header-row hide-checkbox>
					<cds-table-header-cell></cds-table-header-cell>
					<cds-table-header-cell>이미지</cds-table-header-cell>
					<cds-table-header-cell>이름</cds-table-header-cell>
					<cds-table-header-cell>설명</cds-table-header-cell>
					<cds-table-header-cell></cds-table-header-cell>
				</cds-table-header-row>
			</cds-table-head>
			<cds-table-body>
				<c:forEach var="bannerevent" items="${bannerevent}">
					<cds-table-row>
						<cds-table-cell><cds-checkbox></cds-checkbox></cds-table-cell>
						<cds-table-cell>${bannerevent.image}</cds-table-cell>
						<cds-table-cell>${bannerevent.label}</cds-table-cell>
						<cds-table-cell>${bannerevent.desc}</cds-table-cell>
						<cds-table-cell class="button-cell" item-id="${bannerevent.item_id}"><cds-button kind="ghost" id="item-modal-button">수정</cds-button></cds-table-cell>
					</cds-table-row>
				</c:forEach>
			</cds-table-body>
		</cds-table>
	</cds-tile>
</cds-stack>
</cds-layer>
	<%@ include file="/views/merchandiser/components/product_modal.jsp" %>
</main>
<%@ include file="/views/merchandiser/fragments/footer.jsp" %>
</body>
</html>
