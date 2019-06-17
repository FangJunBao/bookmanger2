package com.oracle.web.mapper;

import com.oralce.web.bean.Fenlei;
import java.util.List;

public interface FenleiMapper {
    //int deleteByPrimaryKey(Integer id);

    int insert(Fenlei record);

    Fenlei selectByPrimaryKey(Integer id);

    List<Fenlei> selectAll();

    int updateByPrimaryKey(Fenlei record);
    
    int selectCount();
    
    List<Fenlei> selectBypage(int index);

	List<Fenlei> sesectAllBypage();

	List<Fenlei> showUserById(String[] arr);

	List<Fenlei> selectAll2();
	
	//批量删除
	int deleteByPrimaryKey(String[] arr);
}