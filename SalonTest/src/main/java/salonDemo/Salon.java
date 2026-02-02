package salonDemo;

import java.sql.Time;

public class Salon {
	private int salon_id;
    private String salon_name;
    private String owner_name;
    private String email;
    private String phone;
    private String password;
    private String address;
    private String city;
    private Time opening_time;
    private Time closing_time;
    private String salon_type;
	public int getSalon_id() {
		return salon_id;
	}
	public void setSalon_id(int salon_id) {
		this.salon_id = salon_id;
	}
	public String getSalon_name() {
		return salon_name;
	}
	public void setSalon_name(String salon_name) {
		this.salon_name = salon_name;
	}
	public String getOwner_name() {
		return owner_name;
	}
	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Time getOpening_time() {
		return opening_time;
	}
	public void setOpening_time(Time opening_time2) {
		this.opening_time = opening_time2;
	}
	public Time getClosing_time() {
		return closing_time;
	}
	public void setClosing_time(Time closing_time) {
		this.closing_time = closing_time;
	}
	public String getSalon_type() {
		return salon_type;
	}
	public void setSalon_type(String salon_type) {
		this.salon_type = salon_type;
	}
    
    
    
}
