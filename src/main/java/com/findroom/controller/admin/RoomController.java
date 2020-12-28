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
import com.findroom.service.IRoomService;
import com.findroom.utils.FormUtil;



@WebServlet(urlPatterns = {"/admin-room-list"})
public class RoomController extends HttpServlet {

	private static final long serialVersionUID = 4965199485492466775L;
	
	@Inject
	private IRoomService roomService;
	
	


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RoomModel roomModel = new RoomModel();
		roomModel.setListResult(roomService.findAll());
		req.setAttribute("room", roomModel);
		RequestDispatcher rd = req.getRequestDispatcher("/views/admin/room/list_room.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
