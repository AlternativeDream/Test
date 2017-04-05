package System.Order;

import java.util.List;

/**
 * @TypeName：OrderService
 * @description：订单管理业务控制器
 * @author：AS
 * @createdTime:2017年2月26日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
public interface OrderService {
	/**
	 * 添加订单信息
	 * @param order 订单信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int add( Order order )throws Exception;
	
	/**
	 * 修改订单信息
	 * @param order 订单信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int modify( Order order )throws Exception;
	
	/**
	 * 删除订单信息
	 * @param order 订单信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int delete( Order order )throws Exception;
	
	/**
	 * 加载订单详情
	 * @param order 订单信息
	 * @return 成功返回订单列表,否则返回null
	 */
//	Indent load( Order order)throws Exception;
	
	/**
	 * 统计订单信息
	 * @param order 过滤条件
	 * @return 成功返回大于等于0的数值，否则返回小于0的数值
	 */
	int count( Order order )throws Exception;
	
	/**
	 * 检索订单信息
	 * @param order 过滤条件
	 * @return 成功返回List类型对象，否则返回null
	 */
	List<?> query( Order order  )throws Exception;
	
	/**
	 * 按日期检索订单信息
	 * @param order 订单过滤条件
	 * @param DayStart 开始日期
	 * @param DayEnd 结束日期
	 * @return 成功返回List类型对象，否则返回null
	 * @throws Exception 抛出异常
	 */
	List<?> queryOrderDate( Order order, String DayStart,String DayEnd)throws Exception;
}
