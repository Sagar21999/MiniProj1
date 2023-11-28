package com.example.project.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.entity.Medicine;
import com.example.project.repository.MedicineRepository;

@Service
public class MedicineServiceImpl implements MedicineService {
	
	@Autowired
	MedicineRepository medicineRepository;
	

	@Override
	public Medicine addMedicine(Medicine medicine) {
		// TODO Auto-generated method stub
		
		Medicine medicine2=medicineRepository.save(medicine);
		
		return medicine2 ;
	}

	@Override
	public int findMedicineByCode(String code) {
		
		Medicine medicine2=medicineRepository.findByMedicineCode(code);
		if(medicine2!=null) {
			return -1;
		}
		return 0;
	}

	@Override
	public List<Medicine> findAll() {
		
		List<Medicine> medicineList=medicineRepository.findAll();
		
		return medicineList;
	}

	@Override
	public List<Medicine> findExp() {
		List<Medicine> medicineList=medicineRepository.findAll();
		List<Medicine> expiredList=new ArrayList<>();
		Date today=new Date();
		for(Medicine m: medicineList) {
			if(m.getDateOfExpiry().before(today)) {
				expiredList.add(m);
			}
		}
		return expiredList;
	}

}
