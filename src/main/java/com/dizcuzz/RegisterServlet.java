package com.dizcuzz;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // Retrieve user input
    String name = request.getParameter("name");
    String fullname = request.getParameter("fullnamename");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    // Validate input
    if (name == null || email == null || password == null || fullname == null) {
      request.setAttribute("error", "Please enter all required fields.");
      request.getRequestDispatcher("register.jsp").forward(request, response);
      return;
    }

    // Create database connection
    String url = "jdbc:mysql://localhost:3333/dizcuss?user=root";
    Connection conn = null;
    try {
      conn = DriverManager.getConnection(url);

      // Prepare SQL statement
      String sql = "INSERT INTO users (name, email, password, created_at, updated_at) VALUES (?, ?, ?)";
      PreparedStatement statement = conn.prepareStatement(sql);
      statement.setString(1, name);
      statement.setString(2, email);
      statement.setString(3, password);

      // Execute SQL statement
      int rowsInserted = statement.executeUpdate();
      if (rowsInserted > 0) {
        // Redirect to success page
        response.sendRedirect("success.jsp");
      } else {
        request.setAttribute("error", "Failed to register user.");
        request.getRequestDispatcher("register.jsp").forward(request, response);
      }
    } catch (SQLException ex) {
      request.setAttribute("error", "Failed to register user: " + ex.getMessage());
      request.getRequestDispatcher("register.jsp").forward(request, response);
    } finally {
      // Close database connection
      if (conn != null) {
        try {
          conn.close();
        } catch (SQLException ex) {
          ex.printStackTrace();
        }
      }
    }
  }
}
