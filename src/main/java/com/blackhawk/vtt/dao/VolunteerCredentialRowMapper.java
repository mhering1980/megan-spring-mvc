package com.blackhawk.vtt.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.blackhawk.vtt.model.VolunteerCredential;

public class VolunteerCredentialRowMapper implements RowMapper<VolunteerCredential> {
	
	public VolunteerCredential mapRow(ResultSet rs, int row) throws SQLException {
		VolunteerCredential vc = new VolunteerCredential();
		//vc.setId(rs.getLong("VCredentialsID"));
		vc.setPassword(rs.getString("Username"));
		vc.setUsername(rs.getString("Password"));
		vc.setVolunteerId(rs.getLong("VolunteerID"));
		
		return vc;
	}
	
}


