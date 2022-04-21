package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoteMapper {

	public List<ChildrenVO> childrenList(String m_id);
	
	public List<NoteVO> noteChild(PoststartVO posts);
	
	public int noteAmount();
	
	public int noteAmount(int c_seq);
	
	
	
	

	public void count(int n_seq);

	public void noteInsert(NoteVO vo);

	public NoteVO noteContent(int n_seq);

	public List<ChildrenVO> ChildInfo(String m_id);

	

	

	

	

}
