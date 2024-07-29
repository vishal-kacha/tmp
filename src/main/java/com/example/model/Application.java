package com.example.model;

public class Application {
	private int id;
	private int studentId;
	private int collegeId;
	private String status;

	// Constructors
	public Application() {
	}

	public Application(int id, int studentId, int collegeId, String status) {
		this.id = id;
		this.studentId = studentId;
		this.collegeId = collegeId;
		this.status = status;
	}

	// Getters and Setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public int getCollegeId() {
		return collegeId;
	}

	public void setCollegeId(int collegeId) {
		this.collegeId = collegeId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
