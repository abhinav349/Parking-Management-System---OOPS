import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
//import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
//import javax.servlet.RequestDispatcher;
//import javax.servlet.annotation.WebServlet;

//@WebServlet("/login")
public class login extends HttpServlet {
static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost:3306/oopsproject";
   //  Database credentials
   static final String USER = "root";
   static final String PASS = "MILTONalmonds@100";  
   Connection conn = null;
   PreparedStatement stmt = null;
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