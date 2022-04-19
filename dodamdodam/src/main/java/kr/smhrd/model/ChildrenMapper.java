package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ChildrenMapper {

	public List<ChildrenVO> ChildInfo(String m_id);

	public List<ChildrenVO> childrenList(String m_id);

	public void childrenInsert(ChildrenVO vo);

	public ChildrenVO childrenContent(int c_seq);

	public void count(int c_seq);
	
	
}
