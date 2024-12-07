package com.sai.jfsd.EMS.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.http.MediaType;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import java.io.File;
import java.sql.Blob;
import java.util.List;

import com.sai.jfsd.EMS.model.Admin;
import com.sai.jfsd.EMS.model.SuperAdmin;
import com.sai.jfsd.EMS.model.User;
import com.sai.jfsd.EMS.service.AdminService;
import com.sai.jfsd.EMS.service.SuperAdminService;
import com.sai.jfsd.EMS.service.UserService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class SuperAdminController
{

    @Autowired
    private SuperAdminService superadminservice;
    @Autowired
    private UserService userservice;
    @Autowired
    private AdminService adminservice;
    @GetMapping("/")
    public ModelAndView home()
    {
      ModelAndView mv=new ModelAndView();
      mv.setViewName("home");
      return mv;
    }
    
    @GetMapping("superadminlogin")
    public ModelAndView superadminlogin()
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("superadminlogin");
         return mv;
    }
    @GetMapping("superadminhome")
    public ModelAndView superadminhome()
    {
    	ModelAndView mv = new ModelAndView();
        mv.setViewName("superadminhome");      
        return mv;
    }
    @PostMapping("checksuperadminlogin")
    public ModelAndView checksuperadminlogin(HttpServletRequest request)
    {
    	ModelAndView mv = new ModelAndView();
        
        String aadhaar= request.getParameter("aadhaar");
        String apwd = request.getParameter("password");
        String role=request.getParameter("role");
        
        SuperAdmin superadmin = superadminservice.checksuperadminlogin(aadhaar, apwd,role);
        
        if(superadmin!=null)
        {
          mv.setViewName("superadminhome");
        }
        else
        {
          mv.setViewName("superadminloginfail");
          mv.addObject("message", "Login Failed");
        }
        return mv;
    }
    @PostMapping("insertuser")
    public ModelAndView insertuser(HttpServletRequest request)
    {
      String name = request.getParameter("name");
      int age = Integer.parseInt(request.getParameter("age"));
     String gender = request.getParameter("gender");
     String aadhaar = request.getParameter("aadhaar");
     String phonno = request.getParameter("phoneno");     
     String email = request.getParameter("email");    
     String place = request.getParameter("place");
     String password = request.getParameter("password");
       User u = new User();
       u.setName(name);
       u.setGender(gender);
       u.setAadhaar(aadhaar);
       u.setAge(age);
       u.setEmail(email);
       u.setPhoneno(phonno);
       u.setPassword(password);
       u.setPlace(place);
       String msg = userservice.UserRegistration(u);
       
       ModelAndView mv = new ModelAndView("regsuccess");
       mv.addObject("message", msg);
     
       return mv;
    }
    @GetMapping("addadmin")
    public ModelAndView addadmin()
    {
 	   ModelAndView mv = new ModelAndView("addadmin");
 	   return mv;
    }
    
    @PostMapping("insertadmin")
    public ModelAndView insertadmindemo(HttpServletRequest request,@RequestParam("adminimage") MultipartFile file) throws Exception
    {
 	   String msg = null;
 	   
 	   ModelAndView mv = new ModelAndView();
 	   
 	   try
 	   {
			
 		  String name = request.getParameter("name");
 	      int age = Integer.parseInt(request.getParameter("age"));
 	     String gender = request.getParameter("gender");
 	    // String aadhaar = request.getParameter("aadhaar");
 	    long aadhaar = Long.parseLong(request.getParameter("aadhaar"));
 	     String phonno = request.getParameter("phoneno");     
 	     String email = request.getParameter("email");    
 	     String place = request.getParameter("place");
 	     String password = request.getParameter("password");
 	      String dob = request.getParameter("dob");

 	   
 		  byte[] bytes = file.getBytes();
 		  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
 		  //  creates a Blob object in Java from a byte array (bytes).
 		  
 		  Admin a = new Admin();
 		  a.setAadhaar(aadhaar);
 		  a.setAge(age);
 		  a.setDateofbirth(dob);
 		  a.setEmail(email);
 		  a.setGender(gender);
 		  a.setName(name);
 		  a.setPassword(password);
 		  a.setPhoneno(phonno);
 		  a.setPlace(place);
 		  a.setImage(blob);
 		  msg=adminservice.AddAdmin(a);
 		  System.out.println(msg);
 		  mv.setViewName("addadmin");
 		  mv.addObject("message",msg);
 	   }	  
 	   catch(Exception e)
 	   {
 		   msg = e.getMessage();
 		   System.out.println(msg.toString());
 		   mv.setViewName("addadmin");
 		   mv.addObject("message",msg);
 	   }
 	   return mv;
    }
    @GetMapping("viewalladmin")
    public ModelAndView viewalladminsdemo()
    {
 	   List<Admin> adminlist = adminservice.ViewAlladmins();
 	   
 	   ModelAndView mv = new ModelAndView("viewalladmin");
 	   
 	   mv.addObject("adminlist", adminlist);
 	   
 	   return mv;
    }
    @GetMapping({"updateadmin"})

    public ModelAndView viewalladminsdemo1()
    {
 	   List<Admin> adminlist = adminservice.ViewAlladmins();
 	   
 	   ModelAndView mv = new ModelAndView("updateadmin");
 	   
 	   mv.addObject("adminlist", adminlist);
 	   
 	   return mv;
    }
    @GetMapping("deleteadmin")
    public ModelAndView viewalladminsdemo2()
    {
        List<Admin> adminlist = adminservice.ViewAlladmins();
        ModelAndView mv = new ModelAndView("deleteadmin");
        mv.addObject("adminlist", adminlist);  // Ensure this is correct
        return mv;
    }
    @GetMapping("displayadminimage")
    public ResponseEntity<byte[]> displayadminimagedemo(@RequestParam long aadhaar) throws Exception
    {
      Admin admin =  adminservice.ViewAdminByID(aadhaar);
      byte [] imageBytes = null;
      imageBytes = admin.getImage().getBytes(1,(int) admin.getImage().length());

      return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
      
    // Response Body, HTTP Status Code, Headers
    }
 
    @PostMapping("updateadmincontroller")
    public ModelAndView updateAdminProfile(HttpServletRequest request, @RequestParam("adminimage") MultipartFile file) {
        String msg = null;
        ModelAndView mv = new ModelAndView();
        try {
            // Fetch the parameters
            String name = request.getParameter("name");
            int age = Integer.parseInt(request.getParameter("age"));
            String gender = request.getParameter("gender");
            long aadhaar = Long.parseLong(request.getParameter("aadhaar"));
            String phonno = request.getParameter("phoneno");
            String email = request.getParameter("email");
            String place = request.getParameter("place");
            String password = request.getParameter("password");
            String dob = request.getParameter("dob");

            // Handle file upload if present
            Blob blob = null;
            if (!file.isEmpty()) {
                byte[] bytes = file.getBytes();
                blob = new javax.sql.rowset.serial.SerialBlob(bytes);
            }

            // Create and populate Admin object
            Admin admin = new Admin();
            admin.setAadhaar(aadhaar);
            admin.setAge(age);
            admin.setDateofbirth(dob);
            admin.setEmail(email);
            admin.setGender(gender);
            admin.setName(name);
            admin.setPassword(password);
            admin.setPhoneno(phonno);
            admin.setPlace(place);
            if (blob != null) {
                admin.setImage(blob); // Only set image if it was uploaded
            }

            // Call service to update admin
            msg = adminservice.updateAdmin(admin);

            // Instead of setting the view name directly, use a redirect
            mv.setViewName("redirect:/updateadmin");  // Redirect to the updateadmin page
            mv.addObject("message", msg);

        } catch (Exception e) {
            msg = e.getMessage();
            System.out.println(msg.toString());
            mv.setViewName("updateadmin");
            mv.addObject("message", msg);
        }
        return mv;
    }
    @GetMapping("deleteadmin1")
    public ModelAndView deleteadmin()
    {
      ModelAndView mv = new ModelAndView();
      List<Admin> adminlist = adminservice.ViewAlladmins();
      mv.setViewName("deleteadmin1");
      mv.addObject("adminlist",adminlist);
      return mv;
    }
    @GetMapping("delete")
    public String deleteoperation(@RequestParam("aadhaar") long aadhaar)
    {
      adminservice.deleteadmin(aadhaar);
      return "redirect:/deleteadmin";
    }
}
