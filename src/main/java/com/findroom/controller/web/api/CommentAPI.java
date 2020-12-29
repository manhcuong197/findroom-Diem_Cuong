package com.findroom.controller.web.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.findroom.model.CommentModel;
import com.findroom.model.UserModel;
import com.findroom.service.ICommentService;
import com.findroom.utils.HttpUtil;
import com.findroom.utils.SessionUtil;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet(urlPatterns = {"/api-comment"})
public class CommentAPI extends HttpServlet {

	private static final long serialVersionUID = -9154452985913877050L;
	
	@Inject
	private ICommentService commentService;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		CommentModel commentModel = HttpUtil.of(req.getReader()).toModel(CommentModel.class);
		commentModel.setUserComment(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getUsername());
		commentModel = commentService.save(commentModel);
		mapper.writeValue(resp.getOutputStream(), commentModel);
	}
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		CommentModel commentModel = HttpUtil.of(req.getReader()).toModel(CommentModel.class);
		commentModel.setUserComment(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getUsername());
		commentModel = commentService.update(commentModel);
		mapper.writeValue(resp.getOutputStream(), commentModel);
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		CommentModel commentModel = HttpUtil.of(req.getReader()).toModel(CommentModel.class);
		commentService.delete(commentModel.getIds());
		mapper.writeValue(resp.getOutputStream(), "{}");
	}

}
