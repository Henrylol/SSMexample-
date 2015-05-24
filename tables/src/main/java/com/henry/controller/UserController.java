package com.henry.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.henry.bean.Union;
import com.henry.service.Services;
import com.henry.util.Page;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private Services services;

	@RequestMapping("/showResult")
	public String toIndex(HttpServletRequest request, Model model) {
		
		String pageNow = request.getParameter("pageNow");
		
		Page page = null;
		
		long unionId = (long) this.services.getEndIndexId();
		List<Union> unions = this.services.getAllUnionsById(unionId);
		
		if (pageNow != null) {
			page = new Page((int) unionId, Integer.parseInt(pageNow));
		} else {
			page = new Page((int) unionId, 1);
		}
		
		int startPos = page.getStartPos();
		int endPos= startPos + 4;
		model.addAttribute("unions", unions);
		model.addAttribute("page", page);
		model.addAttribute("startPos",startPos);
		model.addAttribute("endPos",endPos);
		return "showResult";
	}

}
