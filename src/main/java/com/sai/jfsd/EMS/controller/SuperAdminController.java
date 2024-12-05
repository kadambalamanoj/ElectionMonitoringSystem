package com.sai.jfsd.EMS.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.sai.jfsd.EMS.model.SuperAdmin;
import com.sai.jfsd.EMS.service.SuperAdminService;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class SuperAdminController
{

    @Autowired
    private SuperAdminService superadminservice;
    
    
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

}
