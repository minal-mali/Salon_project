package salonDemo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db_connection.SqlConnection;

public class SalonDao 
{
	public static int saveData(Salon s)
	{
		int status =0 ;
		try {
		
			Connection con = SqlConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into salon_registration(salon_id,salon_name,owner_name,email,phone,password,address,city,opening_time,closing_time,salon_type)values(?,?,?,?,?,?,?,?,?,?,?)");
			
			ps.setInt(1, s.getSalon_id());
			ps.setString(2, s.getSalon_name());
			ps.setString(3, s.getOwner_name());
			ps.setString(4, s.getEmail());
			ps.setString(5, s.getPassword());
			ps.setString(6, s.getPhone());
			ps.setString(7, s.getAddress());
			ps.setString(8, s.getCity());
			ps.setTime(9, s.getOpening_time());
			ps.setTime(10, s.getClosing_time());
			ps.setString(11, s.getSalon_type());
			
			status =ps.executeUpdate();
			
			con.close();
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
		
		
	}
	
	public static List<Salon> getAllSalons() {
	    List<Salon> list = new ArrayList<>();

	    try {
	        Connection con = SqlConnection.getConnection();
	        String sql = "SELECT * FROM salon_registration";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {
	            Salon s = new Salon();
	            s.setSalon_id(rs.getInt("salon_id"));
	            s.setSalon_name(rs.getString("salon_name"));
	            s.setOwner_name(rs.getString("owner_name"));
	            s.setEmail(rs.getString("email"));
	            s.setPhone(rs.getString("phone"));
	            s.setCity(rs.getString("city"));
	            s.setOpening_time(rs.getTime("opening_time"));
	            s.setClosing_time(rs.getTime("closing_time"));
	            s.setSalon_type(rs.getString("salon_type"));

	            list.add(s);
	        }
	        con.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
	public static Salon getSalonById(int id) {
	    Salon s = new Salon();

	    try {
	        Connection con = SqlConnection.getConnection();
	        PreparedStatement ps = con.prepareStatement(
	            "SELECT * FROM salon_registration WHERE salon_id=?"
	        );
	        ps.setInt(1, id);

	        ResultSet rs = ps.executeQuery();
	        if (rs.next()) {
	            s.setSalon_id(rs.getInt("salon_id"));
	            s.setSalon_name(rs.getString("salon_name"));
	            s.setOwner_name(rs.getString("owner_name"));
	            s.setEmail(rs.getString("email"));
	            s.setPhone(rs.getString("phone"));
	            s.setAddress(rs.getString("address"));
	            s.setCity(rs.getString("city"));
	            s.setOpening_time(rs.getTime("opening_time"));
	            s.setClosing_time(rs.getTime("closing_time"));
	            s.setSalon_type(rs.getString("salon_type"));
	        }
	        con.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return s;
	}
	public static int updateSalon(Salon s) {
	    int status = 0;

	    try {
	        Connection con = SqlConnection.getConnection();
	        PreparedStatement ps = con.prepareStatement(
	            "UPDATE salon_registration SET salon_name=?, owner_name=?, email=?, phone=?, address=?, city=?, opening_time=?, closing_time=?, salon_type=? WHERE salon_id=?"
	        );

	        ps.setString(1, s.getSalon_name());
	        ps.setString(2, s.getOwner_name());
	        ps.setString(3, s.getEmail());
	        ps.setString(4, s.getPhone());
	        ps.setString(5, s.getAddress());
	        ps.setString(6, s.getCity());
	        ps.setTime(7, s.getOpening_time());
	        ps.setTime(8, s.getClosing_time());
	        ps.setString(9, s.getSalon_type());
	        ps.setInt(10, s.getSalon_id());

	        status = ps.executeUpdate();
	        con.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return status;
	}
	public static int DeleteSalon(int salon_id)
	{
		int status =0;
		try {
			   Connection con = SqlConnection.getConnection();
			   PreparedStatement ps = con.prepareStatement("delete from salon_registration where salon_id=?");
			   
			   ps.setInt(1, salon_id);
			   status = ps.executeUpdate();
			   
			   con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
	}



}
