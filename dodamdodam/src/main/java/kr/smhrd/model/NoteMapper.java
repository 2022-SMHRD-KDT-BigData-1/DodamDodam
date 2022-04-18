package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoteMapper {

	public List<NoteVO> note(int postStart);

	public int noteAmount();

	public BoardVO noteContent(int b_seq);

	public void count(int b_seq);

	public void noteInsert(NoteVO vo);
}
