package com.example.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.example.model.College;

public class CollegeDAO {
	private Connection connection;

	public CollegeDAO(Connection connection) {
		this.connection = connection;
	}

	public boolean addCollege(College college) throws SQLException {
		String query = "INSERT INTO College (name, location, courses_offered) VALUES (?, ?, ?)";
		PreparedStatement stmt = connection.prepareStatement(query);
		stmt.setString(1, college.getName());
		stmt.setString(2, college.getLocation());
		stmt.setString(3, college.getCoursesOffered());
		int rowsAffected = stmt.executeUpdate();
		return rowsAffected > 0;
	}

	public List<College> getAllColleges() throws SQLException {
		List<College> colleges = new ArrayList<>();
		String query = "SELECT * FROM College";
		PreparedStatement stmt = connection.prepareStatement(query);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			College college = new College(rs.getInt("id"), rs.getString("name"), rs.getString("location"),
					rs.getString("courses_offered"));
			colleges.add(college);
		}
		return colleges;
	}
}
