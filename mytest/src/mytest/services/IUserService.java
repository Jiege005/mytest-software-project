package mytest.services;

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
	public boolean login(String username,String password);
}
