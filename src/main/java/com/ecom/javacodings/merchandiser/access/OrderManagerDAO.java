package com.ecom.javacodings.merchandiser.access;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ecom.javacodings.common.transfer.OrderDTO;

@Mapper
public interface OrderManagerDAO {

	OrderDTO addOrderByOrderId(@Param("order_id") String order_id);
	
	int setStateOfOrderByOrederId(@Param("state") int orderState, @Param("order_id") String order_id);

	List<OrderDTO> findAllOrderByOrderStates(@Param("state") int orderState, @Param("order_id") String order_id);
	
	List<OrderDTO> countOrdersByStates(@Param("state") int orderState);

    int countOrdersByOrderId(@Param("order_id") String order_id);

	int insertOrder(OrderDTO order);	//보류
}
