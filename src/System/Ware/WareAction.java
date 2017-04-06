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
import net.sf.json.JSONObject;

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
	PrintWriter out;
	
	private Ware ware;

	/**
	 *  新增商品
	 */
	public String AddWare(){
		String result = null;
		
		try{
			String imgurl = ware.getWareimg();
			String[] a = imgurl.split("\\\\");
			String img = a[a.length-1];
			
			img = "images" + "/" + ware.getWareKind() + "/" + img;
			
			ware.setWareimg(img);
			
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
			String warekey = request.getParameter("warekey");
			String wareKind = request.getParameter("wareKind");
			
			if(ware == null){
				ware = new Ware();
			}
			
			if(warekey != null && !warekey.equals("")){
				ware.setWarekey(warekey);
			}
			
			if(wareKind != null && !wareKind.equals("")){
				ware.setWareKind(wareKind);
			}
			
			list = wareService.query(ware);
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
	
	public String getWareName(){
		String result = null;
		
		try{
			List<?> list;
			JSONArray rsp;
			String cart = request.getParameter("cart");
			System.out.println(cart);
			String[] carts = cart.split(",");
			Integer[] wn = new Integer[carts.length];
			
			for(int i = 0; i < carts.length;i++){
				wn[i] = Integer.parseInt(carts[i]);
			}
			
			list = wareService.querywareName(wn);
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
	
	public String ModifyWare(){
		String result = null;
		
		try{
			if(ware !=null ){
				response.setContentType("text/html;charset=UTF-8");
				out = response.getWriter();
				if(wareService.modify(ware) > 0){
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
	public Ware getModel() {
		ware = new Ware();
		return ware;
	}

}
