package com.hotel.booking.validates.booking;

import lombok.*;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class BookingRequest {
    private String name;

    @NotBlank(message = "Email không được trống")
    @Email
    private String email;

    private String dateCheckin;

    private String dateCheckout;

    private int numberOfPerson;

    private int numberOfRoom;

    private String roomType;

    private Long currentId;
}
