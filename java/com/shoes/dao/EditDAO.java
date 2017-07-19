package com.shoes.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoes.model.EditBean;

@Repository
public class EditDAO{
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	public List<EditBean> getSelect() {
        return sessionTemplate.selectList("selectList");
    }

    public EditBean getSelectOne(int idx) {
        return sessionTemplate.selectOne("selectOne");
    }
    
    public void insert(EditBean editBean) throws Exception{
    	sessionTemplate.insert("insertOne", editBean);
    }
    
	public void update(EditBean bbsVo){
		sessionTemplate.update("updateOne", bbsVo);
	}

	public void delete(int idx){
		sessionTemplate.delete("deleteOne", idx);
		// throw new RuntimeException("강제로 오류를 발생시켜봄!!");
	}
}
