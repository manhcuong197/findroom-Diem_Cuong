package com.findroom.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.findroom.utils.FormUtil;
import com.findroom.utils.SessionUtil;
import com.findroom.model.UserModel;
import com.findroom.service.IUserService;

@WebServlet(urlPatterns = { "/trang-chu","/Dang-nhap","/Dang-ky","/thoat" })
public class HomeController extends HttpServlet {

	private static final long serialVersionUID = -1539055028511515030L;
	
	
	@Inject
	private IUserService userService;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String action = req.getParameter("action");
		if(action != null && action.equals("login")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/login.jsp");
			rd.forward(req, resp);
		} else if(action != null && action.equals("signup")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/signup.jsp");
			rd.forward(req, resp);
		}
		else if(action != null && action.equals("logout")) {
			SessionUtil.getInstance().removeValue(req, "USERMODEL");
			resp.sendRedirect(req.getContextPath() + "/trang-chu");
		} else {
		RequestDispatcher rd = req.getRequestDispatcher("/views/web/home.jsp");
		rd.forward(req, resp);
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String action = req.getParameter("action");
		if(action != null && action.equals("login")) {
			UserModel user = FormUtil.toModel(UserModel.class, req);
			user = userService.findByUserNameAndPassword(user.getUsername(), user.getPassword());
			if(user != null) {
				SessionUtil.getInstance().putValue(req, "USERMODEL", user);;
				if(user.getRoleModel().getRole_user().equals("owner")) {
					resp.sendRedirect(req.getContextPath() + "/trang-chu");
				} else if(user.getRoleModel().getRole_user().equals("Admin")) {
					resp.sendRedirect(req.getContextPath() + "/admin-home");
				}
			} else {
				resp.sendRedirect(req.getContextPath() + "/Dang-nhap?action=login&message=msg_invalid");
			}
		}
	}
	}


