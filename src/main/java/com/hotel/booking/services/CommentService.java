package com.hotel.booking.services;

import com.hotel.booking.entities.Comment;
import com.hotel.booking.utils.pagination.Paged;

import java.util.List;

public interface CommentService {
    List<Comment> listComments();

    Comment create(Comment comment);

    Comment findById(Long id);

    Comment update(Long id, Comment comment);

    void deleteById(Long commentId);

    Comment findCommentById(Long id);

    List<Comment> findCommentsById(Long id);
}
