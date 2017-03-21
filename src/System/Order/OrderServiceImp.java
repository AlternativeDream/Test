package System.Order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @TypeName：OrderServiceImp
 * @description：订单管理业务控制器
 * @author：AS
 * @createdTime:2017年3月3日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */

@Service
public class OrderServiceImp implements OrderService {
	
	@Autowired
	protected OrderDao provider;

	@Override
	public int add(Order order) throws Exception {
		int result = -1;
		
		try{
			result = this.provider.add(order);
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public int modify(Order order) throws Exception {
		int result = -1;
		
		try{
			result = this.provider.modify(order);
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public int delete(Order order) throws Exception {
		int result = -1;
		
		try{
			result = this.provider.delete(order);
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}
	
	@Override
	public int count(Order order) throws Exception {
		int result = 0;
		
		try{
			result = this.provider.count(order);
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public List<?> query(Order order) throws Exception {
		List<?> result;
		
		try{
			result = this.provider.query(order);
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

}
