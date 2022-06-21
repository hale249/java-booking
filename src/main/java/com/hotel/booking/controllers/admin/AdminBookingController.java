
package com.hotel.booking.controllers.admin;

import com.hotel.booking.constants.JsonStructure;
import com.hotel.booking.entities.*;
import com.hotel.booking.services.impl.BookingServiceImpl;
import com.hotel.booking.services.impl.RoomDetailServiceImpl;
import com.hotel.booking.services.impl.RoomServiceImpl;
import com.hotel.booking.services.impl.UserServiceImpl;
import com.hotel.booking.validates.room.RoomRequest;
import com.hotel.booking.validates.user.CreateUserRequest;
import com.hotel.booking.validates.user.UpdateUserRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.time.Period;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("admin/booking")
public class AdminBookingController {

    @Autowired
    private BookingServiceImpl bookingService;

    @Autowired
    private RoomServiceImpl roomService;

    @Autowired
    private RoomDetailServiceImpl roomDetailService;

    @PostMapping("/create")
    public String store(@Valid @ModelAttribute("booking") Booking booking, BindingResult result,
                         RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            redirectAttributes.addFlashAttribute("error", "Dữ liệu không hợp lệ");
            return "admin/elements/room/create";
        }

        Room room = roomService.findRoomById(booking.getCurrentId());

        Set<RoomDetail> roomDetail = roomDetailService.findRoomByRoomId(room.getId());

        room.setRoomDetails(roomDetail);

        Period period = Period.between(booking.getDateCheckin(), booking.getDateCheckout());
        double diff = Math.abs(period.getDays());

        //        calculator price
        String type = booking.getRoomType();
        double price;
        for (RoomDetail t : room.getRoomDetails()){
            if (t.getRoomType().equals(type)){
                price = diff*t.getPrice();
                booking.setPrice(price);
            }
        }

        if (booking.getId() != null){
            bookingService.updateBooking(booking);
        }
        redirectAttributes.addFlashAttribute("success", "Cập nhật booking thành công");

        return "redirect:/admin/booking";
    }

    @GetMapping(value = "")
    public String index(@RequestParam(value = "current", required = false, defaultValue = JsonStructure.Pagination.CURRENT) int current,
                        @RequestParam(value = "pageSize", required = false, defaultValue = JsonStructure.Pagination.PAGE_SIZE) int pageSize,
                        @RequestParam(value = "searchText", required = false, defaultValue = "") String searchText, Model model) {

        model.addAttribute("searchText", searchText);
        model.addAttribute("bookings", bookingService.listBookings(current, pageSize, searchText));

        return "admin/elements/booking/index";
    }

    @GetMapping(value = "/create")
    public String create(Model model) {
        model.addAttribute("booking", new Booking());
        return "admin/elements/booking/create";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") long id, Model model) {
        Booking booking = bookingService.findById(id);
        if (booking == null) {
            return "admin/elements/errors/404";
        }
        model.addAttribute("booking", booking);

        return "admin/elements/booking/edit";
    }


    @PostMapping("{id}")
    public String update(@PathVariable("id") long id, @Valid @ModelAttribute("user") Booking booking,
                                BindingResult result, RedirectAttributes redirectAttributes) throws Exception {
        if (result.hasErrors()) {
            redirectAttributes.addFlashAttribute("error", "Dữ liệu không hợp lệ");

            return "admin/elements/users/edit";
        }

        bookingService.update(id, booking);

        redirectAttributes.addFlashAttribute("success", "Cập nhật thành công");

        return "redirect:/admin/booking";
    }

    @GetMapping(value = "/delete/{id}")
    public String destroy(@PathVariable Long id,  RedirectAttributes redirectAttributes) {
        Booking booking = bookingService.findById(id);
        if (booking == null) {
            redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
        }

        bookingService.deleteById(id);
        redirectAttributes.addFlashAttribute("success", "Xóa đặt phòng thành công");

        return "redirect:/admin/booking";
    }
}
