package com.caseStudy.salesProcessingservice.Controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.caseStudy.salesProcessingservice.Model.QuotationInfo;
import com.caseStudy.salesProcessingservice.Service.SalesProcessingServiceImpl;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class SalesProcessingController {
	
	@Autowired 
	private SalesProcessingServiceImpl salesProcessingServiceImpl;
	@GetMapping("/")
    public ModelAndView showWelcomePage(ModelMap model) {
		log.info("INSIDE showWelcomePage method of SalesProcessingController"); 
		ModelAndView mv = new ModelAndView();
		mv.setViewName("welcome");
		log.info("ENDING showWelcomePage method of SalesProcessingController"); 
        return mv;
    }
	@GetMapping("/saveQuote")
    public ModelAndView showSaveQuotePage(ModelMap model) {
		 log.info("INSIDE showSaveQuotePage method of SalesProcessingController");
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("saveQuote");
		 log.info("ENDING showSaveQuotePage method of SalesProcessingController");
        return mv;
    }
	@GetMapping("/getQuotes")
    public ModelAndView showGetQuotesPage(ModelMap model) {
		log.info("INSIDE showGetQuotesPage method of SalesProcessingController");
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("getQuotes");
		 log.info("ENDING showGetQuotesPage method of SalesProcessingController");
        return mv;
    }
	@GetMapping("/getAQuoteById")
    public ModelAndView showGetQuoteByIdPage(ModelMap model) {
		log.info("INSIDE showGetQuoteByIdPage method of SalesProcessingController");
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("getQuoteById");
		 log.info("ENDING showGetQuoteByIdPage method of SalesProcessingController");
        return mv;
    }
	
	@PostMapping("/saveQuotations")
	public ModelAndView saveQuotations(@Valid @ModelAttribute ("Quote") QuotationInfo quotationInfo,BindingResult br) {
		log.info("INSIDE saveQuotations method of SalesProcessingController");
		if(br.hasErrors()) {
	return new ModelAndView("welcome");
	}
	else {
	ModelAndView model=new ModelAndView("saveQuote");
	salesProcessingServiceImpl.saveQuotation(quotationInfo);
	model.addObject(quotationInfo);
	log.info("ENDING saveQuotations method of SalesProcessingController");
	return model;
	}}
	
	@PostMapping("/getQuotationById")
	public ModelAndView getQuotationbyID(@RequestParam("qId") long id) {
		log.info("INSIDE getQuotationbyID method of SalesProcessingController");
		ModelAndView model=new ModelAndView("getQuoteById");
	QuotationInfo quotationInfo=salesProcessingServiceImpl.getQuotationBYID(id);
	model.addObject("quotationInfo",quotationInfo);
	log.info("ENDING getQuotationbyID method of SalesProcessingController");
	return model;
	}
  
	@GetMapping("/getAllQuotes")
    public ModelAndView showGetALLQuotesPage(ModelMap model) {
		log.info("INSIDE showGetALLQuotesPage method of SalesProcessingController");
		ModelAndView mv = new ModelAndView("getQuotes");
		List<QuotationInfo> quotationInfo = salesProcessingServiceImpl.getAllQuotation();
		mv.addObject("quotationInfo", quotationInfo);
		log.info("ENDING showGetALLQuotesPage method of SalesProcessingController");
		return mv;
    }
}
