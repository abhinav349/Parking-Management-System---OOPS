import java.sql.*;  
class demo{  
	public static void main(String args[]){  
		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con = DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/ishan", "root", "MILTONalmonds@100");  
		//here sonoo is database name, root is username and password  
		Statement stmt = con.createStatement();  
		ResultSet rs = stmt.executeQuery("select * from t1");  
		while(rs.next())  
		System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
		con.close();  
		}
		catch(Exception e){
			System.out.println(e);
		}  
	}  
}  