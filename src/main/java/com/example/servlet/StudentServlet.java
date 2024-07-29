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

import com.example.doa.ApplicationDAO;
import com.example.doa.CollegeDAO;
import com.example.doa.StudentDAO;
import com.example.model.Application;
import com.example.model.College;
import com.example.model.Student;

// @WebServlet("/student")
public class StudentServlet extends HttpServlet {
	private StudentDAO studentDAO;
	private CollegeDAO collegeDAO;
	private ApplicationDAO applicationDAO;

	@Override
	public void init() {
		String jdbcURL = "jdbc:mysql://localhost:3306/easynroll";
		String jdbcUsername = "root";
		String jdbcPassword = "password";
		try {
			Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			studentDAO = new StudentDAO(connection);
			collegeDAO = new CollegeDAO(connection);
			applicationDAO = new ApplicationDAO(connection);
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
				validateStudent(request, response);
			} else if (action.equals("register")) {
				registerStudent(request, response);
			} else if (action.equals("apply")) {
				applyToCollege(request, response);
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
			} else if (action.equals("viewApplications")) {
				viewApplications(request, response);
			}
		} catch (SQLException e) {
			throw new ServletException(e);
		}
	}

	private void validateStudent(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		boolean isValid = studentDAO.validateStudent(username, password);
		if (isValid) {
			request.getRequestDispatcher("student_dashboard.jsp").forward(request, response);
		} else {
			response.sendRedirect("student_login.jsp?error=Invalid%20Credentials");
		}
	}

	private void registerStudent(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		Student student = new Student(0, username, password, name, email, phone, address);
		studentDAO.registerStudent(student);
		response.sendRedirect("student_login.jsp");
	}

	private void viewColleges(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<College> colleges = collegeDAO.getAllColleges();
		request.setAttribute("colleges", colleges);
		request.getRequestDispatcher("view_colleges.jsp").forward(request, response);
	}

	private void applyToCollege(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		int studentId = Integer.parseInt(request.getParameter("studentId"));
		int collegeId = Integer.parseInt(request.getParameter("collegeId"));
		Application application = new Application(0, studentId, collegeId, "Pending");
		applicationDAO.applyToCollege(application);
		response.sendRedirect("student?action=viewApplications");
	}

	private void viewApplications(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		int studentId = Integer.parseInt(request.getParameter("studentId"));
		List<Application> applications = applicationDAO.getApplicationsByStudent(studentId);
		request.setAttribute("applications", applications);
		request.getRequestDispatcher("view_applications.jsp").forward(request, response);
	}
}
