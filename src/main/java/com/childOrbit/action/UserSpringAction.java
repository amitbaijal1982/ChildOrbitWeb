package com.childOrbit.action;

import com.childOrbit.bean.UserBo;

public class UserSpringAction{

	//DI via Spring
	UserBo userBo;
	
	public UserBo getUserBo() {
		return userBo;
	}

	public void setUserBo(UserBo userBo) {
		this.userBo = userBo;
	}

	public String execute() throws Exception {
		
		userBo.printUser();
		
		return "success";
		
	}
}