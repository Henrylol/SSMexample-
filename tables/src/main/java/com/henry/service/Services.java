package com.henry.service;

import java.util.List;

import com.henry.bean.Company;
import com.henry.bean.Union;
import com.henry.bean.User;

public interface Services {
	public User getUserById(long id);
	public Company getCompanyById(long id);
	public Union getUnionById(long id);
 /*	void showUnionsByPage(HttpServletRequest request,Model model,long id);*/
	public List<Union> getAllUnionsById(long endIndexId);
	public int getEndIndexId();
}
