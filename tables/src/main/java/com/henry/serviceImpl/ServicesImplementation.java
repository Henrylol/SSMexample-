package com.henry.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.henry.bean.Company;
import com.henry.bean.Union;
import com.henry.bean.User;
import com.henry.dao.CompanyDAO;
import com.henry.dao.UserDAO;
import com.henry.service.Services;

@Service("Service")
public class ServicesImplementation implements Services {
    @Resource
    private UserDAO userDAO;
    @Resource
    private CompanyDAO  companyDAO;
    
    @Override 
    public Union getUnionById(long id){
    	return this.userDAO.selectByPrimaryKeyUnion(id);
    }
    
    @Override
	public  User getUserById(long id) {
		return this.userDAO.selectByPrimaryKey(id);
	}

	@Override
	public Company getCompanyById(long id) {
		return this.companyDAO.selectByPrimaryKey(id);
	}

	/*@Override
	public void showUnionsByPage(HttpServletRequest request, Model model, long id) {
		// TODO Auto-generated method stub
		String pageNow = request.getParameter("pageNow");
		Page page = null;
		List<Union> unions= new ArrayList<Union>();
		int totalCount =(int) userDAO.getRecordCount(id);
		if (pageNow != null) {
			page = new Page(totalCount, Integer.parseInt(pageNow));
			unions = this.userDAO.selectByPage(page.getStartPos(), page.getPageSize(), id);
		} else{
			page = new Page(totalCount, 1);
			unions =this.userDAO.selectByPage(page.getStartPos(), page.getPageSize(), id);
		}
		model.addAttribute("unions",unions);
		model.addAttribute("page",page);
	}*/
	
    //得到所有的联合查询的集合
	@Override
	public List<Union> getAllUnionsById(long endIndexId) {
		
		List<Union> unions = new ArrayList<Union>();
		for(long i=1;i<=endIndexId;i++)
		{
			unions.add(this.userDAO.selectByPrimaryKeyUnion(i));
		}
		return unions;
		
		
	}
	
   //得到最后ID数
	@Override
	public int getEndIndexId() {
		return this.userDAO.getRecordCount();
	}

	

}
