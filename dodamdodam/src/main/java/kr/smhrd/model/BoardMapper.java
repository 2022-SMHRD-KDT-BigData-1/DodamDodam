package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface BoardMapper {

	public void boardInsert(BoardVO vo);

	public int boardAmount();

	public List<BoardVO> board(int postStart);
   
}
