package kr.smhrd.dodam;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.model.ChildrenMapper;
import kr.smhrd.model.ChildrenVO;
import kr.smhrd.model.DiaryMapper;
import kr.smhrd.model.DiaryVO;
import kr.smhrd.model.EmotionVO;
import kr.smhrd.model.MemberVO;
import kr.smhrd.model.PieVO;

@Controller
public class HomeController {
	
	@Inject
	private ChildrenMapper mapper;
	@Inject
	private DiaryMapper mapper2;
	
	@RequestMapping("/home.do")
	public void home() {
		
	}
	@RequestMapping("/result.do")
	public void result() {
		
	}
	@RequestMapping("/diary.do")
	public void diary(HttpSession session) {
		
		MemberVO member = (MemberVO) session.getAttribute("member");
		
		
		if(member != null) {
			List<ChildrenVO> childList = mapper.ChildInfo(member.getM_id()); 
			session.setAttribute("childList", childList);
		}
		
	}
	@RequestMapping("/dodam.do")
	public void dodam() {
		
	}
	
	
	 
}
