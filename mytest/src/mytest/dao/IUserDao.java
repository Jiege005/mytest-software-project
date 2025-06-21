package mytest.dao;

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
}
