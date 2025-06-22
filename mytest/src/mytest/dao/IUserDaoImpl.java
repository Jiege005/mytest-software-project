package mytest.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import mytest.model.User;
import mytest.util.JDBCUtil;


public class IUserDaoImpl implements IUserDao{

	@Override
	public int register(User user) {
		Connection conn = JDBCUtil.getConn();
		PreparedStatement pstmt = null;
		String sql = "insert into user(username,email,password) values(?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			int i = pstmt.executeUpdate();
			return i;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int login(String username, String password) {
		Connection conn = JDBCUtil.getConn();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int uid = 0;
		String sql = "select uid from user where username=? and password=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				uid = rs.getInt("uid");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return uid;
	}

}
