package System.User;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import net.sf.json.JSONArray;

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
public class AddressAction extends ActionSupport implements ModelDriven<Address> {

	/**
		 * @function
		 * @param 
		 * @return 
	     */
	private static final long serialVersionUID = 1L;
	@Autowired
	UserService userService;
	@Autowired
	AddressService addressService;
	HttpSession session = ServletActionContext.getRequest().getSession();
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response = ServletActionContext.getResponse();
	PrintWriter out;
	
	private User user;
	private Address address;
	
	/**
	 *  获得用户地址
	 */
	public String getAddress(){
		String result = null;
		
		try{
			List<?> list;
			JSONArray rsp;
			user = (User) session.getAttribute("User");

			if(user == null){
				String userId = request.getParameter("userId");
				user.setUserId(Integer.parseInt(userId));
				
				user = (User) userService.query(user).get(0);
			}

			address.setUserId(user.getUserId());
			list = addressService.query(address);
			
			

			if(list.size() > 0){
				rsp = JSONArray.fromObject(list);
				response.setContentType("application/json;charset=UTF-8");
				
				out = response.getWriter();
				out.print(rsp.toString());
				out.flush();
				out.close();
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 *  添加地址
	 * 
	 */
	public String NewAddress(){
		String result = null;
		
		try{
			List<?> list;
			JSONArray rsp;
			
			user = (User) session.getAttribute("User");
			address.setUserId(user.getUserId());

			if(addressService.add(address) > 0){
				list = addressService.query(address);
				
				rsp = JSONArray.fromObject(list);
				response.setContentType("application/json;charset=UTF-8");
				
				out = response.getWriter();
				out.print(rsp.toString());
				out.flush();
				out.close();
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 *  伤处地址
	 */
	public String DelAddress(){
		String result = null;
		System.out.println("123");
		try{
			List<?> list;
			JSONArray rsp;
			
			user = (User) session.getAttribute("User");
			address.setUserId(user.getUserId());
			
			if(address.getAddressId() == null || address.getAddressId().equals("")){
				address = (Address) addressService.query(address).get(0);
			}
			
			if(addressService.delete(address) > 0){
				address = new Address();
				address.setUserId(user.getUserId());
				list = addressService.query(address);
				
				rsp = JSONArray.fromObject(list);
				response.setContentType("application/json;charset=UTF-8");
				
				out = response.getWriter();
				out.print(rsp.toString());
				out.flush();
				out.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public Address getModel() {
		address = new Address();
		return address;
	}
}
