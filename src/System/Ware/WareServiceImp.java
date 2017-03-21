package System.Ware;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @TypeName：WareServiceImp
 * @description：商品管理业务控制器
 * @author：AS
 * @createdTime:2017年3月2日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */
@Service
public class WareServiceImp implements WareService {
	
	@Autowired
	protected WareDao provider;
	
	/**
	 * 验证产品是否存在
	 * @param ware 产品信息
	 * @return 存在返回值大于0,否则返回值小于0
	 * @throws Exception 
	 */
	public int hasMenu(Ware ware) throws Exception{
		int result = -1;
		
		try{
			List<?> wares=this.query(ware);

			if( wares != null && wares.size() > 0){
				result = 1;
			}
			
		}catch(Exception e){
			throw e;
		}

		return result;
	}
	
	@Override
	public int add(Ware ware) throws Exception {
		int result = -1;
		
		try{
			result = this.provider.add(ware);
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public int modify(Ware ware) throws Exception {
		int result = -1;
		
		try{
			result = this.provider.modify(ware);
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public int delete(Ware ware) throws Exception {
		int result = -1;
		
		try{
			result = this.provider.delete(ware);
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public boolean load(Ware ware) throws Exception {
		boolean result = false;
		
		try{
			if(ware.getWareId() == null || ware.getWareId().equals("")){
				return result;
			}
			
			List<?> wares = this.query(ware);
			
			if(wares == null || wares.size() !=1){
				return result;
			}
			
			ware = (Ware) wares.get(0);
			result = true;
			
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public int count(Ware ware) throws Exception {
		int result = 0;
		
		try{
			result = this.provider.count(ware);
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public List<?> query(Ware ware) throws Exception {
		List<?> result = null;
		
		try{
			result = this.provider.query(ware);
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public List<?> querywareName(Integer[] wn) throws Exception {
		List<Ware> result = new ArrayList<Ware>();
		
		try{
			Ware ware;
			
			if(wn == null || wn.length == 0){
				return result;
			}
			
			for(int i = 0; i < wn.length; i++){
				ware = (Ware) this.query(new Ware(wn[i])).get(0);
				result.add(ware);
			}
			
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

}
