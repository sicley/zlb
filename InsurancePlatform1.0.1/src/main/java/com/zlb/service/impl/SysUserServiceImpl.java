package com.zlb.service.impl;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zlb.controller.LoginController;
import com.zlb.mapper.SysUserMapper;
import com.zlb.pojo.SysUser;
import com.zlb.service.SysUserService;



@Service
public class SysUserServiceImpl implements SysUserService{
	private static final Logger logger = 
			Logger.getLogger(LoginController.class);
	@Autowired
	private SysUserMapper sysUserMapper;
	@Override
	public String findUserByUP(SysUser sysUser) {
		//将密码加密处理
		sysUser.setPassword(DigestUtils.md5Hex(sysUser.getPassword()));
		SysUser userDB = sysUserMapper.findUserByUP(sysUser);
		if(userDB == null){
			//证明用户名和密码错误
			throw new RuntimeException();
		}
		//用户名和密码正确 生成秘钥
		String ticket = "JT_TICKET_"+System.currentTimeMillis() + sysUser.getUsername();
		ticket = DigestUtils.md5Hex(ticket);
		return ticket;
	}
	 

}
