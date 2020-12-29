package com.findroom.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.findroom.model.RoomModel;
import com.findroom.model.UserModel;
import com.findroom.service.IAddressService;
import com.findroom.service.IRoomService;
import com.findroom.service.IRoom_typeService;
import com.findroom.service.IUserService;
import com.findroom.utils.FormUtil;



@WebServlet(urlPatterns = {"/admin-room-list"})
public class RoomController extends HttpServlet {

	private static final long serialVersionUID = 4965199485492466775L;
	
	@Inject
	private IRoomService roomService;
	
	@Inject
	private IRoom_typeService room_typeService;
	@Inject
	private IAddressService addressService;
	@Inject
	private IUserService userService;


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RoomModel roomModel = FormUtil.toModel(RoomModel.class, req);
		String type = req.getParameter("type");
		String view ="";
		if(roomModel.getType().equals("list")){
			roomModel.setListResult(roomService.findAll());
			req.setAttribute("room", roomModel);
			view="/views/admin/room/list_room.jsp";
			
		} else if (roomModel.getType().equals("edit")) {
			if (roomModel.getId()!=null) {
				roomModel=roomService.findOne(roomModel.getId());
				
			
			}
			req.setAttribute("user", userService.findAll());
			req.setAttribute("type",room_typeService.findAll() );
			req.setAttribute("address", addressService.findAll());
			view="/views/admin/room/edit.jsp";
		}
		
		req.setAttribute("room", roomModel);
		RequestDispatcher rd = req.getRequestDispatcher(view);
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
