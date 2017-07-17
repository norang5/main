package com.shoes.model;

public class ABean {
	String id;

	public String getId(){
		return id;
	}

	public void setId(String id){
		this.id = id;
	}

	@Override
	public String toString(){
		return id;
	}
}
