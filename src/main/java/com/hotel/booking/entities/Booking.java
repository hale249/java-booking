package com.hotel.booking.entities;

import com.hotel.booking.constants.DBConstants;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Where;
import org.springframework.data.annotation.LastModifiedDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Entity
@Where(clause="deleted=0")
@Table(name = DBConstants.Documents.BOOKING)
public class Booking extends BaseEntity{
    private String name;

    @NotNull
    @Email
    private String email;

    @Column(columnDefinition = "DATE")
    private LocalDate dateCheckin;

    @LastModifiedDate
    @Column(columnDefinition = "DATE")
    private LocalDate dateCheckout;

    private int numberOfPerson;

    private int numberOfRoom;

    private String roomType;

    private Long currentId;

    private double price;

    private String status;

    private String payment;

    @Column(name = "deleted", columnDefinition = "boolean default false")
    private boolean deleted = Boolean.FALSE;
}
