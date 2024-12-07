package com.sai.jfsd.EMS.controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
public class AdminController 
{
	 @GetMapping("adminlogin")
	  public ModelAndView adminlogin()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("adminlogin");
	    
	    return mv;
	  }
	  
}
