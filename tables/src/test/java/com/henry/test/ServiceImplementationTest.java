package com.henry.test;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.henry.bean.Union;
import com.henry.service.Services;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})


public class ServiceImplementationTest {
	private static Logger logger = Logger.getLogger(ServiceImplementationTest.class);
//	private ApplicationContext ac = null;
	@Resource
	private Services services = null;
	
//	@Before
//	public void before() {
//		ac = new ClassPathXmlApplicationContext("applicationContext.xml");
//		userService = (IUserService) ac.getBean("userService");
//	}

	
	@Test
	public void test() {
		
		for(long i=1;i<11;i++){
		/*User user = services.getUserById(i);*/
		Union union = services.getUnionById(i);
	
		logger.info(JSON.toJSONString(union));
		/*logger.info(JSON.toJSONString(user));*/
		}
	}

}
