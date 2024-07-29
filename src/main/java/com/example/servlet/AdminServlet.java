package com.example.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.doa.AdminDAO;
import com.example.model.College;
import com.example.model.Student;

// @WebServlet("/admin")
public class AdminServlet extends HttpServlet {
	private AdminDAO adminDAO;

	@Override
	public void init() {
		String jdbcURL = "jdbc:mysql://localhost:3306/easynroll";
		String jdbcUsername = "root";
		String jdbcPassword = "password";
		try {
			Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			adminDAO = new AdminDAO(connection);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		try {
			if (action.equals("login")) {
				validateAdmin(request, response);
			} else if (action.equals("addCollege")) {
				addCollege(request, response);
			}
		} catch (SQLException e) {
			throw new ServletException(e);
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		try {
			if (action.equals("viewColleges")) {
				viewColleges(request, response);
			} else if (action.equals("viewStudents")) {
				viewStudents(request, response);
			} else if (action.equals("viewHxColleges")) {
				viewHxColleges(request, response);
			}
		} catch (SQLException e) {
			throw new ServletException(e);
		}
	}

	private void validateAdmin(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		boolean isValid = adminDAO.validateAdmin(username, password);
		if (isValid) {
			request.getRequestDispatcher("admin_dashboard.jsp").forward(request, response);
		} else {
			response.sendRedirect("admin_login.jsp?error=Invalid%20Credentials");
		}
	}

	private void addCollege(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		String name = request.getParameter("name");
		String location = request.getParameter("location");
		String coursesOffered = request.getParameter("coursesOffered");
		College college = new College(0, name, location, coursesOffered);
		adminDAO.addCollege(college);
		response.sendRedirect("admin?action=viewColleges");
	}

	private void viewColleges(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<College> colleges = adminDAO.getAllColleges();
		request.setAttribute("colleges", colleges);
		request.getRequestDispatcher("view_colleges.jsp").forward(request, response);
	}

	private void viewHxColleges(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<College> colleges = adminDAO.getAllColleges();
		request.setAttribute("colleges", colleges);
		request.getRequestDispatcher("view_hx_colleges.jsp").forward(request, response);
	}

	private void viewStudents(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Student> students = adminDAO.getAllStudents();
		request.setAttribute("students", students);
		request.getRequestDispatcher("view_students.jsp").forward(request, response);
	}
}
