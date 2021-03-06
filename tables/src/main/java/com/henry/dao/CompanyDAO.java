package com.henry.dao;

import com.henry.bean.Company;

public interface CompanyDAO {
	    int deleteByPrimaryKey(Long id);

	    int insert(Company record);

	    int insertSelective(Company record);

	    Company selectByPrimaryKey(Long id);

	    int updateByPrimaryKeySelective(Company record);

	    int updateByPrimaryKey(Company record);
}
