package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface BoardMapper {
	
	
	//게시판 1
	public void boardInsert(BoardVO vo);

	public int boardAmount();

	public List<BoardVO> board(int postStart);

	public BoardVO boardContent(int b_seq);
	
	@Update("update t_board set b_cnt = b_cnt + 1 where b_seq = #{b_seq}")
	public void count(int b_seq);

	public void boardUpdate(BoardVO vo);

	public void boardDelete(int b_seq);

	//게시판 2
	public void board2Insert(BoardVO vo);
	
	public List<BoardVO> board2(int postStart);
	
	public int board2Amount();

	public BoardVO board2Content(int b_seq);
	
	@Update("update t_board set b_cnt = b_cnt + 1 where b_seq = #{b_seq}")
	public void count2(int b_seq);

	public void board2Update(BoardVO vo);

	public void board2Delete(int b_seq);

	public void boardUpdateForm(int b_seq);
	
	//검색기능 파트
	public List<BoardVO> boardSearch(int postStart, String b_search);

	public int boardSearchAmount(String b_search);
	
	

	

	
	
	
   
}
