package com.hotel.booking.services;

import com.hotel.booking.entities.Comment;
import com.hotel.booking.entities.CommentRoom;
import com.hotel.booking.utils.pagination.Paged;

import java.util.List;

public interface CommentRoomService {
    Paged<CommentRoom> listComments(int current, int pageSize, String searchText);

    CommentRoom create(CommentRoom comment);

    CommentRoom findById(Long id);

    CommentRoom update(Long id, CommentRoom comment);

    void deleteById(Long commentId);

    List<CommentRoom> getCommentByRoomId(Long id);

    CommentRoom findCommentById(Long id);
}
