package com.hotel.booking.services;

import com.hotel.booking.entities.Booking;
import com.hotel.booking.entities.Room;
import com.hotel.booking.utils.pagination.Paged;

import java.util.List;

public interface BookingService {
    Paged<Booking> listBookings(int current, int pageSize, String searchText);

    Booking create(Booking booking);

    Booking findById(Long id);

    List<Booking> findByEmail(String email);

    int update(Long id, Booking booking);

    Booking updateBooking(Booking book);

    void deleteById(Long bookingId);
}
