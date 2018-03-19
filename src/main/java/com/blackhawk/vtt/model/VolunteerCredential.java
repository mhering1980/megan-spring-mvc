package com.blackhawk.vtt.model;

public class VolunteerCredential {
	private Long id;
	private String username;
	private String password;
	private Long volunteerId;
	
	public Long getId(){
		return this.id;
	}
	public String getUsername(){
		return this.username;
	}
	public String getPassword(){
		return this.password;
	}
	public Long getVolunteerId(){
		return this.volunteerId;
	}
	public void setId(Long id){
		this.id = id;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setVolunteerId(Long volunteerId) {
		this.volunteerId = volunteerId;
	}
}
