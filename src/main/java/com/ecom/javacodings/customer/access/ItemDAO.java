package com.ecom.javacodings.customer.access;

import java.util.List;
import java.util.Map;

import com.ecom.javacodings.common.transfer.PageDTO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartFile;

import com.ecom.javacodings.common.transfer.table.ItemDTO;

@Mapper
public interface ItemDAO {
	List<ItemDTO> listNew(int number);
	List<ItemDTO> listBest(int number);
	List<ItemDTO> listItemsByTagId(String tagId);
	List<ItemDTO> getListItem();
	int getItemCnt();
	ItemDTO listItemDt(ItemDTO itemDTO);
	
	//카테고리
	List<ItemDTO> listProductsInCategory(Map<String, Object> properties);

	int countProductsInCategory(String category);
}
