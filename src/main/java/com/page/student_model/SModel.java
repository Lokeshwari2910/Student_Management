package com.page.student_model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="sample")
public class SModel {

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Column
	    
	    private int rollno;
	    
		private String name;
	    private String dept;
	    private String dob; 
	    private String district;
	    private int age;

	    // Default constructor
	    public SModel() {
	    }

	    // Parameterized constructor
	 /*   public SModel(int rollno, String name, String dept, String dob,  String district, int age) {
	        this.rollno = rollno;
	        this.name = name;
	        this.dept = dept;
	        this.dob = dob;
	        this.district = district;
	        this.age=age;
	    }
*/
	    // Getters and Setters
	    public int getRollno() {
	        return rollno;
	    }

	    public void setRollno(int rollno) {
	        this.rollno = rollno;
	    }

	    public String getName() {
	        return name;
	    }

	    public void setName(String name) {
	        this.name = name;
	    }

	    public String getDept() {
	        return dept;
	    }

	    public void setDept(String dept) {
	        this.dept = dept;
	    }

	    public String getDob() {
	        return dob;
	    }

	    public void setDob(String dob) {
	        this.dob = dob;
	    }

	    public String getDistrict() {
	        return district;
	    }

	    public void setDistrict(String district) {
	        this.district = district;
	    }

	    
	    public int getAge() {
	    	return age;
	    }
	    
	    public void setAge(int age) {
	    	this.age = age;
	    }

		
	
@Override
public String toString() {
	return "SModel [rollno=" + rollno + ", name=" + name + ", dept=" + dept + ", dob=" + dob
			+ ", district=" + district + ", age=" + age + "]";
}
}

