package mytest.survices;

import mytest.dao.IUserDao;
import mytest.dao.IUserDaoImpl;
import mytest.model.User;

public class IUserServiceImpl implements IUserService{
	// 多态的方式创建dao对象
	private IUserDao iuserDao = new IUserDaoImpl();

	@Override
	public boolean register(User user) {
		int i = iuserDao.register(user);
		if(i>0) {
			return true;
		}
		return false;
	}

}
