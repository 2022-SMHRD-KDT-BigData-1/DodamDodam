package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DiaryMapper {

	public List<DiaryVO> DiaryAllSelect(String m_id);

	public void diaryInsert(DiaryVO vo);

	public List<EmotionVO> emotionList(String m_id);

	public void emotionDelete(DiaryVO vo);

	public void diaryDelete(DiaryVO vo);
	
	
}
