package com.example.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.example.model.Application;

public class ApplicationDAO {
	private Connection connection;

	public ApplicationDAO(Connection connection) {
		this.connection = connection;
	}

	public boolean applyToCollege(Application application) throws SQLException {
		String query = "INSERT INTO Application (student_id, college_id, status) VALUES (?, ?, ?)";
		PreparedStatement stmt = connection.prepareStatement(query);
		stmt.setInt(1, application.getStudentId());
		stmt.setInt(2, application.getCollegeId());
		stmt.setString(3, application.getStatus());
		int rowsAffected = stmt.executeUpdate();
		return rowsAffected > 0;
	}

	public List<Application> getApplicationsByStudent(int studentId) throws SQLException {
		List<Application> applications = new ArrayList<>();
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
