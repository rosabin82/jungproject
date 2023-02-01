package com.hb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.hb.dto.memberdto;

public class memberdao {
	private Connection getConnection() {
		Connection conn = null;
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbId = "test21";
		String dbPw = "1234";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, dbId, dbPw);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	public ArrayList<memberdto> getmemberlist() throws Exception {
		Connection conn = getConnection();
		ArrayList<memberdto> list = new ArrayList<memberdto>();
		
		String sql = "select * from member";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String id = rs.getString("id");
			String password = rs.getString("password");
			String name = rs.getString("name");
			int point = rs.getInt("point");
			list.add(new memberdto(id, password, name , point));
		}
		rs.close();
		pstmt.close();
		conn.close();
		return list;
	}
	public memberdto getmember(String id) throws Exception {
		String sql ="select * from member where id=?";
		Connection conn = getConnection();
		memberdto dto = null;
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String password = rs.getString("password");
			String name = rs.getString("name");
			int point = rs.getInt("point");
			dto = new memberdto(id, password, name , point);
		}
		conn.close();
		return dto;
	}
}
