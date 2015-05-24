package com.henry.dao;

import com.henry.bean.Union;
import com.henry.bean.User;

public interface UserDAO {
	    int deleteByPrimaryKey(Long id);

	    int insert(User record);

	    int insertSelective(User record);

	    User selectByPrimaryKey(Long id);

	    int updateByPrimaryKeySelective(User record);

	    int updateByPrimaryKey(User record);
	    
	    Union  selectByPrimaryKeyUnion(Long id);	    	    
	    //拿到总记录数    
	    public int getRecordCount();
}
