package kr.smhrd.dodam;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.model.BoardVO;
import kr.smhrd.model.MemberMapper;
import kr.smhrd.model.MemberVO;

@Controller
public class MemberController {

	@Inject
	private MemberMapper mapper;

	// 로그인 페이지 들어가기
	@RequestMapping("/login.do")
	public void login() {
	}
	
	//회원가입 페이지 들어가기
	@RequestMapping("/join.do")
	public void join() {
	}
	
	//회원가입 기능
	@RequestMapping("/joinInsert.do")
	public String joinInsert(MemberVO vo, HttpServletRequest request) {
		System.out.println("회원가입 기능 동작");
		mapper.joinInsert(vo);
		return "redirect:/home.do";
	}

	//로그인 기능
	@RequestMapping("/loginSelect.do")
	public String loginSelect(HttpSession session, MemberVO vo) {
		MemberVO info = mapper.loginSelect(vo);
		
		if(info == null) {
			System.out.println("로그인 실패기능 동작");
			return "redirect:/login.do";
		} else {
			System.out.println("로그인 기능 동작");
			session.setAttribute("member", info);
			return "redirect:/home.do";
		}	
		
	}
	
	//로그아웃 기능
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		System.out.println("로그아웃 완료");
		session.removeAttribute("member");
		return "redirect:/home.do";
	}
	
	//중복체크 기능
	@RequestMapping("/idCheck.do")
	public @ResponseBody MemberVO idCheck(String id) {
		System.out.println(id);
		
		MemberVO vo = mapper.idCheck(id);
		
		if(vo == null) {
			vo = new MemberVO();
		}
		return vo;
	}
	
	 //회원 정보 수정 기능
	 @RequestMapping("/memberUpdateForm.do")
	 public void memberUpdate(Model model, HttpSession session) {
		 
		 MemberVO vo = (MemberVO)session.getAttribute("member");
		 
		 model.addAttribute("vo", vo);
		 
	 }
	 
	 @RequestMapping("/memberUpdate.do")
	 public String memberUpdate(MemberVO vo) {
		 System.out.println("회원정보수정 기능 동작");
		 mapper.memberUpdate(vo);
		 return "redirect:/home.do";
	 }

	
	//회원조회 기능
	@RequestMapping("/memberList.do")
	public String memberList(Model model, HttpServletRequest request) {
		System.out.println("회원정보 보기 기능 수행");
		List<MemberVO> list = mapper.memberList();
		model.addAttribute("list", list);
		return "memberList";
	}
	
	
	
//	@RequestMapping("/board2.do")
//	public String board2(Model model, HttpServletRequest request) {
//		List<BoardVO> list = mapper.board2();
//		model.addAttribute("list", list);
//		System.out.println("게시판 입장");
//		return "board2";
//	}

}
