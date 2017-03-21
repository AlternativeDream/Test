package System.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @TypeName：AddressDaoImp
 * @description：用户地址管理数据持久控制器
 * @author：AS
 * @createdTime:2017年3月2日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */

@Repository
public class AddressDaoImp implements AddressDao {
	
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
	public int add(Address address) throws Exception {
		int result = -1;
		
		try{
			if(this.query(address).size() == 0){
				getSession().save(address);
				result = 1;
			}
		}catch(Exception e){
			throw e;
		}

		return result;
	}

	@Override
	public int delete(Address address) throws Exception {
		int result = -1;
		
		try{
			getSession().delete(address);
			
			if(this.query(address).size() == 0){
				result = 1;
			}

		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public List<Map<Integer, Object>> query(Address address) throws Exception {
		List<Map<Integer,Object>> result = new ArrayList<Map<Integer, Object>>();
		
		try{
			String Hql = " from Address a where 1=1";
			Query query = null;
			
			if(address.getUser() != null && address.getUser().getUserId() != null && !address.getUser().getUserId().equals("") && address.getAddress() != null && !address.getAddress().equals("") ){
				Hql += " and a.userId=? and a.address=?";
				query = getSession().createQuery(Hql).setInteger(0, address.getUser().getUserId()).setString(1, address.getAddress());
			}else if(address.getUser() != null && address.getUser().getUserId() != null && !address.getUser().getUserId().equals("")){
				Hql += " and a.userId=?";
				query = getSession().createQuery(Hql).setInteger(0, address.getUser().getUserId());
			}else{
				query = getSession().createQuery(Hql);
			}
			
			List<?> list = query.list();
			Address add;
			Map<Integer,Object> map = new HashMap<Integer, Object>();
			
			for(int i = 0; i < list.size(); i++){
				add = (Address)list.get(i);
				map.put(add.getAddressId(), add);
				result.add(map);
			}
			
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public int modify(Address address) throws Exception {
		int result = -1;
		
		try{
			getSession().update(address);
			result = 1;
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

}
