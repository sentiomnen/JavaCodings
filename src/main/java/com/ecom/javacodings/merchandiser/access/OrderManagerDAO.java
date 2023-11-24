package com.ecom.javacodings.merchandiser.access;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ecom.javacodings.common.transfer.table.OrderDTO;
import com.ecom.javacodings.common.transfer.PageDTO;

@Mapper
public interface OrderManagerDAO {

	OrderDTO orderUpdate(OrderDTO order);
	int updateOrderStates(OrderDTO orders);

	List<OrderDTO> orderList(PageDTO page);
	
	int orderStateCnt(OrderDTO order);
	List<OrderDTO> countState();

    int countOrders();
}
