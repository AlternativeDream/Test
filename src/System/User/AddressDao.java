package System.User;

import java.util.List;
import java.util.Map;

/**
 * @TypeName：AddressDao
 * @description：用户地址管理数据持久控制器
 * @author：AS
 * @createdTime:2017年3月2日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
public interface AddressDao {
	/**
	 * 添加用户地址信息
	 * @param address 地址信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int add(Address address) throws Exception;

	/**
	 * 删除用户地址信息
	 * @param address 地址信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int delete(Address address)throws Exception;

	/**
	 * 检索用户地址信息
	 * @param address 地址信息
	 * @return 成功返回一个User对象，否则返回null
	 */
	public List<Map<Integer, Object>> query(Address address)throws Exception;

	/**
	 * 修改用户地址信息
	 * @param address 地址信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int modify(Address address)throws Exception;

}
