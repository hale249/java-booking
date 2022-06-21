package com.hotel.booking.services.impl;

import com.hotel.booking.entities.Booking;
import com.hotel.booking.entities.Comment;
import com.hotel.booking.repositories.CommentRepository;
import com.hotel.booking.services.CommentService;
import com.hotel.booking.utils.pagination.Paged;
import com.hotel.booking.utils.pagination.Paging;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentRepository commentRepository;

    @Override
    public List<Comment> listComments() {
        return commentRepository.findAll();
    }

    @Override
    public Comment create(Comment comment) {
        return commentRepository.save(comment);
    }

    @Override
    public Comment findById(Long id) {
        return null;
    }


    @Override
    public Comment update(Long id, Comment comment) {
        return null;
    }

    @Override
    public void deleteById(Long commentId) {

    }

    @Override
    public Comment findCommentById(Long id) {
        return null;
    }

    @Override
    public List<Comment> findCommentsById(Long id) {
        return commentRepository.findAllByBlog_id(id);
    }

}
