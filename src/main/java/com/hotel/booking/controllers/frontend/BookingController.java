package com.hotel.booking.controllers.frontend;

import com.hotel.booking.constants.JsonStructure;
import com.hotel.booking.dto.MailParamDto;
import com.hotel.booking.entities.*;
import com.hotel.booking.services.EmailService;
import com.hotel.booking.services.impl.BookingServiceImpl;
import com.hotel.booking.services.impl.CustomerServiceImpl;
import com.hotel.booking.services.impl.RoomDetailServiceImpl;
import com.hotel.booking.services.impl.RoomServiceImpl;
import com.hotel.booking.utils.MailParamDtoUtil;
import com.hotel.booking.validates.booking.BookingRequest;
import com.hotel.booking.validates.room.RoomRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.mail.MessagingException;
import javax.validation.Valid;
import java.io.IOException;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Objects;
import java.util.Random;

@Controller
@RequestMapping("/booking")
public class BookingController {

    @Autowired
    private BookingServiceImpl bookingService;

    @Autowired
    private EmailService emailService;

    @Autowired
    private RoomServiceImpl roomService;

    @Autowired
    private CustomerServiceImpl customerService;

    @Autowired
    private RoomDetailServiceImpl roomDetailService;
    @GetMapping
    public String pageBooking(@RequestParam(value = "current",
            required = false, defaultValue = JsonStructure.Pagination.CURRENT) int current, @RequestParam(value = "pageSize", required = false, defaultValue = JsonStructure.Pagination.PAGE_SIZE) int pageSize,
                              @RequestParam(value = "searchText", required = false, defaultValue = "") String searchText, Model model) {

        model.addAttribute("searchText", searchText);
        model.addAttribute("bookings", bookingService.listBookings(current, pageSize, searchText));
        model.addAttribute("booking", new Booking());

        return "atoli/elements/book";
    }

    @PostMapping
    public String booking(Model model
            ,@Valid @ModelAttribute("booking") BookingRequest request, BindingResult result,
                          RedirectAttributes redirectAttributes) throws IOException, MessagingException {
        if (result.hasErrors() || isValid(parseLocalDate(request.getDateCheckin()), parseLocalDate(request.getDateCheckout()))) {
            redirectAttributes.addFlashAttribute("error", "Dữ liệu không hợp lệ");
            model.addAttribute("erros","Dữ liệu không hợp lệ");
            model.addAttribute("booking", request);
            if (request.getCurrentId() != null){
                return "redirect:/rooms/"+request.getCurrentId();
            }
            return "atoli/elements/book";
        }
        List<Room> rooms = roomService.findAll(request.getRoomType());

//
        Random random = new Random();

        int index = random.nextInt(rooms.size());

        Room r = rooms.get(index);

        Booking booking = new Booking();

        booking.setName(request.getName());
        booking.setEmail(request.getEmail());
        booking.setDateCheckin(parseLocalDate(request.getDateCheckin()));
        booking.setDateCheckout(parseLocalDate(request.getDateCheckout()));
        booking.setRoomType(request.getRoomType());

        Period period = Period.between(booking.getDateCheckin(), booking.getDateCheckout());
        double diff = Math.abs(period.getDays());

        booking.setNumberOfPerson(request.getNumberOfPerson());

//        calculator price
        String type = request.getRoomType();
        double price;
        for (RoomDetail t : r.getRoomDetails()){
            if (t.getRoomType().equals(type)){
                price = diff*t.getPrice();
                booking.setPrice(price);
            }
        }

        booking.setNumberOfRoom(request.getNumberOfRoom());

        booking.setCurrentId(r.getId());
        if (request.getCurrentId() != null) {
            booking.setCurrentId(request.getCurrentId());
        }
        booking.setPayment("Chưa thanh toán");
        booking.setStatus("Chưa nhận phòng");

//        change status room to fail
        roomService.updateDeleted(true,r.getId());
        roomDetailService.updateDeleted(true, r.getId(),request.getRoomType());

        bookingService.create(booking);

//        add to Customer
        Customer customer = new Customer();
        customer.setTotalPrice(booking.getPrice());
        customer.setEmail(booking.getEmail());
        customer.setName(booking.getName());

        Customer customerExists = customerService.findByEmail(booking.getEmail());
        if (customer.getPhoneNumber() == null || customer.getPhoneNumber() =="" ) {
            customer.setPhoneNumber("0");

        }

        if (Objects.nonNull(customerExists)){
            customer.setId(customerExists.getId());

            customerService.create(customer);
        }else {
            customerService.create(customer);
        }

        MailParamDto mailParamDto =MailParamDtoUtil.mailParamDto(booking.getName(),booking.getEmail()
                ,"http://localhost:8080","abcd");

        emailService.sendMail(mailParamDto);

        return "atoli/elements/book";
    }


//    Convert String to LocalDate
    private LocalDate parseLocalDate(String date){
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd/yyyy");
       return LocalDate.parse(date, formatter);
    }

//    validate
    public boolean isValid(LocalDate in, LocalDate out) {
        return out.isBefore(in);
    }


}
