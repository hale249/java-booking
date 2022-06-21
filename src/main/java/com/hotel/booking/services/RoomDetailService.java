package com.hotel.booking.services;

import com.hotel.booking.entities.Room;
import com.hotel.booking.entities.RoomDetail;
import com.hotel.booking.utils.pagination.Paged;

import java.util.List;
import java.util.Set;

public interface RoomDetailService {
    RoomDetail create(RoomDetail room);

    RoomDetail findById(Long id);

    RoomDetail update(Long id, RoomDetail room);

    Set<RoomDetail> findRoomByRoomId(Long id);

    int updateDeleted(boolean deleted,Long id, String type);

    void deleteById(Long roomId);

    RoomDetail findRoomById(Long id);
}
