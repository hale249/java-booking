package com.hotel.booking.validates.room;

import com.hotel.booking.entities.RoomDetail;
import com.hotel.booking.entities.RoomImages;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.Column;
import java.util.List;
import java.util.Set;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class RoomRequest {

    private Long id;
    private String title;
    private double price;
    private String unit;
    private MultipartFile image;
    private Resource imageResource;
    private List<MultipartFile> imageSlider;
    private String typeRoom;

    private String description;

    private int numberAmount;

    private int roomSize;

    private String location;

    private String bedSize;

    private Set<RoomImages> roomImages;

    private Set<RoomDetail> roomDetails;

    @Override
    public String toString() {
        return "RoomRequest{" +
                "title='" + title + '\'' +
                ", price=" + price +
                ", unit='" + unit + '\'' +
                ", image='" + image + '\'' +
                ", imageSlider='" + imageSlider + '\'' +
                ", tags='" + typeRoom + '\'' +
                ", descriptions='" + description + '\'' +
                '}';
    }
}
