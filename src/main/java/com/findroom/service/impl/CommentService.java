package com.findroom.service.impl;


import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.findroom.dao.ICommentDAO;

import com.findroom.model.CommentModel;

import com.findroom.service.ICommentService;

public class CommentService implements ICommentService {

	@Inject
	private ICommentDAO commentDao;

	@Override
	public CommentModel save(CommentModel commentModel) {
		commentModel.setTime(new Timestamp(System.currentTimeMillis()));
		Long commentId = commentDao.save(commentModel);
		return commentDao.findOne(commentId);
	}

	@Override
	public CommentModel update(CommentModel commentModel) {
		commentModel.setTime(new Timestamp(System.currentTimeMillis()));
		commentDao.update(commentModel);
		return commentDao.findOne(commentModel.getId());
	}

	@Override
	public void delete(long[] ids) {
		for(long id: ids) {
			commentDao.delete(id);
		}
		
	}

	@Override
	public List<CommentModel> findById_room(Long id_room) {
		return commentDao.findById_room(id_room);
	}

	

	
}
