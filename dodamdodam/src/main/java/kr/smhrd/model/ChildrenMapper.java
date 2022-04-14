package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ChildrenMapper {

	public List<ChildrenVO> ChildInfo(String m_id);

	
	
}
