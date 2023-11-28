package com.example.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.project.entity.Medicine;

public interface MedicineRepository extends JpaRepository<Medicine, Integer> {

	Medicine findByMedicineCode(String medicineCode);
}
