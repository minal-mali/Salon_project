package db_connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SqlConnection {

	public static Connection getConnection()
	{
		Connection con =null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/salon_booking_db","root","Nikita@29");
			
		}
		catch(Exception e){
			System.out.println(e);
		}
		return con;
		
	}

}
