<%@page import="chap08.model.PizzaOrder, chap08.dao.PizzaOrderDAO, java.util.List, chap08.dao.PizzaOrderDAO_Impl"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	PizzaOrderDAO dao = new PizzaOrderDAO_Impl();
	
	List<PizzaOrder> allOrder = dao.getAllOrder();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �ֹ� ����Ʈ</title>
</head>
<body>
	
	<!-- /contextPath/pizza/order/all�� ���� -->
	
	<c:url value="/pizza/order/all" var="url" />
	
	
	<h3>��� �ֹ� ���� ������</h3>
	
	<!-- ���⿡ ��� �ֹ��� ������ ���ּ��� (�ݺ��� �ݵ�� JSTL ���) -->
	
	<div id="order-list">
	<c:forEach items="${allOrder}" var="order">
		<div class="${allOrder.order_id}">${allOrder.order_id }</div>
		<div class="${allOrder.order_id}">${allOrder.customer_id }</div>
		<div class="${allOrder.order_id}">${allOrder.pizza_id }</div>
		<div class="${allOrder.order_id}">${allOrder.address }</div>
		<div class="${allOrder.order_id}">${allOrder.pizza_option }</div>
	</c:forEach>
	</div>
</body>
</html>