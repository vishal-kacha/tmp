package com.example.model;

public class College {
	private int id;
	private String name;
	private String location;
	private String coursesOffered;

	// Constructors
	public College() {
	}

	public College(int id, String name, String location, String coursesOffered) {
		this.id = id;
		this.name = name;
		this.location = location;
		this.coursesOffered = coursesOffered;
	}

	// Getters and Setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getCoursesOffered() {
		return coursesOffered;
	}

	public void setCoursesOffered(String coursesOffered) {
		this.coursesOffered = coursesOffered;
	}
}
