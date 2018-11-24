package com.zlb.controller;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@RequestMapping("loginUI")
	public String loginUI(){
		  return "login";
	  } 
	@RequestMapping("/doLogin")
	@ResponseBody
	public SysResult login(String username,String password,HttpServletResponse response){
		logger.info("-----进入登陆方法-----");
		logger.info(username+password);
		try {
			//获取秘钥
			SysUser sysUser=new SysUser();
			sysUser.setUsername(username);
			sysUser.setPassword(password);
			String ticket = SysUserService.findUserByUP(sysUser);
			//将数据保存到Cookie中
			Cookie cookie = new Cookie("ZLB_TICKET", ticket);
			//0:立即删除  -1 关闭会话后删除    数字:生命周期 秒
			cookie.setMaxAge(60 * 60 * 48);//Cookie保存2天
			cookie.setPath("/");//表示所有的用户共享Cookie
			response.addCookie(cookie);
			return SysResult.oK();//数据正确返回
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return SysResult.build(201,"用户登陆失败,请核对用户名与密码！");
	}
	@RequestMapping("indexUI.do")
	public String indexUI(){
		  return "starter";
	  }
	/**
	 * 加载分页插件
	 * @return
	 */
	@RequestMapping("pageUI.do")
	public String pageUI() {
		return "/common/page";
	}

	  
}
