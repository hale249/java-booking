package com.hotel.booking;

import com.cksource.ckfinder.servlet.CKFinderServlet;
import com.hotel.booking.services.FilesStorageService;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletContextInitializer;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.annotation.Resource;
import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.file.Files;

@SpringBootApplication
public class HotelBookingApplication extends SpringBootServletInitializer implements CommandLineRunner, WebMvcConfigurer {
    @Resource
    FilesStorageService storageService;

    public static void main(String[] args) {
        SpringApplication.run(HotelBookingApplication.class, args);
    }

    @Override
    public void run(String... arg) throws Exception {
        storageService.deleteAll();
        storageService.init();
    }

    @Override
    public void onStartup(ServletContext servletContext) {
        // Register the CKFinder's servlet.
        ServletRegistration.Dynamic dispatcher = servletContext.addServlet("ckfinder", new CKFinderServlet());
        dispatcher.setLoadOnStartup(1);
        dispatcher.addMapping("/ckfinder/*");
        dispatcher.setInitParameter("scan-path", "example.ckfinder");

        FilterRegistration.Dynamic filter = servletContext.addFilter("x-content-options", new Filter() {
            @Override
            public void init(FilterConfig filterConfig) {
            }

            @Override
            public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
                ((HttpServletResponse) response).setHeader("X-Content-Type-Options", "nosniff");
                chain.doFilter(request, response);
            }

            @Override
            public void destroy() {
            }
        });

        filter.addMappingForUrlPatterns(null, false, "/userfiles/*");

        String tempDirectory;

        try {
            tempDirectory = Files.createTempDirectory("ckfinder").toString();
        } catch (IOException e) {
            tempDirectory = null;
        }

        dispatcher.setMultipartConfig(new MultipartConfigElement(tempDirectory));
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // Configure the resource handler to serve files uploaded with CKFinder.
        String publicFilesDir = String.format("file:%s/userfiles/", System.getProperty("user.dir"));

        registry.addResourceHandler("/userfiles/**")
                .addResourceLocations(publicFilesDir);
    }
}
