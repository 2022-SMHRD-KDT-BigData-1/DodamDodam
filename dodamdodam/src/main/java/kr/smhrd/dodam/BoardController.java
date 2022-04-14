package kr.smhrd.dodam;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.model.BoardMapper;
import kr.smhrd.model.BoardVO;

@Controller
public class BoardController {
	
	@Inject
	private BoardMapper mapper;

	@RequestMapping("/boardChoose.do")
	public void boardChoose() {
	}
	
	//게시판 이동
	@RequestMapping("/board.do")
	public String Table(@RequestParam("pageNum") int pageNum, Model model, BoardVO page) {
		System.out.println("게시물 수" + pageNum );
		//시작 게시물
		int postStart = 0;
		if (pageNum >= 1) {
			postStart = (pageNum - 1) * 10 ;
		}
		// 전체 게시글 수
		int amount = mapper.boardAmount();
		System.out.println(amount);
		// 마지막페이지w
		int endPageNum = (amount - 1) / 10 + 1;
		int postStart1 = postStart;
		System.out.println(postStart);
		List<BoardVO> list = mapper.board(postStart);
		System.out.println("게시판 이동 동작");
		model.addAttribute("endPageNum", endPageNum);
		model.addAttribute("postStart", postStart1);
		model.addAttribute("list", list);
		System.out.println("끝");
		return "board";
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
		 return "redirect:/board.do?pageNum=" + 1;
	 }

	
//	@RequestMapping("/board2.do")
//	public String board2(Model model, HttpServletRequest request) {
//		List<BoardVO> list = mapper.board2();
//		model.addAttribute("list", list);
//		System.out.println("게시판 입장");
//		return "board2";
//	}
	

	



	

}
