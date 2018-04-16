/*package com.mac.web.controller;

public class CustomerController {

}*/

package com.mac.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.mac.web.domain.Command;
import com.mac.web.domain.Common;
import com.mac.web.domain.Customer;
import com.mac.web.domain.Path;
import com.mac.web.service.CustomerService;

@SessionAttributes("loginUser")
@Controller
public class CustomerController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired Path path;
	@Autowired Customer custom;
	@Autowired CustomerService cService;
	@Autowired Command cmd;
	@Autowired Common com;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() {
		logger.info("커스터머 컨트롤러 login() ===========================");
		return "customer/login"; 
	}
	
	@RequestMapping(value="/login/open", method=RequestMethod.POST)
	public String loginOpen(Model model,
			@RequestParam("inp-login-customId")String customId,
			@RequestParam("inp-login-customPass")String customPass
			) {
			logger.info("커스터머 컨트롤러 loginOpen() =========================");
		custom.setCustomId(customId);;
		custom.setCustomPass(customPass);
		cmd.setCustom(custom);
			logger.info("아이디는{}",cmd.getCustom().getCustomId());
			logger.info("비밀번호는{}",cmd.getCustom().getCustomPass());
		String path = "customer/login";
		boolean x = cService.count(cmd);
			if(x) {
				logger.info("count는 {}", cService.count(cmd));
				model.addAttribute("loginUser",cService.findById(cmd));
				logger.info("DB갔다온 후 cmd 값은 {}",cmd);
				logger.info("DB갔다온 후 고객비밀번호는{}",cmd.getCustom().getCustomPass());
				logger.info("DB갔다온 후 고객이름은{}",cmd.getCustom().getName());
				path = "customer/mypage";
			}
		return path;
	}
	
	@RequestMapping(value="/join",method=RequestMethod.GET)
	public String join() {
		logger.info("커스트머 컨트롤러 join() =============================");
		return "customer/join";
	}

	@RequestMapping(value="/login/join",method=RequestMethod.POST)
	public String loginJoin(Model model,
			@RequestParam("inp-join-id")String customId,
			@RequestParam("inp-join-pass")String customPass,
			@RequestParam("inp-join-name")String name,
			@RequestParam("inp-join-email1")String email1,
			@RequestParam("sel-join-email2")String email2,
			@RequestParam("sel-join-phoneNum1")String phone1,
			@RequestParam("inp-join-phoneNum2")String phone2,
			@RequestParam("inp-join-phoneNum3")String phone3
			) {
		logger.info("커스터머 컨트롤러 loginJoin() ============================");
		custom.setCustomId(customId);
		custom.setCustomPass(customPass);
		custom.setName(name);
		custom.setEmail(email1+email2);;
		custom.setPhoneNum(phone1+phone2+phone3);
		cmd.setCustom(custom);
		logger.info("아이디는 {}",cmd.getCustom().getCustomId());
		logger.info("비번은 {}",cmd.getCustom().getCustomPass());
		logger.info("이메일은 {}",cmd.getCustom().getEmail());
		logger.info("이름은 {}",cmd.getCustom().getName());
		logger.info("총 전화번호는 {}", cmd.getCustom().getPhoneNum());
		cService.addCustomer(cmd);
		return "customer/login";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.GET)
	public String update(Model model) {
		logger.info("커스터머 컨트롤러 update() ============================");
		logger.info("아이디는 {}",cmd.getCustom().getCustomId());
		logger.info("비번은 {}",cmd.getCustom().getCustomPass());
		logger.info("이메일은 {}",cmd.getCustom().getEmail());
		logger.info("이름은 {}",cmd.getCustom().getName());
		logger.info("총 전화번호는 {}", cmd.getCustom().getPhoneNum());
		return "customer/update";
	}
	
	@RequestMapping(value="/mypage",method=RequestMethod.POST)
	public String mypage(Model model,
			@RequestParam("inp-update-name")String name1,
			@RequestParam("inp-update-email1")String email1,
			@RequestParam("inp-update-email2")String email2,
			@RequestParam("inp-update-pass1")String customPass1,
			@RequestParam("inp-update-pass2")String customPass2,
			@RequestParam("sel-update-phoneNum1")String phone1,
			@RequestParam("inp-update-phoneNum2")String phone2,
			@RequestParam("inp-update-phoneNum3")String phone3
			) {
		logger.info("커스터머 컨트롤러 mypage() ====================================");
		com.setName1(name1);
		com.setEmail1(email1);
		com.setEmail2(email2);
		com.setCustomPass1(customPass1);
		com.setCustomPass2(customPass2);
		com.setPhone1(phone1+phone2+phone3);
		cmd.setCom(com);
		logger.info("이메일1은{}",cmd.getCom().getEmail1());
		logger.info("이메일2는{}",cmd.getCom().getEmail2());
		cService.modifyCustomer(cmd);
		return "customer/mypage";
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(Model model) {
		logger.info("커스트머 컨트롤러 delete() ===============================");
		return "customer/delete";
	}  /**/
	
	@RequestMapping(value="/delete/end",method=RequestMethod.POST)
	public String deleteEnd(Model model,
			@ModelAttribute("loginUser") Customer custom,
			@RequestParam("inp-delete-pass")String customPass
			) {
		logger.info("커스터머 컨트롤러 deleteEnd() ==============================");
		logger.info("@@@@custom pass : {}", custom.getCustomId());
		logger.info("@@@@custom pass : {}", customPass);
		if(custom.getCustomPass().equals(customPass)) {
			custom.setCustomPass(customPass);
			cmd.setCustom(custom);
			logger.info("@@@@@@@비밀번호는 {}", cmd.getCustom().getCustomPass());
			cService.removeCustomer(cmd);
		}else {
			logger.info("비밀번호가 일치하지 않습니다.");
		}
		return "customer/login";
	}


	
}