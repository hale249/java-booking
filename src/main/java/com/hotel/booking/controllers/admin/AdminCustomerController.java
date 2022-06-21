package com.hotel.booking.controllers.admin;

import com.hotel.booking.constants.JsonStructure;
import com.hotel.booking.entities.Booking;
import com.hotel.booking.entities.Customer;
import com.hotel.booking.entities.User;
import com.hotel.booking.services.CustomerService;
import com.hotel.booking.services.impl.BookingServiceImpl;
import com.hotel.booking.utils.export.UserExcelExporter;
import com.hotel.booking.utils.pagination.Paged;
import com.hotel.booking.validates.customer.CustomerRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("admin/customers")
public class AdminCustomerController {

    @Autowired
    protected CustomerService customerService;

    @Autowired
    private BookingServiceImpl bookingService;

    @GetMapping("")
    public String index(@RequestParam(value = "current", required = false, defaultValue = JsonStructure.Pagination.CURRENT) int current,
                        @RequestParam(value = "pageSize", required = false, defaultValue = JsonStructure.Pagination.PAGE_SIZE) int pageSize,
                        @RequestParam(value = "searchText", required = false, defaultValue = "") String searchText, Model model) {

        Paged<Customer> paged = customerService.getCustomers(current, pageSize, searchText);

        List<Customer> customers = paged.getPage().getContent();
        for (Customer c : customers){
            Double price = 0.0;
            List<Booking> bookingList = bookingService.findByEmail(c.getEmail());
            for (Booking b : bookingList){
                if (b.getPrice() != 0){
                    price = price+b.getPrice();
                }
            }
            c.setTotalPrice(price);
        }

        model.addAttribute("searchText", searchText);
        model.addAttribute("customers", paged);
        return "admin/elements/customers/index";
    }

    @GetMapping("/export")
    public String export(HttpServletResponse response) throws IOException {
        response.setContentType("application/octet-stream");
        DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
        String currentDateTime = dateFormatter.format(new Date());

        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filename=users_" + currentDateTime + ".xlsx";
        response.setHeader(headerKey, headerValue);

        List<Customer> listUsers = customerService.getAllCustomers();

        UserExcelExporter excelExporter = new UserExcelExporter(listUsers);

        excelExporter.export(response);

        return "admin/elements/users/index";
    }

    @GetMapping(value = "/create")
    public String create(Model model) {
        model.addAttribute("customer", new Customer());
        return "admin/elements/customers/create";
    }

    @PostMapping(value = "/create")
    public String store(@Valid @ModelAttribute("customer") CustomerRequest customer, BindingResult result,
                        RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            redirectAttributes.addFlashAttribute("error", "Dữ liệu không hợp lệ");
            return "admin/elements/customers/create";
        }

        Customer newCustomer = customerService.create(customer);
        if (newCustomer == null) {
            redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
            return "admin/elements/customers/create";
        }

        redirectAttributes.addFlashAttribute("success", "Tạo khách hàng thành công");
        return "redirect:/admin/customers";
    }

    @GetMapping("{id}")
    public String edit(@PathVariable("id") long id, Model model) {
        Customer customer = customerService.findById(id);
        if (customer == null) {
            return "admin/elements/errors/404";
        }

        model.addAttribute("customer", customer);
        return "admin/elements/customers/edit";
    }

    @PostMapping("{id}")
    public String update(@PathVariable("id") long id, @Valid @ModelAttribute("customer") CustomerRequest request,
                         BindingResult result, RedirectAttributes redirectAttributes) throws Exception {
        if (result.hasErrors()) {
            redirectAttributes.addFlashAttribute("error", "Dữ liệu không hợp lệ");

            return "admin/elements/customers/edit";
        }

        Customer updateCustomer = customerService.update(id, request);
        if (updateCustomer == null) {
            redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
            return "admin/elements/customers/edit";
        }

        redirectAttributes.addFlashAttribute("success", "Cập nhật thành công");
        return "redirect:/admin/customers";
    }

    @GetMapping(value = "/delete/{id}")
    public String destroy(@PathVariable Long id,  RedirectAttributes redirectAttributes) {
        Customer customer = customerService.findById(id);
        if (customer == null) {
            redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
        }

        customerService.deleteById(id);
        redirectAttributes.addFlashAttribute("success", "Xóa khách hàng thành công");
        return "redirect:/admin/customers";
    }
}
