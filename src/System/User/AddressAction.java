package System.User;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @TypeName：AddressAction
 * @description：
 * @author：AS
 * @createdTime:2017年3月21日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
public class AddressAction {

	@Autowired
	AddressService addressService;
	HttpSession session = ServletActionContext.getRequest().getSession();
	HttpServletRequest request = ServletActionContext.getRequest();
	
	private User user;
	private Address address;
	
	/**
	 *  添加地址
	 * 
	 */
	public String NewAddress(){
		String result = "success";
		
		try{
			List<?> list;
			user = (User) session.getAttribute("User");
			String addre = request.getParameter("address");
			String addressee = request.getParameter("addressee");
			String addtel = request.getParameter("addtel");
			
			address = new Address();
			address.setAddress(addre);
			address.setAddressee(addressee);
			address.setAddtel(addtel);
			address.setUser(user);
			
			if(addressService.add(address) > 0){
				address = new Address();
				address.setUser(user);
				list = addressService.query(address);
				session.setAttribute("Address", list);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
}
