// MyBatis 연결 실험을 위해 작성한 클래스. 추후 언제든 삭제해도 좋다.
// DROP TABLE BATISTEST PURGE; 도 함께 실행해주자.
// 2017/07/12 - 20:34
package com.shoes.model;

public class TestBatisBean{
	private String id;
	private String password;
	
	public String getId(){
		return id;
	}

	public void setId(String id){
		this.id = id;
	}

	public String getPassword(){
		return password;
	}

	public void setPassword(String password){
		this.password = password;
	}

	@Override
	public String toString(){
		return "[" + id + ", " + password + "]";
	}
}
