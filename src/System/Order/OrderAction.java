package System.Order;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import System.Pay.PingPlusPlusService;
import System.User.Address;
import System.User.AddressService;
import System.User.User;
import System.Ware.Ware;
import System.Ware.WareService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @TypeName：OrderAction
 * @description：订单视图管理器
 * @author：AS
 * @createdTime:2017年4月2日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
public class OrderAction extends ActionSupport implements ModelDriven<Order> {

	/**
		 * @function
		 * @param 
		 * @return 
	     */
	private static final long serialVersionUID = 1L;
	@Autowired
	OrderService orderService;
	@Autowired
	WareService wareService;
	@Autowired
	AddressService addressService;
	HttpSession session = ServletActionContext.getRequest().getSession();
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response = ServletActionContext.getResponse();
	PrintWriter out;
	
	private Order order;
	private User user;
	
	public String getCharge(){
		String result = null;
		
		try{
			String orderNo = order.getOrderId().toString();
			int amount = Integer.parseInt(order.getTotalPrice());
			String subject = "Subject";
			String body = "Body";
			String channel = "alipay_pc_direct";
			String clientIP = "127.0.0.1";
			String success_url = "http://127.0.0.1:8080/SnackMall/info.jsp";
			
			String charge = PingPlusPlusService.charge(orderNo, amount, subject, body, channel, clientIP,success_url);
			
			out = response.getWriter();
			out.print(charge);
			out.flush();
			out.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 *  新增订单
	 */
	public String AddOrder(){
		String result = null;
		
		try{
			String wares = request.getParameter("wares");
			String queity = request.getParameter("queity");
			Integer addressId = Integer.parseInt(request.getParameter("address"));
			System.out.println(addressId);
			user = (User) session.getAttribute("User");
			
			String[] w = wares.split(",");
			String[] q = queity.split(",");
			Integer[] wn = new Integer[w.length];
			
			order.setUser(user);
			
			for(int i = 0; i < w.length; i++){
				wn[i] = Integer.parseInt(w[i]);
			}
			
			List<?> warelist = wareService.querywareName(wn);
			Ware ware;
			Address address = new Address();
			address.setAddressId(addressId);
			address.setUserId(user.getUserId());
			address = (Address) addressService.query(address).get(0);
			Integer price;
			order.setAddress(address);
			
			for(int s = 0; s < warelist.size(); s++){
				ware = (Ware) warelist.get(s);
				order.setWare(ware);
				order.setQuantity(q[s]);
				price = Integer.parseInt(ware.getWarePrice()) * Integer.parseInt(q[s]) ;
				order.setTotalPrice(price.toString());
				System.out.println(order.toString());
				orderService.add(order);
			}
			
			this.getCharge();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	public String getOrders(){
		String result = null;
		
		try{
			List<?> list;
			JSONArray rsp;
			User user = (User) session.getAttribute("User");
			String userId = request.getParameter("userId");
			
			if(user == null && userId != null && !userId.equals("")){
				Integer id = Integer.parseInt(userId);
				user = new User();
				user.setUserId(id);
			}
			
			if(user != null && user.getUserId() == 0){
				user = new User();
				Integer id = Integer.parseInt(userId);
				user.setUserId(id);
			}

			if(order == null){
				order = new Order();
			}
			
			order.setUser(user);
			
			list = orderService.query(order);
			JsonConfig jsonConfig = new JsonConfig();
			jsonConfig.setExcludes(new String[] {"user"});
			System.out.println(list.toString());
			rsp = JSONArray.fromObject(list,jsonConfig);
			response.setContentType("application/json;charset=UTF-8");
			
			out = response.getWriter();
			out.print(rsp.toString());
			out.flush();
			out.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	public String getOrderDate(){
		String result = null;
		
		try{
			List<?> list;
			JSONArray rsp;
			String DayStart = request.getParameter("DayStart");
			String DayEnd = request.getParameter("DayEnd");
			String status = request.getParameter("status");
			String userId = request.getParameter("userId");
			User user = new User();
			
			if(userId != null && !userId.equals("")){
				user.setUserId(Integer.parseInt(userId));
				order.setUser(user);
			}
			
			if(DayStart != null && DayStart != "" && DayEnd != null && DayEnd != ""){
				DayStart = DayStart + "  00:00:00";
				DayEnd = DayEnd + "  23:59:59";
			}
			
			if(status != null && !status.equals("")){
				order.setStatus(status);
			}else{
				order.setStatus(null);
			}

			list = orderService.queryOrderDate(order, DayStart, DayEnd);
			JsonConfig jsonConfig = new JsonConfig();
			jsonConfig.setExcludes(new String[] {"user"});
			System.out.println(list.toString());
			rsp = JSONArray.fromObject(list,jsonConfig);
			response.setContentType("application/json;charset=UTF-8");
			
			out = response.getWriter();
			out.print(rsp.toString());
			out.flush();
			out.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	public String ModifyOrder(){
		String result = null;
		
		try{
			String status = request.getParameter("status");
			String orderId = request.getParameter("orderId");
			order = new Order();
			
			if(status != null && !status.equals("") && orderId != null && !orderId.equals("")){
				Integer id = Integer.parseInt(orderId);
				order.setOrderId(id);
				order = (Order) orderService.query(order).get(0);
				order.setStatus(status);
				orderService.modify(order);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	@Override
	public Order getModel() {
		order = new Order();
		return null;
	}

}
