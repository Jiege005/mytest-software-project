package mytest.dao;

import java.util.List;

import mytest.model.User;

public interface IUserDao {
	
	/**
	 * 用户注册
	 * @param user
	 * @return int >0:success
	 */
	public int register(User user);
	
	/**
	 * 用户登录
	 * @param username
	 * @param password
	 * @return int:uid
	 */
	public int login(String username,String password);
	
	/**
	 * 用户列表
	 * @return List<Users> 
	 */
	public List<User> getUserList();
}
