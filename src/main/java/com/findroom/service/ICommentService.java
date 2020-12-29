package com.findroom.service;

import java.util.List;

import com.findroom.model.CommentModel;


public interface ICommentService {
	CommentModel save(CommentModel commentModel);
	CommentModel update(CommentModel commentModel);
	void delete(long[] ids);

	List<CommentModel> findById_room(Long id_room);
	
}
