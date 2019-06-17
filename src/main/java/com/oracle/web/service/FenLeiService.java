package com.oracle.web.service;

import java.util.List;


import com.oralce.web.bean.Fenlei;
import com.oralce.web.bean.PageBean;
import com.oralce.web.bean.User;

public interface FenLeiService {

	List<Fenlei> selectAll();

	int insert(Fenlei fenlei);

	Fenlei selectByPrimaryKey(Integer id);

	//void delete(Fenlei fenlei);

	PageBean<Fenlei> showAllPagehelper(Integer pageNow);

	PageBean<Fenlei> selectByPage(Integer pageNow,int pageSize);

	void update(Fenlei fenlei);

	List<Fenlei> showUserByIds(String[] arr);

	List<Fenlei> list2();

	void delete(String[] arr);

	

}
