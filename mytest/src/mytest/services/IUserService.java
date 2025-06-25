package mytest.services;

import java.util.List;

import mytest.model.User;

public interface IUserService {
	
	/**
	 * 用户注册
	 * @param user
	 * @return true:success  false:failure
	 */
	public boolean register(User user);

	/**
	 * 用户登录
	 * @param username
	 * @param password
	 * @return true:success
	 */
	public int login(String username,String password);
	
	/**
	 * 用户列表
	 * @return List<Users> 
	 */
	public List<User> getUserList();
}
