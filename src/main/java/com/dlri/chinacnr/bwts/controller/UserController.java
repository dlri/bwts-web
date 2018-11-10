package com.dlri.chinacnr.bwts.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.dlri.chinacnr.bwts.entity.User;
import com.dlri.chinacnr.bwts.entity.LoginInfo;
import com.dlri.chinacnr.bwts.service.UserService;

@Controller
@RequestMapping("/")
public class UserController {
	@Autowired
	private UserService userService;
	private static int maxLogin = 10;
	/** 存储已经登录的用户 map<ip,LoginInfo> */
	public static Map<String, LoginInfo> loginUser = new HashMap<String, LoginInfo>();

	@RequestMapping("/index")
	public String index(User user, HttpServletRequest request) {
		/** 获取当前系统操作人 */
		User resultUser = userService.getUserInfo(getCurrentUserId(request));

		if (resultUser == null) {
			return "/login";
		}
		System.out.println("==============12================");
		request.getSession().setAttribute("Login_User", resultUser.getFullname());
		request.getSession().setAttribute("nowtime", new Date());
		String ip = request.getHeader("X-Real-IP");
		if (ip == null) {
			ip = request.getRemoteAddr();
		}
		request.getSession().setAttribute("IP", ip);

		Date time = new Date();
		loginUser.put(ip, new LoginInfo(ip, resultUser.getId(), time));
		return "/index";
		/*
		 * User resultUser=userService.login(user); if(resultUser==null){
		 * request.setAttribute("user", user); request.setAttribute("errorMsg",
		 * "用户名错误！"); return "/index"; }else{ HttpSession
		 * session=request.getSession();
		 * session.setAttribute("currentUser",resultUser); return
		 * "redirect:/success.jsp"; }
		 */
	}

	/** 获取当前系统操作人ID */
	public Long getCurrentUserId(HttpServletRequest request) {
		String login_user_id = this.getCookie("login_user_id", "0", request);
		return to10(login_user_id);
	}

	/**
	 * Get cookie value by cookie name.
	 */
	public String getCookie(String name, String defaultValue, HttpServletRequest request) {
		Cookie cookie = getCookieObject(name, request);
		return cookie != null ? cookie.getValue() : defaultValue;
	}

	/**
	 * Get cookie object by cookie name.
	 */
	public Cookie getCookieObject(String name, HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null)
			for (Cookie cookie : cookies)
				if (cookie.getName().equals(name))
					return cookie;
		return null;
	}

	private static String s = "0caGdIJKbSefg6T7k1ljNXst8qQUvx23yBw9zAEruFnPWC5DLhM4OYoZVmipHR";// "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

	public Long to10(String val) {

		if (val == null || "".equals(val)) {
			return null;
		}
		Double sum = 0D;
		char[] clist = val.toCharArray();
		int i = 0;
		int len = clist.length;
		for (char c : clist) {
			int cat = 0;
			cat = s.indexOf(c);
			sum = sum + cat * Math.pow(62, (len - i - 1));
			i++;
		}
		return sum.longValue();
	}

	public String to62(Long val) {
		return toX(val, 62);
	}

	public String toX(Long num, int base) {
		/*
		 * if(base > 16){ throw new RuntimeException("杩涘埗鏁拌秴鍑鸿寖鍥达紝base<=16"); }
		 */
		StringBuffer str = new StringBuffer();
		Stack<Character> st = new Stack<Character>();
		while (num != 0) {
			st.push(s.charAt((int) (num % base)));
			num /= base;
		}
		while (!st.isEmpty()) {
			str.append(st.pop());
		}
		String s = str.toString();
		if (s.isEmpty() || "".equals(s)) {
			return "0";
		}
		return s;
	}

	@RequestMapping("/login")
	public String login(String loginName, String password, User user, HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println(loginName + "---------1222------" + password + "===" + loginUser.keySet().size());
		/** 授权人数控制 开始 */
		if (loginUser.keySet().size() > maxLogin) {
			// this.rendJson_(false, "<font
			// color='#ff0000'>同时在线的用户数已达到最大！<br>如需支持更多用户在线请购买授权！</font>");
			return "redirect:/login.jsp";
		}
		User _user = new User();
		_user.setUserno(loginName);
		_user.setPwd(password);
		User resultUser = userService.login(_user);
		Long uid = resultUser.getId();
		if (loginUser.size() > 0) {
			Iterator<String> keys = loginUser.keySet().iterator();
			String key = null;
			while (keys.hasNext()) {
				key = (String) keys.next();
				LoginInfo loginInfo = loginUser.get(key);
				Long uid_ = loginInfo.uid;
				if (uid_ != null && uid_.equals(uid)) {
					keys.remove();
				}
			}

		}
		if (resultUser != null) {
			Date time = new Date();
			String ip = request.getHeader("X-Real-IP");
			if (ip == null) {
				ip = request.getRemoteAddr();
			}
			Calendar calendar = Calendar.getInstance();
			Long maxTime = 84600L;
			SimpleDateFormat dateTimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			try {
				calendar.setTime(dateTimeFormat.parse(dateFormat.format(time) + " 23:59:59"));
				maxTime = (calendar.getTimeInMillis() - time.getTime()) / 1000;
			} catch (Exception e) {
			}
			setCookie("login_user_id", "" + to62(resultUser.getId()), maxTime.intValue(), response);
			// setCookie("loginLogId",""+to62(loginLog.getLong("id")),maxTime.intValue(),response);
			// System.out.println("===========user is
			// ========="+resultUser.getFullname());
			// request.setAttribute("msg","该用户不允许登录！");
			// Cookie cookie = new Cookie("mrCookie",to62(resultUser.getId()) +
			// "#" + new Date());
			// cookie.setMaxAge(60 * 60 * 24 * 30); //设置cookie有效期为30天
			// response.addCookie(cookie);//保存cookie
		}
		return "redirect:/index.do";
	}

	/**
	 * Set Cookie with path = "/".
	 */
	public void setCookie(String name, String value, int maxAgeInSeconds, HttpServletResponse response) {
		setCookie(name, value, maxAgeInSeconds, "/", null, response);
	}

	public void setCookie(String name, String value, int maxAgeInSeconds, String path, String domain,
			HttpServletResponse response) {
		Cookie cookie = new Cookie(name, value);
		if (domain != null)
			cookie.setDomain(domain);
		cookie.setMaxAge(maxAgeInSeconds);
		cookie.setPath(path);
		response.addCookie(cookie);
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		setCookie("login_user_id", null, 0, "/", null, response);
		return "redirect:/login.jsp";
	}
}
