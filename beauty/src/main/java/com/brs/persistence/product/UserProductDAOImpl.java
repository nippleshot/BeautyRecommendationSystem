package com.brs.persistence.product;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.brs.domain.product.ProductVO;
import com.brs.domain.util.SearchCriteria;
@Repository
public class UserProductDAOImpl implements UserProductDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.brs.mapper.UserProductMapper";
	
	
	//세안제품 목록
	@Override
	public List<ProductVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace+".listSearch", cri);
	}

	//세안 제품 목록 검색
	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+".listSearchCount", cri);
	}

	//세안제품 상세보기
	@Override
	public ProductVO read(int prodNo) throws Exception {
		return session.selectOne(namespace+".read", prodNo);
	}

}
