package System.User;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @TypeName：UserServiceImp
 * @description：用户管理业务控制器
 * @author：AS
 * @createdTime:2017年3月2日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */

@Service("userService")
public class UserServiceImp implements UserService {
	
	@Autowired
	protected UserDao provider ;
	
	/**
	 * 对用户信息进行模式匹配校验
	 * @param user 用户信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	public int match(User user){
		int result = 1;

		if(user.getUserTel() != null && user.getUserTel().length() !=11  &&  user.getUserTel().length() != 13){
			result=TEL_ERROR;
		}

		return result;
	}
	
	/**
	 * 用户名是否已经存在
	 * @param user 用户信息
	 * @return 存在返回true,否则返回false
	 */
	public int hasName(User user)throws Exception{
		int result = this.match(user) ;
		List<?> users = this.query(user);
		if( users != null && users.size() > 0 || this.provider.hasName(user) < 0 ){
			result = NAME_EXIST ;
		}
		return result ;
	}

	@Override
	public int add(User user) throws Exception {
		int result = -1;
		
		try{
			result = this.hasName(user);
			
			if(result < 0){
				return result;
			}
			
			result = this.provider.add(user);
			return result;
			
		}catch(Exception e){
			throw e;
		}
	}

	@Override
	public int modify(User user) throws Exception {
		int result = this.match(user);
		
		try{
			if(result < 0){
				return result;
			}
			
			result = this.provider.modify(user);
			
			return result;
			
		}catch(Exception e){
			throw e;
		}
	}

	@Override
	public int delete(User user) throws Exception {
		int result = -1;
		
		try{
			result = this.provider.delete(user);
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public User load(User user) throws Exception {
		
		User result;
		
		try{
			if(user.getUserPassword() == null && user.getUserPassword().equals("")){
				result = null;
				return result;
			}
			
			List<?> users = this.query(user);
			
			if(users == null || users.size() != 1){
				result = null;
				return result;
			}
			
			user = (User) users.get(0);
			return user;
			
		}catch(Exception e){
			throw e;
		}
	}

	@Override
	public List<?> query(User user) throws Exception {
		List<User> result = new ArrayList<User>();
		
		try{
			List<Map<Integer,Object>> list = this.provider.query(user);
			
			if(list == null || list.size() == 0){
				return result;
			}
			
			for(Map<Integer,Object> map:list){
				for(Object value : map.values()){
					result.add((User) value);
				}
			}
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public List<?> querUsers(User user) throws Exception {
		List<?> result = null;
		
		try{
			result = this.provider.queryUsers(user);
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}
}
