package System.Ware;

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
 * @TypeName：WareAction
 * @description： 商品视图控制器
 * @author：AS
 * @createdTime:2017年3月23日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
public class WareAction extends ActionSupport implements ModelDriven<Ware>{

	/**
		 * @function
		 * @param 
		 * @return 
	     */
	private static final long serialVersionUID = 1L;
	@Autowired
	WareService wareService;
	HttpSession session = ServletActionContext.getRequest().getSession();
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response = ServletActionContext.getResponse();
	
	private Ware ware;

	/**
	 *  新增商品
	 */
	public String AddWare(){
		String result = "success";
		
		try{	
			if(wareService.add(ware) > 0){
				session.setAttribute("message", "添加成功！");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	public String getWares(){
		String result = null;
		
		try{
			List<?> list;
			JSONArray rsp;
			
			if(ware == null){
				ware = new Ware();
			}
			
			list = wareService.query(ware);
			rsp = JSONArray.fromObject(list);
			response.setContentType("application/json;charset=UTF-8");
			
			PrintWriter out = response.getWriter();
			out.print(rsp.toString());
			out.flush();
			out.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public Ware getModel() {
		ware = new Ware();
		return ware;
	}

}
