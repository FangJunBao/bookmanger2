package com.oracle.web.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.oracle.web.service.AdminService;
import com.oralce.web.bean.Admin;

public class AdminHandler {
	
	@Autowired
	private AdminService adminService;

	@RequestMapping(value = "/admin")
	public String register(String name, String phone, String username, String password,
			@RequestParam("touxiang") MultipartFile filetx) throws IllegalStateException, IOException {

		File file = new File("D:\\" + filetx.getOriginalFilename());

		filetx.transferTo(file);  

		String touxiang = "D:\\" + filetx.getOriginalFilename();

		System.out.println(touxiang);

		Admin admin = new Admin(null, name, phone, username, password,touxiang);

		adminService.save(admin);

		return "login";

	}

	@RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
	public String login(Admin admin) {

		// System.out.println(admin.getUsername());

		Admin a = adminService.login(admin.getUsername());

		if (a == null) {

			return "login";

		} else if (!a.getPassword().equals(admin.getPassword())) {

			return "login";

		} else {

			return "index";

		}

	}
}

