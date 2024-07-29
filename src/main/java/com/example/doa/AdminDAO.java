package com.example.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.example.model.College;
import com.example.model.Student;

public class AdminDAO {
	private Connection connection;

	public AdminDAO(Connection connection) {
		this.connection = connection;
	}

	public boolean validateAdmin(String username, String password) throws SQLException {
		String query = "SELECT * FROM Admin WHERE username = ? AND password = ?";
		PreparedStatement stmt = connection.prepareStatement(query);
		stmt.setString(1, username);
		stmt.setString(2, password);
		ResultSet rs = stmt.executeQuery();
		return rs.next();
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

	public List<Student> getAllStudents() throws SQLException {
		List<Student> students = new ArrayList<>();
		String query = "SELECT * FROM Student";
		PreparedStatement stmt = connection.prepareStatement(query);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			Student student = new Student(rs.getInt("id"), rs.getString("username"), rs.getString("password"),
					rs.getString("name"), rs.getString("email"), rs.getString("phone"), rs.getString("address"));
			students.add(student);
		}
		return students;
	}
}
