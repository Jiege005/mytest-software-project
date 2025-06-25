package mytest.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
	
	public List<User> getUserList(){
		Connection conn = JDBCUtil.getConn();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<User> list = null;
		String sql = "select uid,username,email from user where uid != 1";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<User>();
			while(rs.next()) {
				int uid = rs.getInt("uid");
				String username = rs.getString("username");
				String email = rs.getString("email");
				User user = new User(uid,username,email);
				list.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(rs, pstmt, null);
		}
		return list;
	}

}
