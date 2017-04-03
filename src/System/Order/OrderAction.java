package System.Order;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import System.Pay.PingPlusPlusService;
import System.Ware.Ware;

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

	@Autowired
	OrderService orderService;
	HttpSession session = ServletActionContext.getRequest().getSession();
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response = ServletActionContext.getResponse();
	PrintWriter out;
	
	private Order order;
	
	public String getCharge(){
		String result = null;
		
		try{
			String orderNo = order.getOrderId().toString();
			int amount = Integer.parseInt(order.getTotalPrice());
			String subject = "Subject";
			String body = "Body";
			String channel = "alipay_pc_direct";
			String clientIP = "127.0.0.1";
			String success_url = "localhost:8080/SnackMall/info/jsp";
			
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
			
			if(orderService.add(order) > 0){
				this.getCharge();
			}
			
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
			
			if(order == null){
				order = new Order();
			}
			
			list = orderService.query(order);
			rsp = JSONArray.fromObject(list);
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
			if(order != null){
				response.setContentType("text/html;charset=UTF-8");
				out = response.getWriter();
				if(orderService.modify(order) > 0){
					out.print("修改成功！");
				}else{
					out.print("修改失败！");
				}
				out.flush();
				out.close();
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
