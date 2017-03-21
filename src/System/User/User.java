package System.User;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Repository;

import System.Order.Order;

/**
 * @TypeName：User
 * @description：用户信息实体
 * @author：AS
 * @createdTime:2017年2月26日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
@Repository
public class User {
	
	private Integer userId;
	private String userName;
	private String userPassword;
	private String userSex = "";
	private String userTel;
	
	private Set<Address> address = new HashSet<Address>();
	private Set<Order> orders = new HashSet<Order>();
	
	public User(){}
	
	
	
	public User(Integer userId, String userName, String userPassword,
			String userSex, String userTel) {
		this.userId = userId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userSex = userSex;
		this.userTel = userTel;
	}



	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}

	public Set<Address> getAddress() {
		return address;
	}

	public void setAddress(Set<Address> address) {
		this.address = address;
	}

	public Set<Order> getOrders() {
		return orders;
	}
	
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}



	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName
				+ ", userPassword=" + userPassword + ", userSex=" + userSex
				+ ", userTel=" + userTel  + "]";
	}
	
	
	
}
