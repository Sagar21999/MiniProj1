package com.example.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.project.entity.Medicine;

@Service
public interface MedicineService {

	public Medicine addMedicine(Medicine medicine);
	
	public int findMedicineByCode(String code);
	
	public List<Medicine> findAll();
	
	public List<Medicine> findExp();
}
