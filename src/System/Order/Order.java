package System.Order;

import System.User.Address;
import System.User.User;
import System.Ware.Ware;

/**
 * @TypeName：Order
 * @description：订单信息实体
 * @author：AS
 * @createdTime:2017年2月26日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
public class Order {
	private Integer orderId;
	private User user;
	private Address address;
	private String data;
	private Ware ware;
	private String quantity;
	private String totalPrice;
	
	
	public Order() {}

	public Order(Integer orderId) {
		this.orderId = orderId;
	}

	public Order(Integer orderId, User user) {
		this.orderId = orderId;
		this.user = user;
	}

	public Order(Integer orderId, User user, Ware ware) {
		this.orderId = orderId;
		this.user = user;
		this.ware = ware;
	}

	public Order(Integer orderId, User user, Address address, Ware ware) {
		this.orderId = orderId;
		this.user = user;
		this.address = address;
		this.ware = ware;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Ware getWare() {
		return ware;
	}

	public void setWare(Ware ware) {
		this.ware = ware;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", user=" + user + ", address=" + address + ", data=" + data + ", ware="
				+ ware + ", quantity=" + quantity + ", totalPrice=" + totalPrice + "]";
	}


	
	
}
