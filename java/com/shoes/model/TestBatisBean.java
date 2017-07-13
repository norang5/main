// MyBatis 연결 실험을 위해 작성한 클래스. 추후 언제든 삭제해도 좋다.
// DROP TABLE BATISTEST PURGE; 도 함께 실행해주자.
// 2017/07/12 - 20:34
package com.shoes.model;

public class TestBatisBean{
	String user;
	String password;
	public String getUser(){
		return user;
	}
	
	public void setUser(String user){
		this.user = user;
	}
	
	public String getPassword(){
		return password;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
}
