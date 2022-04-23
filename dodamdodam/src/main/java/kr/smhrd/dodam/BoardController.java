package kr.smhrd.dodam;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

	// 게시판 선택 이동기능
	@RequestMapping("/boardChoose.do")
	public void boardChoose() {
	}

	// 게시판 이동
	@RequestMapping("/board.do")
	public String board(@RequestParam("pageNum") int pageNum, Model model, BoardVO page) {
		// 시작 게시물
		int postStart = 0;
		if (pageNum >= 1) {
			postStart = (pageNum - 1) * 10;
		}
		
		
		// 전체 게시글 수
		int amount = mapper.boardAmount();
		// 마지막페이지
		int endPageNum = (amount - 1) / 10 + 1;
		int postStart1 = postStart;
		List<BoardVO> list = mapper.board(postStart);
		model.addAttribute("endPageNum", endPageNum);
		model.addAttribute("postStart", postStart1);
		model.addAttribute("list", list);
		System.out.println("끝");
		return "board";
	}

	@RequestMapping("/board2.do")
	public String board2(@RequestParam("pageNum") int pageNum, Model model, BoardVO page) {
		// 시작 게시물
		int postStart = 0;
		if (pageNum >= 1) {
			postStart = (pageNum - 1) * 10;
		}
		// 전체 게시글 수
		int amount = mapper.board2Amount();
		// 마지막페이지w
		int endPageNum = (amount - 1) / 10 + 1;
		int postStart1 = postStart;
		List<BoardVO> list = mapper.board2(postStart);
		System.out.println("게시판 이동 동작");
		model.addAttribute("endPageNum", endPageNum);
		model.addAttribute("postStart", postStart1);
		model.addAttribute("list", list);
		return "board2";
	}

	// 게시판 이동+검색
	@RequestMapping("/boardSearch.do")
	public String board(@RequestParam("pageNum") int pageNum, Model model, BoardVO page, HttpServletRequest request) {

		pageNum = (Integer.parseInt(request.getParameter("pageNum")));

		// 시작 게시물
		int postStart = 0;
		if (pageNum >= 1) {
			postStart = (pageNum - 1) * 10;
		}

		String b_search = request.getParameter("b_search");
		System.out.println("검색어 :" + b_search);
		// 전체 게시글 수
		
		int amount = mapper.boardSearchAmount(b_search);
		System.out.println("검색 게시글 합 : " + amount);
		
		// 마지막페이지
		int endPageNum = (amount - 1) / 10 + 1;
		int postStart1 = postStart;
		page.setPostStart(postStart1);
		System.out.println("postStart : "+ postStart1);
		
		List<BoardVO> list = mapper.boardSearch(page);
		model.addAttribute("endPageNum", endPageNum);
		model.addAttribute("postStart", postStart1);
		model.addAttribute("list", list);
		model.addAttribute("b",b_search);
		return "boardSearch";
	}
	
	// 게시판 이동+검색
		@RequestMapping("/board2Search.do")
		public String board2(@RequestParam("pageNum") int pageNum, Model model, BoardVO page, HttpServletRequest request) {

			pageNum = (Integer.parseInt(request.getParameter("pageNum")));

			// 시작 게시물
			int postStart = 0;
			if (pageNum >= 1) {
				postStart = (pageNum - 1) * 10;
			}

			String b_search = request.getParameter("b_search");
			System.out.println("검색어 :" + b_search);
			// 전체 게시글 수
			
			int amount = mapper.board2SearchAmount(b_search);
			System.out.println("검색 게시글 합 : " + amount);
			
			// 마지막페이지
			int endPageNum = (amount - 1) / 10 + 1;
			int postStart1 = postStart;
			page.setPostStart(postStart1);
			System.out.println("postStart : "+ postStart1);
			
			List<BoardVO> list = mapper.board2Search(page);
			model.addAttribute("endPageNum", endPageNum);
			model.addAttribute("postStart", postStart1);
			model.addAttribute("list", list);
			model.addAttribute("b",b_search);
			return "board2Search";
		}

	// 게시판 글쓰기 이동 기능
	@RequestMapping("/boardInsertForm.do")
	public void boardInsert() {
		System.out.println("게시판 글쓰기 이동 기능 동작");
	}

	// 게시판 글쓰기 입력 기능
	@RequestMapping("/boardInsert.do")
	public String boardInsert(BoardVO vo) {
		System.out.println("게시판 글쓰기 입력 기능 동작");
		mapper.boardInsert(vo);
		System.out.println("게시판 카테고리 값 : " + vo.getB_category());
		if (vo.getB_category().equals("0")) {
			return "redirect:/board.do?pageNum=" + 1;
		} else {
			return "redirect:/board2.do?pageNum=" + 1;
		}
	}

	// 게시판 글 수정 이동기능
	@RequestMapping("/boardUpdateForm.do")
	public void boardUpdateForm(int b_seq, Model model) {
		System.out.println("게시글 수정 페이지 이동기능 동작");
		BoardVO vo = mapper.boardContent(b_seq);
		model.addAttribute("vo", vo);
	}

	@RequestMapping("/board2UpdateForm.do")
	public void board2UpdateForm(int b_seq, Model model) {
		System.out.println("게시글 수정 페이지 이동기능 동작");
		BoardVO vo = mapper.board2Content(b_seq);
		model.addAttribute("vo", vo);
	}

	// 게시판 글 조회 기능
	@RequestMapping("/boardContent.do")
	public void boardContent(int b_seq, Model model) {
		System.out.println("게시글 조회 기능 동작");

		BoardVO vo = mapper.boardContent(b_seq);
		mapper.count(b_seq);
		model.addAttribute("vo", vo);
	}

	@RequestMapping("/board2Content.do")
	public void board2Content(int b_seq, Model model) {
		System.out.println("게시글 조회 기능 동작");
		BoardVO vo = mapper.board2Content(b_seq);
		mapper.count2(b_seq);
		model.addAttribute("vo", vo);
	}

	// 게시판 글 수정 기능
	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(BoardVO vo) {
		System.out.println("게시글 수정 기능 동작");
		mapper.boardUpdate(vo);
		return "redirect:/board.do?pageNum=" + 1;
	}

	@RequestMapping("/board2Update.do")
	public String board2Update(BoardVO vo) {
		System.out.println("게시글 수정 기능 동작");
		mapper.board2Update(vo);
		return "redirect:/board2.do?pageNum=" + 1;
	}

	// 게시판 글 삭제 기능
	@RequestMapping("/boardDelete.do")
	public String boardDelete(int b_seq) {
		System.out.println("게시글 삭제 기능 동작");
		mapper.boardDelete(b_seq);
		return "redirect:/board.do?pageNum=" + 1;
	}

	// 게시판 글 삭제 기능
	@RequestMapping("/board2Delete.do")
	public String board2Delete(int b_seq) {
		System.out.println("게시글 삭제 기능 동작");
		mapper.board2Delete(b_seq);
		return "redirect:/board2.do?pageNum=" + 1;
	}

}
