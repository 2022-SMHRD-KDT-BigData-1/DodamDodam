package kr.smhrd.dodam;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		String id = request.getParameter("m_id");
		
		if(id == "admin") {
			mapper.joinInsertAdmin(vo);
		} else {
			mapper.joinInsert(vo);
		}
		
		return "redirect:/board.do";
	}

	//로그인 기능
	@RequestMapping("/loginSelect.do")
	public String loginSelect(HttpSession session,MemberVO vo) {
		MemberVO info = mapper.loginSelect(vo);
		
		if(info == null) {
			System.out.println("로그인 실패기능 동작");
			return "redirect:/login.do";
		} else {
			System.out.println("로그인 기능 동작");
			session.setAttribute("member", info);
			return "redirect:/board.do";
		}
		
	}
	
	//로그아웃 기능
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		System.out.println("로그아웃 완료");
		
		session.removeAttribute("member");
		
		return "redirect:/board.do";
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

}
