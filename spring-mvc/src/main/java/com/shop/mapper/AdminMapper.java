package com.shop.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import org.springframework.jdbc.core.RowMapper;

import com.shop.entity.Admin;

public class AdminMapper implements RowMapper<Admin> {
	public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
		Admin admins = new Admin();
		admins.setAdminId(rs.getLong("AdminId"));
		admins.setAdminUsername(rs.getString("AdminUsername"));
		admins.setAdminPassword(rs.getString("AdminPassword"));
		admins.setAdminName(rs.getString("AdminName"));
		admins.setCreatedDate(rs.getDate("CreatedDate"));
		return admins;
	}
}
