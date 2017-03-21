package System.Ware;

import java.sql.SQLException;
import java.util.List;

/**
 * @TypeName：WareService
 * @description：商品管理业务控制器
 * @author：AS
 * @createdTime:2017年2月26日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
public interface WareService {
	/**
	 * 添加产品信息
	 * @param ware 产品信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 * @throws SQLException 
	 */
	int add( Ware ware ) throws Exception;
	
	/**
	 * 修改产品信息
	 * @param ware 产品信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 * @throws Exception 
	 */
	int modify( Ware ware ) throws Exception;
	
	/**
	 * 删除产品信息
	 * @param ware 产品信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 * @throws Exception 
	 */
	int delete( Ware ware ) throws Exception;
	
	/**
	 * 加载产品详情
	 * @param ware 产品信息
	 * @return 成功返回true,否则返回false
	 * @throws Exception 
	 */
	boolean load( Ware ware ) throws Exception;
	
	/**
	 * 统计产品信息
	 * @param ware 过滤条件
	 * @return 成功返回大于等于0的数值，否则返回小于0的数值
	 * @throws Exception 
	 */
	int count( Ware ware ) throws Exception;
	
	/**
	 * 检索产品信息
	 * @param menu 过滤条件
	 * @return 成功返回List类型对象，否则返回null
	 */
	List<?> query( Ware ware) throws Exception;
	
	List<?> querywareName(Integer[] mn) throws Exception;
}
