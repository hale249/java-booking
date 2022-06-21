package com.hotel.booking.entities;

import com.hotel.booking.constants.DBConstants;
import lombok.*;
import org.hibernate.annotations.Where;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;
import java.util.Set;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Entity
@ToString
@Where(clause="deleted=0")
@Table(name = DBConstants.Documents.ROOMS)
public class Room extends BaseEntity{

    @NotNull
    @Column(name = "name")    
    private String name;

    @Column(columnDefinition = "text")
    private String image;

    private String unit;

    private double price;

    private int numberAmount;

    private String roomSize;

    private String location;


    private String bedSize;

    @Column(columnDefinition = "text")
    private String description;

    @OneToMany(mappedBy = "room", fetch = FetchType.LAZY,
            cascade = CascadeType.ALL)
    private Set<RoomTags> roomTag;

    @OneToMany(mappedBy = "room", fetch = FetchType.LAZY,
            cascade = CascadeType.ALL)
    private Set<RoomImages> roomImages;

    @OneToMany(mappedBy = "room", fetch = FetchType.LAZY,
            cascade = CascadeType.ALL)
    private Set<RoomDetail> roomDetails;

    @Column(name = "deleted", columnDefinition = "boolean default false")
    private boolean deleted = Boolean.FALSE;

}
