package mytest.model;

public class User {
	/*
	 * 标准的javabean: ① 私有属性以及对应的get/set方法 ② 公开无参和全参的构造方法
	 */
	private int uid;
	private String username;
	private String email;
	private String password;
	
	public User() {}
	
	public User(int uid,String username,String email) {
		this.uid = uid;
		this.username = username;
		this.email = email;
	}
	
	public User(int uid,String username,String email,String password) {
		this.uid = uid;
		this.username = username;
		this.email = email;
		this.password = password;
	}
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
