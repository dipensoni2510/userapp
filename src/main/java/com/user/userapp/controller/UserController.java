package com.user.userapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.user.userapp.entity.User;
import com.user.userapp.service.UserServiceImpl;


@Controller
public class UserController {

	@Autowired
	UserServiceImpl employee1ServiceImpl;

	@RequestMapping(value = "/add-user", method = RequestMethod.GET)
	public ModelAndView addArticle() {
		ModelAndView model = new ModelAndView();

		User user = new User();
		model.addObject("userForm", user);
		model.setViewName("registration");

		return model;
	}

	@RequestMapping(value = "/save-user", method = RequestMethod.POST)
	public ModelAndView registrationView(@ModelAttribute("userForm") User user) {
		employee1ServiceImpl.saveUser(user);
		return new ModelAndView("redirect:/home");
	}

	@RequestMapping(value = "/deleteuser/{id}", method = RequestMethod.GET)
	public ModelAndView deleteEmployee(@PathVariable("id") int id) {
		employee1ServiceImpl.deleteUser(id);
		return new ModelAndView("redirect:/home");
	}

	@RequestMapping(value = "/updateuser/{id}", method = RequestMethod.GET)
	public ModelAndView editArticle(@PathVariable int id) {
		ModelAndView model = new ModelAndView();

		User user = employee1ServiceImpl.getUserById(id);
		model.addObject("userForm", user);
		model.setViewName("registration");

		return model;
	}

	@RequestMapping(value = {"/home","/"}, method = RequestMethod.GET)
	public ModelAndView homeView() {
		ModelAndView model = new ModelAndView("home");
		List<User> userList = employee1ServiceImpl.getAllUser();
		model.addObject("userList", userList);

		return model;
	}
}
