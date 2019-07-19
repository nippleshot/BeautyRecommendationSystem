package com.brs.service;

import java.util.List;

import com.brs.domain.AdminVO;
import com.brs.domain.product.CategoryVO;
import com.brs.domain.util.SearchCriteria;
import com.brs.dto.LoginDTO;

public interface AdminService {

	public void create(AdminVO aVO) throws Exception;
	
	public AdminVO read(int adminNo) throws Exception;
	
	public void update(AdminVO aVO) throws Exception;
	
	public void delete(int adminNo) throws Exception;
	
	public List<AdminVO> listSearch(SearchCriteria cri) throws Exception;
	
	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	//로그인
	public AdminVO login(LoginDTO dto) throws Exception; 
			
	//기초 정보 등록
	public void registerCategory(CategoryVO cVO) throws Exception;
}
