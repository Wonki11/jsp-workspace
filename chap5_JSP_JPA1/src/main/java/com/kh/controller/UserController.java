package com.kh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.kh.entity.JSPUser;
import com.kh.service.UserService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	
	@GetMapping("/users")
	public String getUsers(Model model) {
		List<JSPUser> users = userService.getAllUsers();
		model.addAttribute("users" , users);
		return "user"; // jsp 파일 이름 (webapp/WEB-INF/jsp/user.jsp)
	}
	
	@PostMapping("/addUser")
	public String addUser(JSPUser user) {
		userService.addUser(user);
		return "redirect:/users";
	}
	
}
