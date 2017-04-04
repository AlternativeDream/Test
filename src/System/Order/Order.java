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
	private Integer userId;
	private Integer addressId;
	private String data;
	private Integer wareId;
	private String quantity;
	private String totalPrice;
	
	
	public Order() {}

	public Order(Integer orderId) {
		this.orderId = orderId;
	}
	
	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getAddressId() {
		return addressId;
	}

	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}

	public Integer getWareId() {
		return wareId;
	}

	public void setWareId(Integer wareId) {
		this.wareId = wareId;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
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
		return "Order [orderId=" + orderId + ", userId=" + userId + ", addressId=" + addressId + ", data=" + data
				+ ", wareId=" + wareId + ", quantity=" + quantity + ", totalPrice=" + totalPrice + "]";
	}

	


	
	
}
