package com.zlb.controller;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zlb.common.util.UserUtils;
import com.zlb.common.vo.SysResult;
import com.zlb.pojo.SysUser;
import com.zlb.service.SysUserService;
/**
 * 首页跳转controller
 * @author sicle
 *
 */
@Controller
@RequestMapping("/")
public class LoginController {
	private static final Logger logger = 
			Logger.getLogger(LoginController.class);
	@Autowired
	private SysUserService SysUserService;
	

	/**
	 * 跳转登陆页面
	 * @return
	 */
	@RequestMapping("loginUI.html")
	public String loginUI(){
		  return "login";
	  } 
	/**
	 * 登陆操作
	 * @param username
	 * @param password
	 * @param response
	 * @return
	 */
	@RequestMapping("/doLogin")
	@ResponseBody
	public SysResult login(String username,String password,HttpServletResponse response){
		logger.info("-----进入登陆方法-----");
		try {
			//获取秘钥
			SysUser sysUser=new SysUser();
			sysUser.setUsername(username);
			sysUser.setPassword(password);
			String ticket = SysUserService.findUserByUP(sysUser);
			//将数据保存到Cookie中
			Cookie cookie = new Cookie("ZLB_TICKET", ticket);
			//0:立即删除  -1 关闭会话后删除    数字:生命周期 秒
			cookie.setMaxAge(60 * 30);//Cookie保存2小数
			cookie.setPath("/");//表示所有的用户共享Cookie
			response.addCookie(cookie);
			return SysResult.oK();//数据正确返回
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return SysResult.build(201,"用户登陆失败,请核对用户名与密码！");
	}
	/**
	 * 密码验证成功后跳转首页
	 * @param request
	 * @return
	 */
	@RequestMapping("indexUI.html")
	public String indexUI(HttpServletRequest request){
		logger.info("-----indexUI-----");
		try {
			Cookie[] cookies = request.getCookies();
			for(Cookie cookie : cookies){
			    String name=cookie.getName();
			    if(name.equals("ZLB_TICKET")) {
			    	if(!StringUtils.isEmpty(cookie.getValue())) {
			    		 return "starter";
			    	}
			    }
			   
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		  return "login";
	  }
	/**
	 * 加载分页插件
	 * @return
	 */
	@RequestMapping("pageUI.html")
	public String pageUI() {
		return "/common/page";
	}
	@RequestMapping("/logout.html")
	public String logout(HttpServletRequest request,HttpServletResponse response){
		
		//1.获取Cookie数据
		Cookie[] cookies = request.getCookies();
		String ticket = null;
		for (Cookie cookie : cookies) {
			if("ZLM_TICKET".equals(cookie.getName())){
				ticket = cookie.getValue();
			}
		}
		//2.删除Cookie
		Cookie cookie = new Cookie("ZLB_TICKET","");
		cookie.setMaxAge(0);
		cookie.setPath("/");
		response.addCookie(cookie);
		//3.重定向到系统首页
		return "redirect:login";
	}

	  
}
