import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;  
public class login1 extends HttpServlet{  
	public static void main(String args[]){  
		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con = DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/oopsproject", "root", "MILTONalmonds@100");  
		//here sonoo is database name, root is username and password  
		Statement stmt = con.createStatement();  
		ResultSet rs = stmt.executeQuery("select * from userdetails");  
		while(rs.next())
		System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));
		con.close();  
		}
		catch(Exception e){
			System.out.println(e);
		}  
	}  
	public void doGet(HttpServletRequest request,HttpServletResponse response)
			throws IOException,ServletException{
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			String uname=request.getParameter("email");
			String pword=request.getParameter("pass");
			if(uname==null||uname.equals("")||pword==null||pword.equals("")){
			out.println("Username and password cannot be empty");
			return;
			}
			try{
			      //STEP 2: Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);
			stmt = conn.prepareStatement("select * from userdetails where username=? and password=?");
			stmt.setString(1,uname);
			stmt.setString(2,pword);
			ResultSet rs=stmt.executeQuery();
			if(rs.next()){
			out.println("Welcome "+uname);
			response.sendRedirect("userDashHome.jsp");
			}
			else{
			out.println("Given username and password are wrong");
			out.println("Please try again");
			}
			}catch(SQLException e){
			System.out.println("There is an exception with the database");
			}
			catch(Exception e){e.printStackTrace();}
			finally{
			      //finally block used to close resources
			      try{
			         if(stmt!=null)
			            conn.close();
			      }catch(SQLException se){
			      }// do nothing
			      try{
			         if(conn!=null)
			            conn.close();
			      }catch(SQLException se){
			         se.printStackTrace();
			      }//end finally try
			   }//end try
			}
}  