package kr.smhrd.dodam;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.BoardMapper;
import kr.smhrd.model.BoardVO;

@Controller
public class BoardController {
	
	@Inject
	private BoardMapper mapper;
	
	//게시판 게시글 목록
	@RequestMapping("/board.do")
	public void board(Model model, HttpServletRequest request) {
		List<BoardVO> list = mapper.boardList();
		model.addAttribute("list", list);
		System.out.println("게시판 입장");
	}
	
	//게시판 글쓰기 이동 기능
	@RequestMapping("/boardInsertForm.do")
	public void boardInsert() {
		System.out.println("게시판 글쓰기 이동 기능 동작");
	}

	//게시판 글쓰기 입력 기능
	 @RequestMapping("/boardInsert.do")
	 public String boardInsert(BoardVO vo) {
		 System.out.println("게시판 글쓰기 입력 기능 동작");
		 mapper.boardInsert(vo);
		 
		 return "redirect:/board.do";
	 }
	

}
