package System.User;

import java.util.List;
import java.util.Map;

/**
 * @TypeName：UserDao
 * @description：用户管理数据持久控制器
 * @author：AS
 * @createdTime:2017年2月26日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
public interface UserDao {
	/**
	 * 添加用户信息
	 * @param user 用户信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int add(User user) throws Exception;

	/**
	 * 删除用户信息
	 * @param user 用户信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int delete(User user)throws Exception;

	/**
	 * 检索用户信息
	 * @param user 用户信息
	 * @return 成功返回一个User对象，否则返回null
	 */
	public List<Map<Integer, Object>> query(User user)throws Exception;

	/**
	 * 修改用户信息
	 * @param user 用户信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int modify(User user)throws Exception;
	
	/**
	 * 用户是否存在
	 * @param user 用户信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int hasName(User user)throws Exception;

}
