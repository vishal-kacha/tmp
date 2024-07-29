package com.example.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.example.model.Application;
import com.example.model.College;
import com.example.model.Student;

public class StudentDAO {
	private Connection connection;

	public StudentDAO(Connection connection) {
		this.connection = connection;
	}

	public boolean registerStudent(Student student) throws SQLException {
		String query = "INSERT INTO Student (username, password, name, email, phone, address) VALUES (?, ?, ?, ?, ?, ?)";
		PreparedStatement stmt = connection.prepareStatement(query);
		stmt.setString(1, student.getUsername());
		stmt.setString(2, student.getPassword());
		stmt.setString(3, student.getName());
		stmt.setString(4, student.getEmail());
		stmt.setString(5, student.getPhone());
		stmt.setString(6, student.getAddress());
		int rowsAffected = stmt.executeUpdate();
		return rowsAffected > 0;
	}

	public boolean validateStudent(String username, String password) throws SQLException {
		String query = "SELECT * FROM Student WHERE username = ? AND password = ?";
		PreparedStatement stmt = connection.prepareStatement(query);
		stmt.setString(1, username);
		stmt.setString(2, password);
		ResultSet rs = stmt.executeQuery();
		return rs.next();
	}

	public List<College> getAllColleges() throws SQLException {
		List<College> colleges = new ArrayList();
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

	public boolean applyToCollege(int studentId, int collegeId) throws SQLException {
		String query = "INSERT INTO Application (student_id, college_id) VALUES (?, ?)";
		PreparedStatement stmt = connection.prepareStatement(query);
		stmt.setInt(1, studentId);
		stmt.setInt(2, collegeId);
		int rowsAffected = stmt.executeUpdate();
		return rowsAffected > 0;
	}

	public List<Application> getApplicationsByStudent(int studentId) throws SQLException {
		List<Application> applications = new ArrayList();
		String query = "SELECT * FROM Application WHERE student_id = ?";
		PreparedStatement stmt = connection.prepareStatement(query);
		stmt.setInt(1, studentId);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			Application application = new Application(rs.getInt("id"), rs.getInt("student_id"), rs.getInt("college_id"),
					rs.getString("status"));
			applications.add(application);
		}
		return applications;
	}
}
