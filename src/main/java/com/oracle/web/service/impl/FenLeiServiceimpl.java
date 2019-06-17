package com.oracle.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.oracle.web.mapper.FenleiMapper;
import com.oracle.web.service.FenLeiService;
import com.oralce.web.bean.Fenlei;
import com.oralce.web.bean.PageBean;


@Service
public class FenLeiServiceimpl implements FenLeiService {

	
	@Autowired
	private FenleiMapper fenleiMapper;

	@Override
	@Transactional(readOnly=true)
	public List<Fenlei> selectAll() {
		// TODO Auto-generated method stub
		return this.fenleiMapper.selectAll();
	}

	@Override
	@Transactional
	public int insert(Fenlei fenlei) {
		// TODO Auto-generated method stub
		return this.fenleiMapper.insert(fenlei);
	}

	@Override
	@Transactional
	public Fenlei selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return this.fenleiMapper.selectByPrimaryKey(id);
	}

//	@Override
//	@Transactional
//	public void delete(Fenlei fenlei) {
//		// TODO Auto-generated method stub
//		 this.fenleiMapper.deleteByPrimaryKey(fenlei.getId());
//	}

	@Override
	@Transactional
	public PageBean<Fenlei> selectByPage(Integer pageNow, int pageSize) {
		PageBean<Fenlei> pb = new PageBean<Fenlei>();

		pb.setPageNow(pageNow);

		pb.setPageSize(pageSize);
		
		//查看有多少条
		int sum=fenleiMapper.selectCount();
		
		pb.setCounts(sum);
		
		//从第几条开始
		int index=(pageNow-1)*pageSize;
		
		List<Fenlei> list=this.fenleiMapper.selectBypage(index);
		
		pb.setBeanList(list);
		
		return pb;
	}
	
	@Override
	@Transactional
	public PageBean<Fenlei> showAllPagehelper(Integer pageNow) {
		// TODO Auto-generated method stub
		PageBean<Fenlei> pb = new PageBean<Fenlei>();
		
		PageHelper.startPage(pageNow,5);
		
		List<Fenlei> list=this.fenleiMapper.sesectAllBypage();
		
	//	System.out.println(list);
		
		pb.setBeanList(list);

		PageInfo<Fenlei> pi=new PageInfo<Fenlei>(list);
		
		pb.setCounts((int) pi.getTotal());
		
		pb.setPageNow(pi.getPageNum());

		pb.setPageSize(5);
		
		return pb;
	}

	@Override
	public void update(Fenlei fenlei) {
		// TODO Auto-generated method stub
		this.fenleiMapper.updateByPrimaryKey(fenlei);
	}

	@Override
	public List<Fenlei> showUserByIds(String[] arr) {
		// TODO Auto-generated method stub
		return this.fenleiMapper.showUserById(arr);
	}

	@Override
	public List<Fenlei> list2() {
		// TODO Auto-generated method stub
		return this.fenleiMapper.selectAll2();
	}

	@Override
	@Transactional
	public void delete(String[] arr) {
		// TODO Auto-generated method stub
		
		this.fenleiMapper.deleteByPrimaryKey(arr);
		
	}
}
