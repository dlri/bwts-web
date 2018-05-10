package com.dlri.chinacnr.bwts.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dlri.chinacnr.bwts.entity.User;
import com.dlri.chinacnr.bwts.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping("/login")
	public String login(User user,HttpServletRequest request){
	    User resultUser=userService.login(user);
	    if(resultUser==null){
	    	request.setAttribute("user", user);
	    	request.setAttribute("errorMsg", "ÓÃ»§Ãû´íÎó£¡");
	    	return "/index";
	    }else{
	    	HttpSession session=request.getSession();
	    	session.setAttribute("currentUser",resultUser);
	    	return "redirect:/success.jsp";
	    }
	}
}
