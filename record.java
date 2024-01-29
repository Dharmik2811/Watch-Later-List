package record;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Random;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.email.durgesh.Email;
import com.models.bug_model;

import method.bug_method;
/**
 * Servlet implementation class empinsert
 */
@WebServlet(name = "record", urlPatterns = { "/record" })
public class record extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public record() {
        super();
        // TODO Auto-generated constructor stub
    }
/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String jdbcURL="jdbc:mysql://localhost:3306/test";
		String jdbcUsername="root";
		String jdbcPassword="dharmik";
		PrintWriter out = response.getWriter();
		String option=request.getParameter("submit");
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn=DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			
			if(option.equals("add_record"))
			{	
				String name =request.getParameter("name");
				String plateform =request.getParameter("plateform");
				String genre=request.getParameter("genre");
				String link =request.getParameter("link");
				
				
		        String sql="insert into watchlist (Name,Plateform,Genre,Link) values(?,?,?,?)";
				PreparedStatement ps= cn.prepareStatement(sql);
				ps.setString(1, name);
				ps.setString(2, plateform);
				ps.setString(3,genre);
				ps.setString(4,link);
				int n=ps.executeUpdate();
    			if(n==1) {
    				//request.getRequestDispatcher("login.jsp?q=1").forward(request, response);
    				response.sendRedirect("recordsall.jsp");
    				}
    			    			    				
			}
			else if(option.equals("update_record"))
			{	
				int id=Integer.parseInt(request.getParameter("id"));
				String name =request.getParameter("name");
				String plateform =request.getParameter("plateform");
				String genre=request.getParameter("genre");
				String link =request.getParameter("link");
				
				String sql="update watchlist set Name=?,Plateform=?,Genre=?,Link=? where Id=?";
				PreparedStatement ps= cn.prepareStatement(sql);
				ps.setString(1, name);
				ps.setString(2, plateform);
				ps.setString(3,genre);
				ps.setString(4,link);
				ps.setInt(5,id);
				int n=ps.executeUpdate();
    			if(n==1) {
    				response.sendRedirect("recordsall.jsp");
    			}    			
			}
		
			else if(option.equals("r_delete"))
			{
				int id=Integer.parseInt(request.getParameter("id"));				
				String sql="DELETE FROM watchlist WHERE Id=?";
				PreparedStatement ps= cn.prepareStatement(sql);
				ps.setInt(1,id);				
				int n=ps.executeUpdate();
    			if(n==1) 
    				response.sendRedirect("recordsall.jsp"); 		
    			else
    				out.println("<script> window,confirm('This employee is already taken task')</script>");
			}	
				
			
		}catch (SQLException e) {
	    	e.printStackTrace();	
	    }catch (ClassNotFoundException e) {
	    	e.printStackTrace();
	    }
	}
	private boolean isValidSession(HttpSession session) {
	// TODO Auto-generated method stub
	return false;
}
	private byte[] convertStringToByte(String pass) {
	// TODO Auto-generated method stub
	return null;
}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}