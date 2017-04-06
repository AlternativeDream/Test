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
import net.sf.json.JsonConfig;

/**
 * @TypeName：UserAction
 * @description：用户管理视图控制器
 * @author：AS
 * @createdTime:2017年3月3日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
public class UserAction extends ActionSupport implements ModelDriven<User>{

	/**
		 * @function
		 * @param 
		 * @return 
	     */
	private static final long serialVersionUID = 1L;
	@Autowired
	UserService userService;
	HttpSession session = ServletActionContext.getRequest().getSession();
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response = ServletActionContext.getResponse();
	PrintWriter out;
	
	private User user;
	
	
	/**
	 * 验证用户名是否存在
	 */
	public String hasName(){
		String result = "success";
		
		
		try{
			String un = request.getParameter("un");	
			System.out.println(un);
			
			user.setUserName(un);
			
			if(userService.hasName(user) < 0){
				request.setAttribute("message", "用户名已存在");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}

	/**
	 * 处理登录请求
	 */
	public String Login(){
		String result = "fail";
		
		try{
			String login = request.getParameter("loginname");
			String password = request.getParameter("Password");
			
			if(login.length() == 11 || login.length() == 13){
				user.setUserTel(login);
			}else{
				user.setUserName(login);
			}
			
			user.setUserPassword(password);
			
			User mes = userService.load(user);
			
			if(mes != null){
				session.setAttribute("User", mes);
				result = "success";
			}else{
				addFieldError("UserError", "用户名或密码错误！");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * 处理注册请求
	 */
	public String Register(){
		String result = "fail";
		
		try{
			int mes = -1;
			String message = "";
			String repassword = request.getParameter("repassword");
			if(user.getUserPassword().equals(repassword)){
				mes = userService.add(user);
				System.out.println(mes);
			}else{
				message = "请确认密码是否一致！";
			}
			
			user = userService.load(user);

			if( mes > 0 && user != null){
				session.setAttribute("User", user);
				result = "success";
			}else{
				message = "用户已存在！";
			}
			
			request.setAttribute("message", message);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 *  处理用户修改信息请求
	 * 
	 */
	public String Modify(){
		String result = "success";
		
		 try{
			 user = (User) session.getAttribute("User");
			 String userName = request.getParameter("userName");
			 String userTel = request.getParameter("userTel");
			 String sex = request.getParameter("sex");
			 user.setUserName(userName);
			 user.setUserTel(userTel);
			 user.setUserSex(sex);

			 if(userService.modify(user) > 0){
				 session.setAttribute("User", user);
			 }
			 
		 }catch(Exception e){
			 e.printStackTrace();
		 }
		
		return result;
	}
	
	/**
	 * 
	 *  修改用户密码
	 * 
	 */
	public String ModifyPassword(){
		String result = "success";
		
		try{
			user = (User) session.getAttribute("User");
			String oldpassword = request.getParameter("oldpassword");
			String newpassword = request.getParameter("newpassword");
			
			if(user.getUserPassword().equals(oldpassword)){
				user.setUserPassword(newpassword);
				
				if(userService.modify(user) > 0){
					session.setAttribute("User", user);
					System.out.println(user.toString());
				}
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	public String getUsers(){
		String result = null;
		
		try{
			List<?> list;
			JSONArray rsp;
			String usermsg = request.getParameter("usermsg");
			
			if(usermsg != null && !usermsg.equals("")){
				if(usermsg.length() == 11 || usermsg.length() == 13){
					user.setUserTel(usermsg);
				}else{
					user.setUserName(usermsg);
				}
			}
			
			list = userService.querUsers(user);
			JsonConfig jsonConfig = new JsonConfig();
			jsonConfig.setExcludes(new String[] {"address","orders"});
			
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
	
	public User getModel() {
		user = new User();
		return user;
	}
	
}
