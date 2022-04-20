package kr.smhrd.dodam;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.model.BoardVO;
import kr.smhrd.model.ChildrenVO;
import kr.smhrd.model.NoteMapper;
import kr.smhrd.model.NoteVO;

@Controller
public class NoteController {

	@Inject
	private NoteMapper mapper;
	
	//육아수첩 게시글 목록
//	@RequestMapping("/note.do")
//	public void Note(Model model, HttpSession session) {
//		List<ChildrenVO> list = mapper.noteChild(session.getAttribute("member").toString());
//		model.addAttribute("list", list);
//		System.out.println("육아수첩 입장");
//	}

	@RequestMapping("/note.do")
	public String note(@RequestParam("pageNum") int pageNum, Model model, NoteVO page) {
		//시작 게시물
		int postStart = 0;
		if (pageNum >= 1) {
			postStart = (pageNum - 1) * 10 ;
		}
		// 전체 게시글 수
		int amount = mapper.noteAmount();
		// 마지막페이지
		int endPageNum = (amount - 1) / 10 + 1;
		int postStart1 = postStart;
		List<NoteVO> list = mapper.note(postStart);
		model.addAttribute("endPageNum", endPageNum);
		model.addAttribute("postStart", postStart1);
		model.addAttribute("list", list);
		return "note";
	}
	
	//육아수첩 글쓰기 페이지 이동 기능
	@RequestMapping("/noteInsertForm.do")
	public void noteInsert() {
		System.out.println("육아수첩 작성 페이지 동작");
	}

	//육아수첩 글쓰기 입력 기능
	 @RequestMapping("/noteInsert.do")
	 public String noteInsert(NoteVO vo, Model model, String c_name) {
		 System.out.println("육아수첩 글쓰기 입력 기능 동작");
		 mapper.noteInsert(vo);
		 
		 List<ChildrenVO> list = mapper.ChildInfo(c_name);
		 model.addAttribute("list", list);
		 return "redirect:/note.do?pageNum=" + 1;

	 }
	
	 //육아수첩 조회 기능
	 @RequestMapping("/noteContent.do")
	 public void noteContent(int n_seq,Model model) {
		 System.out.println("게시글 조회 기능 동작");
		 
		 NoteVO vo = mapper.noteContent(n_seq);
		 mapper.count(n_seq);
		 model.addAttribute("vo", vo);
	 }
	
}
