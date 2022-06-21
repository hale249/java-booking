package com.hotel.booking.services.impl;

import com.hotel.booking.entities.Booking;
import com.hotel.booking.repositories.BookingRepository;
import com.hotel.booking.services.BookingService;
import com.hotel.booking.utils.pagination.Paged;
import com.hotel.booking.utils.pagination.Paging;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.awt.print.Book;
import java.util.List;

@Service
public class BookingServiceImpl implements BookingService {

    @Autowired
    private BookingRepository bookingRepository;

    @Override
    public Paged<Booking> listBookings(int current, int pageSize, String searchText) {
        PageRequest request = PageRequest.of(current - 1, pageSize, Sort.by(Sort.Direction.ASC, "id"));
        Page<Booking> booking = bookingRepository.getBooking(searchText, request);
        return new Paged<>(booking, Paging.of(booking.getTotalPages(), current, pageSize));
    }

    @Override
    public Booking create(Booking booking) {
        return bookingRepository.save(booking);
    }

    @Override
    public Booking findById(Long id) {
        return bookingRepository.getById(id);
    }

    @Override
    public List<Booking> findByEmail(String email) {
        return bookingRepository.findBookingByEmail(email);
    }

    @Override
    public int update(Long id, Booking request) {
        return  bookingRepository.update(request.getName(), request.getEmail(), request.getDateCheckin()
                , request.getDateCheckout(), request.getNumberOfPerson(), request.getNumberOfRoom(),
                request.getRoomType(),request.getCurrentId(),request.isDeleted(),request.getId());
    }

    @Override
    public Booking updateBooking(Booking book) {
        return bookingRepository.save(book);
    }

    @Override
    public void deleteById(Long id) {
        bookingRepository.deleteById(id);
    }
}
