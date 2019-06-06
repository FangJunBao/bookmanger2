package com.oracle.web.service;

import com.oralce.web.bean.Admin;

public interface AdminService {
	
	int save(Admin admin);

	Admin login(String username);
}
