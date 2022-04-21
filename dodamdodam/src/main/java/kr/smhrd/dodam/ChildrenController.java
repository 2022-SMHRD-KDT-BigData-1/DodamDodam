package kr.smhrd.dodam;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.ChildrenMapper;
import kr.smhrd.model.ChildrenVO;
import kr.smhrd.model.MemberVO;

@Controller
public class ChildrenController {
	
	@Inject
	private ChildrenMapper mapper;
	
	//children.do 입장 및 childrenList 조회
	@RequestMapping("/children.do")
	public void childrenList(Model model, HttpSession session) {
		MemberVO vo = (MemberVO)session.getAttribute("member");
		List<ChildrenVO> list = mapper.childrenList(vo.getM_id());
		model.addAttribute("list", list);
	}
	
	//자녀정보 입력 창 들어가기
	@RequestMapping("/childrenInsertForm.do")
	public void childrenInsertForm() {
	}
	
	//자녀정보 입력 기능
	@RequestMapping("/childrenInsert.do")
	public String childrenInsert(ChildrenVO vo) {
		System.out.println("자녀정보 입력 기능 동작");
		mapper.childrenInsert(vo);
		System.out.println("자녀 이름 : " + vo.getC_name());
		System.out.println("자녀 생일 : " + vo.getC_birthdate());
		System.out.println("자녀 성별 : " + vo.getC_gender());
		return "redirect:/children.do";
	}
	
	 //자녀정보 글 조회 기능
	 @RequestMapping("/childrenContent.do")
	 public void childrenContent(int c_seq,Model model) {
		 System.out.println("자녀정보글 조회 기능 동작");
		 
		 ChildrenVO vo = mapper.childrenContent(c_seq);
		 model.addAttribute("vo", vo);
	 }
	
	

}
