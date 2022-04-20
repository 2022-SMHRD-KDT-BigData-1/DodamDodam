package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoteMapper {

	public List<NoteVO> note(int postStart);

	public int noteAmount();

	public void count(int n_seq);

	public void noteInsert(NoteVO vo);

	public NoteVO noteContent(int n_seq);

	public List<ChildrenVO> ChildInfo(String m_id);

}
