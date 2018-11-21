package com.zlb.mapper;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.zlb.pojo.SysUser;
/**此接口的实现类会交给Spring创建*/
public interface SysUserMapper {
	SysUser findUserByUP(SysUser sysUser);
	
	
	

}






