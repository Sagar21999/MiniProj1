package com.example.project.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.project.entity.Medicine;
import com.example.project.service.MedicineService;

@Controller
public class MedicineController {
	
	@Autowired
	MedicineService medicineService;

	@GetMapping(value={"/home","/"})
	public String showHome() {
		return "home";
	}
	
	@GetMapping("/add")
	public String add(Model model) {
		
		Medicine medicine=new Medicine();
		model.addAttribute("medicine", medicine);
		return "add";
	}
	
	@PostMapping("/addMedicine")
	public String addMedicine(@Valid @ModelAttribute Medicine medicine,BindingResult result,Model model) {
		System.out.println(medicine);
		if(result.hasErrors()) {
			return "add";
		}
		int flag=medicineService.findMedicineByCode(medicine.getMedicineCode());
		if(flag==-1) {
			return "add-failure";
		}
		medicineService.addMedicine(medicine);
		return "add-success";
	}
	
	@GetMapping("/viewall")
	public String viewAll(Model model) {
		
		List<Medicine> medicineList=medicineService.findAll();
		model.addAttribute("medicineList", medicineList);
		return "viewAll";
	}
	
	@GetMapping("/viewexp")
	public String viewExp(Model model) {
		
		List<Medicine> expiredList=medicineService.findExp();
		model.addAttribute("expiredList", expiredList);
		return "viewExp";
	}
}
