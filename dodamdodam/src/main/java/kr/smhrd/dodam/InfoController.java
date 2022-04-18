package kr.smhrd.dodam;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfoController {
	
	@Inject
	private HomeController mapper;
	
	@RequestMapping("/info.do")
	public void info() {
		
	}

}
