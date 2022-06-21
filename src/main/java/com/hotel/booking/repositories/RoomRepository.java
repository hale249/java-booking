package com.hotel.booking.repositories;

import com.hotel.booking.entities.Room;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.time.LocalDate;
import java.util.List;

@Repository
public interface RoomRepository extends JpaRepository<Room, Long>{
    @Query("SELECT r FROM Room r WHERE r.name LIKE %?1%")
    Page<Room> listRooms(String searchText, Pageable pageable);

    @Modifying
    @Query("update Room r set r.deleted=true where r.id = ?1")
    void deleteById(Long id);

    @Query(value = "SELECT * FROM rooms r WHERE r.id=?1",nativeQuery = true)
    Room findRoomById(Long id);

    @Modifying
    @Query(value = "select * from rooms where id != ?1 ORDER BY RAND() limit 2 ", nativeQuery = true)
    List<Room> findRoomLimit(Long offset);

    @Modifying
    @Query("select r from Room r inner join  RoomDetail d on r.id = d.id where r.deleted=true and d.roomType=?1 ")
    List<Room> findAll(String roomType);

    @Modifying
    @Transactional
    @Query("update Room u " +
            "set u.deleted=?1 "+
            "where u.id = ?2")
    int update(boolean deleted, Long id);
}
