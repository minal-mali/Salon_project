package userDemo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



import db_connection.SqlConnection;



public class UserDao {
	public static int save(User e)
	{
		int status =0;
		try {
			
		    Connection con = SqlConnection.getConnection();	
			PreparedStatement ps = con.prepareStatement("insert into customer(name,email,password,phone,address,gender) values(?,?,?,?,?,?,?)");
			
			ps.setString(1, e.getName());
			ps.setString(2, e.getEmail());
			ps.setString(3, e.getPassword());
			ps.setString(4, e.getPhone());
			ps.setString(5, e.getAddress());
			ps.setString(6, e.getGender());
			
			status =ps.executeUpdate();
			con.close();
		}
		catch(Exception e1)
		{
			System.out.println(e1);
		}
		return status;
	}
	
	public static User getLogin(String email,String password)
	{
		User r =null;
		try {
			
			Connection con = SqlConnection.getConnection();
			PreparedStatement ps = con.prepareStatement(
				    "SELECT * FROM customer WHERE email=? AND password=?"
				);
			
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				r = new User();
				r.setEmail(rs.getString("email"));
				r.setPassword(rs.getString("password"));
				r.setName(rs.getString("name"));
				r.setPhone(rs.getString("phone"));
				r.setGender(rs.getString("gender"));
				r.setAddress(rs.getString("address"));
				
			}
			
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return r;
	}

}
