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
 * @TypeName：UserDaoImp
 * @description：用户管理数据持久控制器
 * @author：AS
 * @createdTime:2017年3月2日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
@Repository
public class UserDaoImp implements UserDao {
	
	//private static Configuration configuration = new Configuration().configure();
	//private static ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();
	
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
	public int add(User user) throws Exception {
		int result = -1;
		
		try{
			getSession().save(user);
			result = 1;
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public int delete(User user) throws Exception {
		int result = -1;
		
		try{
			getSession().delete(user);
			if(this.query(user).size() == 0){
				result = 1;
			}
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public List<Map<Integer, Object>> query(User user) throws Exception {
		List<Map<Integer,Object>> result = new ArrayList<Map<Integer, Object>>();
		
		try{
			String Hql = " from User u where 1=1";
			Query query = null;
			
			if(user.getUserId() != null && !user.getUserId().equals("")){
				Hql += " and u.userId=?";
				query = getSession().createQuery(Hql).setInteger(0, user.getUserId());
			}else if(user.getUserName() != null && !user.getUserName().equals("")){
				Hql += " and u.userName=? and u.userPassword=?";
				query = getSession().createQuery(Hql).setString(0, user.getUserName()).setString(1, user.getUserPassword());
			}else if(user.getUserTel() != null && !user.getUserTel().equals("")){
				Hql += " and u.userTel=? and u.userPassword=?";
				query = getSession().createQuery(Hql).setString(0, user.getUserTel()).setString(1, user.getUserPassword());
			}else{
				query = getSession().createQuery(Hql);
			}
			
			List<?> list = query.list();
			User userlist;
			Map<Integer,Object> map = new HashMap<Integer, Object>();
			
			for(int i = 0; i < list.size(); i++){
				userlist = (User)list.get(i);
				map.put(userlist.getUserId(), userlist);
				result.add(map);
			}
			
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public int modify(User user) throws Exception {
		int result = -1;
		
		try{
			getSession().update(user);
			result = 1;
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public int hasName(User user) throws Exception {
		int result = 1;
		
		try{
			String Hql = " from User u where 1=1";
			Query query = null;
			
			if(user.getUserName() !=null && !user.getUserName().equals("")){
				Hql += " and u.userName = ?";
				query = getSession().createQuery(Hql).setString(0, user.getUserName());
			}
			
			List<?> list = query.list();
			
			if(list.size() > 0){
				result = -1;
			}
			
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public List<?> queryUsers(User user) throws Exception {
		List<User> result = new ArrayList<User>();
		
		try{
			String Hql = " from User u where 1=1";
			Query query = null;
			
			if(user.getUserName() != null && !user.getUserName().equals("")){
				Hql += " and u.userName=?";
				query = getSession().createQuery(Hql).setString(0, user.getUserName());
			}else if(user.getUserTel() != null && !user.getUserTel().equals("")){
				Hql += " and u.userTel=?";
				query = getSession().createQuery(Hql).setString(0, user.getUserTel());
			}else{
				query = getSession().createQuery(Hql);
			}
			
			List<?> list = query.list();
			User userlist;
			
			for(int i = 0; i < list.size(); i++){
				userlist = (User) list.get(i);
				result.add(userlist);
			}
			
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

}
