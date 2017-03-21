package System.User;

import java.util.List;

/**
 * @TypeName：AddressService
 * @description：用户地址管理业务控制器
 * @author：AS
 * @createdTime:2017年3月2日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
public interface AddressService {
	/**
	 * 错误状态码(-99)：地址已存在
	 */
	public final static int NAME_EXIST = -99 ; 
	
	/**
	 * 错误状态码(-98)：手机号码不符合规则
	 */
	public final static int TEL_ERROR = -98 ; 
	
	
	/**
	 * 添加用户地址信息
	 * @param address 地址信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 * @throws Exception 
	 */
	int add(Address address) throws Exception;
	
	/**
	 * 修改用户地址信息
	 * @param address 地址信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int modify(Address address)throws Exception;
	
	/**
	 * 删除用户地址信息
	 * @param address 地址信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int delete(Address address)throws Exception;
	
	/**
	 * 加载用户地址详情
	 * @param address 地址信息
	 * @return 成功返回true,否则返回false
	 */
	boolean load(Address address)throws Exception;
	
	/**
	 * 检索用户地址信息
	 * @param address 地址信息
	 * @return 成功返回List类型对象，否则返回null
	 */
	List<?> query(Address address)throws Exception;
}
