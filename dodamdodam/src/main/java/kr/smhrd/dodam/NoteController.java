package kr.smhrd.dodam;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.model.ChildrenVO;
import kr.smhrd.model.MemberVO;
import kr.smhrd.model.NoteMapper;
import kr.smhrd.model.NoteVO;
import kr.smhrd.model.PoststartVO;

@Controller
public class NoteController {

	@Inject
	private NoteMapper mapper;
	
	//육아수첩 게시글 목록
	@RequestMapping("/note.do")
	public void childrenList(Model model, HttpSession session) {
		MemberVO vo = (MemberVO)session.getAttribute("member");
		if(vo==null) {
			System.out.println("게시글 동작 실패");
		}
		else {
			List<ChildrenVO> list = mapper.childrenList(vo.getM_id());
			model.addAttribute("list", list);
		}
	}
	
	//육아수첩(한명) 페이지 이동
	@RequestMapping("/noteChild.do")
	public String noteChild(@RequestParam("pageNum") int pageNum,
			Model model, NoteVO page,
			PoststartVO posts,HttpServletRequest request) {
		System.out.println("육아수첩 한명 페이지 도착");
		
		int c_seq = (Integer.parseInt(request.getParameter("c_seq")));
		ChildrenVO vo = new ChildrenVO();
		
		//시작 게시물
		int postStart = 0;
		if (pageNum >= 1) {
			postStart = (pageNum - 1) * 5 ;
		}
		// 전체 게시글 수
		
		int amount = mapper.noteAmount(c_seq);
		System.out.println("총 게시물 수 : " + amount);
		
		posts.setC_seq(c_seq);
		posts.setPostStart(postStart);
		// 마지막페이지
		int endPageNum = (amount - 1) / 5 + 1;
		int postStart1 = postStart;
		List<NoteVO> list = mapper.noteChild(posts);
		model.addAttribute("endPageNum", endPageNum);
		model.addAttribute("postStart", postStart1);
		model.addAttribute("c",c_seq);
		model.addAttribute("list", list);
		
		System.out.println("마지막 페이지 : "+ endPageNum);
		return "noteChild";
	}
	
	//육아수첩 키 예측 페이지 요청기능
	@RequestMapping("/predict.do")
	public void predict() {
		
	}
	
	
	
	
	
	//육아수첩 글쓰기 페이지 이동 기능
	@RequestMapping("/noteInsertForm.do")
	public void noteInsertForm(NoteVO vo, Model model,HttpSession session) {
		System.out.println("육아수첩 작성 페이지 동작");
		String m_id = ((MemberVO)session.getAttribute("member")).getM_id();
		if(m_id==null) {
			System.out.println("육아수첩 작성 페이지 이동 실패");
		}
		else {
			List<ChildrenVO> list = mapper.ChildInfo(m_id);
			System.out.println(list);
			model.addAttribute("list", list);
		}
	}

	//육아수첩 글쓰기 입력 기능
	 @RequestMapping("/noteInsert.do")
	 public String noteInsert(NoteVO vo, Model model,HttpSession session) {
		 System.out.println("육아수첩 글쓰기 입력 기능 동작");
		 mapper.noteInsert(vo);
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
