package com.example.project.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.springframework.format.annotation.DateTimeFormat;



@Entity
@Table(name="medicine")
public class Medicine {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	@NotBlank(message="Medicine Name cannot be empty")
	private String medicineName;
	
	@NotBlank(message="Medicine Code cannot be empty")
	private String medicineCode;
	
	@NotBlank(message="Medicine Composition cannot be empty")
	private String medicineComposition;
	
	@NotBlank(message="Medicine Manufacturer cannot be empty")
	private String manufacturer;
	
	@NotNull(message="Medicine Price cannot be empty")
	@Min(value=1, message="Medicine Price cannot be 0")
	private double pricePerUnit;
	
	@NotNull(message="Medicine Quantity cannot be empty")
	@Min(value=1, message="Medicine quantity cannot be 0")
	private Integer quantity;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@NotNull(message="Medicine Manufacturing Date cannot be empty")
	@Past(message="Medicine Manufacturing Date cannot be in future")
	private Date dateOfManufacturing;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@NotNull(message="Medicine Expiry Date cannot be empty")
	private Date dateOfExpiry;
	
	
	public Medicine() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Medicine(Integer id, @NotBlank(message = "Medicine Name cannot be empty") String medicineName,
			@NotBlank(message = "Medicine Code cannot be empty") String medicineCode,
			@NotBlank(message = "Medicine Composition cannot be empty") String medicineComposition,
			@NotBlank(message = "Medicine Manufacturer cannot be empty") String manufacturer,
			@NotNull(message = "Medicine Price cannot be empty") double pricePerUnit,
			@NotNull(message = "Medicine Quantity cannot be empty") Integer quantity,
			@NotNull(message = "Medicine Manufacturing Date cannot be empty") Date dateOfManufacturing,
			@NotNull(message = "Medicine Expiry Date cannot be empty") Date dateOfExpiry) {
		super();
		this.id = id;
		this.medicineName = medicineName;
		this.medicineCode = medicineCode;
		this.medicineComposition = medicineComposition;
		this.manufacturer = manufacturer;
		this.pricePerUnit = pricePerUnit;
		this.quantity = quantity;
		this.dateOfManufacturing = dateOfManufacturing;
		this.dateOfExpiry = dateOfExpiry;
	}
	@Override
	public String toString() {
		return "Medicine [id=" + id + ", medicineName=" + medicineName + ", medicineCode=" + medicineCode
				+ ", medicineComposition=" + medicineComposition + ", manufacturer=" + manufacturer + ", pricePerUnit="
				+ pricePerUnit + ", quantity=" + quantity + ", dateOfManufacturing=" + dateOfManufacturing
				+ ", dateOfExpiry=" + dateOfExpiry + "]";
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMedicineName() {
		return medicineName;
	}
	public void setMedicineName(String medicineName) {
		this.medicineName = medicineName;
	}
	public String getMedicineCode() {
		return medicineCode;
	}
	public void setMedicineCode(String medicineCode) {
		this.medicineCode = medicineCode;
	}
	public String getMedicineComposition() {
		return medicineComposition;
	}
	public void setMedicineComposition(String medicineComposition) {
		this.medicineComposition = medicineComposition;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public double getPricePerUnit() {
		return pricePerUnit;
	}
	public void setPricePerUnit(double pricePerUnit) {
		this.pricePerUnit = pricePerUnit;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Date getDateOfManufacturing() {
		return dateOfManufacturing;
	}
	public void setDateOfManufacturing(Date dateOfManufacturing) {
		this.dateOfManufacturing = dateOfManufacturing;
	}
	public Date getDateOfExpiry() {
		return dateOfExpiry;
	}
	public void setDateOfExpiry(Date dateOfExpiry) {
		this.dateOfExpiry = dateOfExpiry;
	}
}
