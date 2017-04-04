package System.Order;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @TypeName：OrderDaoImp
 * @description：订单管理数据持久控制器
 * @author：AS
 * @createdTime:2017年3月2日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */

@Repository
public class OrderDaoImp implements OrderDao {

	@Autowired
	private SessionFactory sessionFactory;
	/**
	 * 获取Session对象并开启事务
	 * @throws Exception 
	 * @throws SQLException 
	 */
	
	private Session getSession() throws Exception{
		return sessionFactory.getCurrentSession();
	}
	

	@Override
	public int add(Order order) throws Exception {
		int result = -1;
		
		try{
			getSession().save(order);
			result = 1;
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	
	@Override
	public int count(Order order) throws Exception {
		int result = -1;
		
		try{
			String Hql = "select count(*) from Order o where 1=1";
			Query query = null;
			
			if(order != null && !order.equals("") && order.getUserId() != null && !order.getUserId().equals("")){
				Hql += " and o.user=?";
				query = getSession().createQuery(Hql).setInteger(0, order.getUserId());
			}else{
				query = getSession().createQuery(Hql);
			}
			
			result = ((Number) query.uniqueResult()).intValue();
			
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public int delete(Order order) throws Exception {
		int result = -1;
		
		try{
			getSession().delete(order);
			if(this.query(order).size() == 0){
				result = 1;
			}
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public List<Order> query(Order order) throws Exception {
		List<Order> result = new ArrayList<Order>();
		
		try{
			String Hql = " from Order o where 1=1";
			Query query = null;
			
			if(order.getUserId() != null && order.getUserId() != null && !order.getUserId().equals("")){
				Hql += " and o.userId=?";
				if(order.getData() != null && !order.getData().equals("")){
					Hql += " and o.data=?";
					query = getSession().createQuery(Hql).setInteger(0, order.getUserId()).setString(1, order.getData());
				}else{
					query = getSession().createQuery(Hql).setInteger(0, order.getUserId());
				}
			}else if(order.getOrderId() != null && !order.getOrderId().equals("")){
				Hql += " and o.orderId=?";
				query = getSession().createQuery(Hql).setInteger(0, order.getOrderId());
			}else{
				query = getSession().createQuery(Hql);
			}
			
			List<?> list = query.list();
			Order ord;
			
			for(int i = 0; i < list.size();i++){
				ord = (Order)list.get(i);
				result.add(ord);
			}
			
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public int modify(Order order) throws Exception {
		int result = -1;
		
		try{
			getSession().update(order);
			result = 1;
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

}
