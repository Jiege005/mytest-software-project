package mytest.survices;

import mytest.model.User;

public interface IUserService {
	
	/**
	 * 用户注册
	 * @param user
	 * @return true:success  false:failure
	 */
	public boolean register(User user);

}
