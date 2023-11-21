<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<title>자바코딩즈 상품 관리</title>
	<link rel="stylesheet" href="/resources/css/manage_products.css" />
	<script src="https://code.jquery.com/jquery-3.7.1.js"
	        integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>

	<%--  Web Components --%>
	<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/data-table.min.js"></script>
	<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/button.min.js"></script>
	<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/checkbox.min.js"></script>
	<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/pagination.min.js"></script>
	<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/layer.min.js"></script>
	<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/tile.min.js"></script>
	<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/file-uploader.min.js"></script>
	<%-- Fragment CSS --%>
	<link rel="stylesheet" href="/views/merchandiser/fragments/init.css" />
	<link rel="stylesheet" href="/views/merchandiser/fragments/header.css" />
	<link rel="stylesheet" href="/views/merchandiser/fragments/footer.css" />
	<link rel="stylesheet" href="/resources/css/components/pagination.css" />
	<script src="/resources/scripts/common/components/pagination.js"></script>
	<script src="/resources/scripts/manage_products.js"></script>
</head>
<body>
<%@ include file="/views/merchandiser/fragments/header.jsp" %>
<main>
<cds-layer level="1">
<cds-tile>
	<cds-table is-selectable is-sortable use-zebra-styles>
		<cds-table-header-title slot="title">상품 관리</cds-table-header-title>
		<cds-table-header-description slot="description">
			상품 관리용 테이블입니다.
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
				<cds-table-header-cell>이름</cds-table-header-cell>
				<cds-table-header-cell>설명</cds-table-header-cell>
				<cds-table-header-cell>가격</cds-table-header-cell>
				<cds-table-header-cell>재고</cds-table-header-cell>
				<cds-table-header-cell>분류</cds-table-header-cell>
				<cds-table-header-cell>태그</cds-table-header-cell>
				<cds-table-header-cell></cds-table-header-cell>
			</cds-table-header-row>
		</cds-table-head>
		<cds-table-body>
			<c:forEach var="item" items="${objectList}">
				<cds-table-row class="row" item-id="${item.item_id}">
					<cds-table-cell><cds-checkbox></cds-checkbox></cds-table-cell>
					<cds-table-cell>${item.label}</cds-table-cell>
					<cds-table-cell>${item.desc}</cds-table-cell>
					<cds-table-cell>${item.price}</cds-table-cell>
					<cds-table-cell>${item.stock}</cds-table-cell>
					<cds-table-cell>${item.category}</cds-table-cell>
					<cds-table-cell class="item-tags"></cds-table-cell>
					<cds-table-cell class="button-cell">
						<cds-button kind="ghost" id="item-modal-button"
						            onclick="modify(this)">
							수정
						</cds-button>
					</cds-table-cell>
				</cds-table-row>
			</c:forEach>
		</cds-table-body>
	</cds-table>
	<%@ include file="/resources/components/pagination.jsp" %>
</cds-tile>
</cds-layer>

<%@ include file="/views/merchandiser/components/product_modal.jsp" %>
</main>
<%@ include file="/views/merchandiser/fragments/footer.jsp" %>
</body>
</html>
