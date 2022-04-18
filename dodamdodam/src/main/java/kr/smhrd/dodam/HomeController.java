package kr.smhrd.dodam;

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
import kr.smhrd.model.MemberVO;

@Controller
public class HomeController {
	
	@Inject
	private ChildrenMapper mapper;
	@Inject
	private DiaryMapper mapper2;
	
	@RequestMapping("/home.do")
	public void home() {
		
	}
	@RequestMapping("/diary.do")
	public void diary(HttpSession session) {
		
		
		
		String m_id = "admin";
		List<ChildrenVO> childList = mapper.ChildInfo(m_id); 
		
		if(childList != null) {
			session.setAttribute("childList", childList);
		}
		
	}
	@RequestMapping("/dodam.do")
	public void dodam() {
		
	}
	@RequestMapping("/photo.do")
	public void photo() {
		
	}
	@RequestMapping("/test.do")
	public void test(HttpSession session) {
		String m_id = "admin";
		List<ChildrenVO> childList = mapper.ChildInfo(m_id); 
		
		if(childList != null) {
			session.setAttribute("childList", childList);
		}
		
	}
	@RequestMapping("/diarySelect.do")
	public @ResponseBody List<DiaryVO> diarySelect(Model model) {
		String m_id = "admin";
		List<DiaryVO> diarylist = mapper2.DiaryAllSelect(m_id); 
		System.out.println(diarylist.get(0).getD_content());
		return diarylist;
	}
	
}
