package com.findroom.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.findroom.model.UserModel;
import com.findroom.service.IRoleService;
import com.findroom.service.IUserService;
import com.findroom.utils.FormUtil;



@WebServlet(urlPatterns = {"/admin-user-list"})
public class ManagerUserController extends HttpServlet {

	private static final long serialVersionUID = 4965199485492466775L;
	
	
	@Inject
	private IUserService userService;
	@Inject
	private IRoleService roleService;


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserModel userModel = FormUtil.toModel(UserModel.class, req);
		String type = req.getParameter("type");
		String view ="";
		if(userModel.getType().equals("listUser")){
			userModel.setListResult(userService.findAll());
			req.setAttribute("user", userModel);
			view="/views/admin/room/list_user.jsp";
			
		} else if (userModel.getType().equals("editUser")) {
			if (userModel.getId()!=null) {
				userModel=userService.findOne(userModel.getId());
				
			
			}
			req.setAttribute("role",roleService.findAll() );
			view="/views/admin/room/editUser.jsp";
		}
		
		req.setAttribute("user", userModel);
		RequestDispatcher rd = req.getRequestDispatcher(view);
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
