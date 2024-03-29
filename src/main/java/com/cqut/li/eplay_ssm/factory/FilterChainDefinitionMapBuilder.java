package com.cqut.li.eplay_ssm.factory;

import java.util.LinkedHashMap;

public class FilterChainDefinitionMapBuilder {

	/***
	 * anon 可以被匿名访问
	 * authc 必须认证（登录）后才有可能访问的页面
	 * logout 登出
	 * roles角色过滤器
	 * @return
	 */
	public LinkedHashMap<String, String> buildFilterChainDefinitionMap(){
		LinkedHashMap<String, String> map = new LinkedHashMap<>();

		map.put("/login.jsp", "anon");
		map.put("/user/login", "anon");
		map.put("/index.jsp", "authc");
		map.put("/personal.jsp", "authc");
		map.put("/management.jsp", "anon");
//		map.put("/management.jsp", "authc, roles[admin]");


//		map.put("/user/login", "anon");
//		map.put("/index.jsp", "anon");
//		map.put("/user/register", "anon");
//		map.put("/logout", "logout");
//		map.put("/user.jsp", "authc,roles[user]");
//		map.put("/admin.jsp", "authc,roles[admin]");
//		map.put("/list.jsp", "user");
//
//		map.put("/**", "authc");
		
		return map;
	}
	
}
