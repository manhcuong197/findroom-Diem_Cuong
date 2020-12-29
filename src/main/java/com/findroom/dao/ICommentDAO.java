package com.findroom.dao;

import java.util.List;

import com.findroom.model.CommentModel;


public interface ICommentDAO extends GenericDao<CommentModel> {
	List<CommentModel> findById_user(Long id_user);
	List<CommentModel> findById_room(Long id_room);
	List<CommentModel> findAll();
	Long save(CommentModel commentModel);
	void update(CommentModel updateComment);
	void delete(long id);
	CommentModel findOne(Long id);
}
