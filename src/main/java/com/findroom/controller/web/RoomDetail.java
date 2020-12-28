package com.findroom.controller.web;

import java.io.IOException;

import javax.enterprise.inject.New;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.findroom.model.RoomModel;
import com.findroom.service.IAddressService;
import com.findroom.service.IRoomService;
import com.findroom.service.IRoom_typeService;
import com.findroom.utils.FormUtil;

@WebServlet(urlPatterns = {"/chi-tiet"})
public class RoomDetail extends HttpServlet {

	private static final long serialVersionUID = 4965199485492466775L;
	@Inject
	private IRoomService roomService;
	@Inject
	private IRoom_typeService room_typeService;
	@Inject
	private IAddressService addressService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id_room = req.getParameter("id");
		Long roomId;
		roomId = Long.parseLong(id_room);
		req.setAttribute("room", roomService.findOne(roomId));
		req.setAttribute("type", room_typeService.findAll());
		req.setAttribute("address", addressService.findAll());
		RequestDispatcher rd = req.getRequestDispatcher("/views/web/RoomDetail.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
