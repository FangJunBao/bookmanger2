package com.oracle.web.mapper;

import com.oralce.web.bean.Admin;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface AdminMapper {
	
    int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    Admin selectByPrimaryKey(Integer id);

    List<Admin> selectAll();
	
	int updateByPrimaryKey(Admin record);

	Admin login(String username);

	Admin showAdmin(String uname);

	Admin validatePassword(Admin admin);

	Admin updatePassword(@Param("username") String uname, @Param("password")String newpassword);
}