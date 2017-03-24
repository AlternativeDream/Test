package System.User;

/**
 * @TypeName：Address
 * @description：用户地址信息实体
 * @author：AS
 * @createdTime:2017年3月2日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
public class Address {
	private Integer addressId;
	private Integer userId;
	private String address;
	private String addressee; //收件人
	private String addtel; //收件人电话
	
	public Address() {}

	public Address(Integer addressId, Integer userId, String address, String addressee, String addtel) {
		this.addressId = addressId;
		this.userId = userId;
		this.address = address;
		this.addressee = addressee;
		this.addtel = addtel;
	}

	public Integer getAddressId() {
		return addressId;
	}



	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddressee() {
		return addressee;
	}

	public void setAddressee(String addressee) {
		this.addressee = addressee;
	}

	public String getAddtel() {
		return addtel;
	}

	public void setAddtel(String addtel) {
		this.addtel = addtel;
	}

	@Override
	public String toString() {
		return "Address [addressId=" + addressId + ", userId=" + userId + ", address=" + address + ", addressee="
				+ addressee + ", addtel=" + addtel + "]";
	}

	
	
	
}
