package System.Ware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;

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
public class WareAction extends ActionSupport{

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
	
	private Ware ware;

	/**
	 *  新增商品
	 */
	public String AddWare(){
		String result = "success";
		
		try{
			String wareName = request.getParameter("wareName");
			String warePrice = request.getParameter("warePrice");
			String description = request.getParameter("description");
			String wareKind = request.getParameter("wareKind");
			String warekey = request.getParameter("warekey");
			String wareimg = request.getParameter("wareimg");
			
			ware.setWareName(wareName);
			ware.setWarePrice(warePrice);
			ware.setDescription(description);
			ware.setWareKind(wareKind);
			ware.setWarekey(warekey);
			ware.setWareimg(wareimg);
			
			if(wareService.add(ware) > 0){
				session.setAttribute("message", "添加成功！");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}

}
