package System.Order;

import java.util.List;

/**
 * @TypeName：OrderDao
 * @description：订单管理数据持久控制器
 * @author：AS
 * @createdTime:2017年2月26日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
public interface OrderDao {
	/**
	 * 添加订单信息
	 * @param order 订单信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int add( Order order )throws Exception;

	/**
	 * 统计订单信息
	 * @param order 过滤条件
	 * @return 成功返回大于等于0的数值，否则返回小于0的数值
	 */
	int count( Order order )throws Exception;

	/**
	 * 删除订单信息
	 * @param order 订单信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int delete( Order order )throws Exception;

	/**
	 * 检索订单信息
	 * @param pager 
	 * @param order 订单信息
	 * @return 成功返回Map(列名为key,列值为value)的集合,否则返回null
	 */
	List<Order> query( Order order )throws Exception;

	/**
	 * 修改订单信息
	 * @param order 订单信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	int modify( Order order )throws Exception;
}
