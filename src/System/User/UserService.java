package System.User;

import java.util.List;

/**
 * @TypeName：UserService
 * @description：用户管理业务控制器
 * @author：AS
 * @createdTime:2017年2月26日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
public interface UserService {
	/**
	 * 错误状态码(-99)：用户名已存在
	 */
	public final static int NAME_EXIST = -99 ; 
	
	/**
	 * 错误状态码(-98)：手机号码不符合规则
	 */
	public final static int TEL_ERROR = -98 ; 
	
	public int hasName(User user)throws Exception;
	
	/**
	 * 添加用户信息
	 * @param user 用户信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 * @throws Exception 
	 */
	int add( User user ) throws Exception;
	
	/**
	 * 修改用户信息
	 * @param user 用户信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int modify( User user )throws Exception;
	
	/**
	 * 删除用户信息
	 * @param user 用户信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int delete( User user )throws Exception;
	
	/**
	 * 加载用户详情
	 * @param user 用户信息
	 * @return 成功返回true,否则返回false
	 */
	User load( User user )throws Exception;
	
	/**
	 * 检索用户信息
	 * @param user 过滤条件
	 * @return 成功返回List类型对象，否则返回null
	 */
	List<?> query( User user )throws Exception;
	
	/**
	 * 检索用户信息列表
	 * @param user 过滤条件
	 * @return 成功返回List类型对象，否则返回null
	 */
	List<?> querUsers( User user )throws Exception;
}
