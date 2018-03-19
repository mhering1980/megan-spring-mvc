package com.blackhawk.vtt.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.blackhawk.vtt.model.VolunteerCredential;

public class VolunteerCredentialDAOImpl implements VolunteerCredentialDAO {

	private JdbcTemplate jdbcTemplate;
	
	public VolunteerCredentialDAOImpl(DataSource dataSource){
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	//Query for login
	public VolunteerCredential login(String username, String password) {
		String sql = "SELECT VolunteerID, Username, Password FROM VolunteerCredentials "
				+ "WHERE Username = ? AND Password = ?";
		List<VolunteerCredential> listVolunteerCredential = jdbcTemplate.query(sql, new VolunteerCredentialRowMapper(), username, password);
		if(listVolunteerCredential != null && !listVolunteerCredential.isEmpty()) {
			return listVolunteerCredential.get(0);
		}else {
			return null;
		}
	}
	
	

	
}
