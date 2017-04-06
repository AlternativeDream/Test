package System.Ware;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @TypeName：WareDaoImp
 * @description：商品管理数据持久控制器
 * @author：AS
 * @createdTime:2017年3月2日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */

@Repository
public class WareDaoImp implements WareDao {

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
	public int add(Ware ware) throws Exception {
		int result = -1;
		
		try{
			getSession().save(ware);
			result = 1;
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	
	@Override
	public int count(Ware ware) throws Exception {
		int result = -1;
		
		try{
			String Hql = "select count(*) from Ware w where 1=1";
			Query query = null;
			
			if(ware != null && !ware.equals("") && ware.getWareKind() != null && !ware.getWareKind().equals("") ){
				Hql += " and w.wareKind=?";
				query = getSession().createQuery(Hql).setString(0, ware.getWareKind());
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
	public int delete(Ware ware) throws Exception {
		int result = -1;
		
		try{
			ware.setStatus(0);
			getSession().update(ware);
			
			if(this.query(ware).size() == 0 ){
				result = 1;
			}
			
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	
	@Override
	public List<Ware> query(Ware ware) throws Exception {
		List<Ware> result = new ArrayList<Ware>();
		
		try{
			String Hql = " from Ware w where 1=1";
			Query query = null;
			
			if(ware.getWareId() != null && !ware.getWareId().equals("")){
				Hql += " and w.wareId=?";
				query = getSession().createQuery(Hql).setInteger(0, ware.getWareId());
			}else if(ware.getWareName() != null && !ware.getWareName().equals("")){
				Hql += " and w.wareName=?";
				query = getSession().createQuery(Hql).setString(0, ware.getWareName());
			}else if(ware.getWarekey() !=null && !ware.getWarekey().equals("")){
				if(ware.getWareKind() !=null && !ware.getWareKind().equals("")){
					Hql = " from Ware w where w.wareKind=? or w.warekey like ? or w.wareName like ? or w.description like ?";
					query = getSession().createQuery(Hql).setString(0, ware.getWareKind()).setString(1, "%" + ware.getWarekey() + "%").setString(2, "%" + ware.getWarekey() + "%").setString(3, "%" + ware.getWarekey() + "%");
				}else{
					Hql = " from Ware w where w.warekey like ? or w.wareName like ? or w.description like ?";
					query = getSession().createQuery(Hql).setString(0, "%" + ware.getWarekey() + "%").setString(1, "%" + ware.getWarekey() + "%").setString(2, "%" + ware.getWarekey() + "%");
				}
			}else if(ware.getWareKind() !=null && !ware.getWareKind().equals("")){
				Hql += " and w.wareKind=?";
				query = getSession().createQuery(Hql).setString(0, ware.getWareKind());
			}else{
				query = getSession().createQuery(Hql);
			}
			
			List<?> list = query.list();
			Ware wares;
			
			for(int i = 0; i < list.size(); i++){
				wares = (Ware)list.get(i);
				result.add(wares);
			}
			
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public int modify(Ware ware) throws Exception {
		int result = -1;
		
		try{
			getSession().update(ware);
			result = 1;
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

}
