package com.henry.bean;

import java.util.List;

import org.omg.CORBA.PRIVATE_MEMBER;

import com.henry.util.Page;

public class Result{

		// TODO Auto-generated constructor stub
		private List<Union> unions ;
		private Page page;
		
		public List<Union> getUnions() {
			return unions;
		}
	
		public void setUnions(List<Union> unions) {
			for (Union union : unions) {
			     this.unions.add(union);
			}
		}
		
		public Page getPage() {
			return page;
		}
		public void setPage(Page page) {
			this.page = page;
		}
		
		public void Result(List<Union> unions,Page page){
			this.unions = unions;
			this.page = page;
		}
	}

