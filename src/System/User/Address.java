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
	private User user;
	private String address;
	private String addressee; //收件人
	private String addtel; //收件人电话
	
	public Address() {}

	public Address(Integer addressId, User user, String address, String addressee, String addtel) {
		this.addressId = addressId;
		this.user = user;
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



	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
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
		return "Address [addressId=" + addressId + ", user=" + user + ", address=" + address + ", addressee="
				+ addressee + ", addtel=" + addtel + "]";
	}
	
	
	
}
