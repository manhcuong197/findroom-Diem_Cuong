package com.findroom.dao.impl;

import java.util.List;

import com.findroom.mapper.CommentMapper;
import com.findroom.dao.ICommentDAO;
import com.findroom.model.CommentModel;

public class CommentDAO extends AbstractDAO<CommentModel> implements ICommentDAO {

	@Override
	public Long save(CommentModel commentModel) {
		String sql = "INSERT INTO comment (id_user, confirm_comment, time, id_room,userComment) VALUES(?,?,?,?,?)";
		return insert(sql, commentModel.getId_user(), commentModel.getConfirm_comment(), commentModel.getTime(),
				commentModel.getId_room(),commentModel.getUserComment());
	}

	@Override
	public void update(CommentModel commentModel) {
		String sql = "UPDATE comment SET id_user=?, confirm_comment=?,time=?,id_room=?,userComment=? WHERE id=?";
		update(sql, commentModel.getId_user(), commentModel.getConfirm_comment(), commentModel.getTime(),commentModel.getId_room()
			,commentModel.getUserComment(), commentModel.getId());
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM comment WHERE id = ?";
		update(sql, id);
	}

	@Override
	public CommentModel findOne(Long id) {
		String sql = "SELECT * FROM comment WHERE id=?";
		List<CommentModel> commentModels = query(sql, new CommentMapper(), id);
		return commentModels.isEmpty() ? null : commentModels.get(0);
	}

	@Override
	public List<CommentModel> findById_room(Long id_room) {
		String sql = "SELECT * FROM comment WHERE id_room=?";
		return query(sql, new CommentMapper(),id_room);
	}

	@Override
	public List<CommentModel> findById_user(Long id_user) {
		String sql = "SELECT * FROM comment WHERE id_user=?";
		return query(sql, new CommentMapper(),id_user);
	}

	@Override
	public List<CommentModel> findAll() {
		String sql = "SELECT * FROM comment";
		return query(sql, new CommentMapper());
	}


}
