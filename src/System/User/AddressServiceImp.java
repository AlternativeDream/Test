package System.User;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @TypeName：AddressServiceImp
 * @description：用户地址管理业务控制器
 * @author：AS
 * @createdTime:2017年3月2日
 * @version：1.0.0.0
 * @history:
 *     1.
 *     2.
 */

@Service
public class AddressServiceImp implements AddressService {
	
	@Autowired
	protected AddressDao provider ;
	
	/**
	 * 对地址信息进行模式匹配校验
	 * @param adresss 地址信息
	 * @return 成功返回大于0的数值,否则返回小于等于0的数值
	 */
	public int match(Address address){
		int result = 1;

		if(address.getAddtel().length() !=11  &&  address.getAddtel().length() != 8){
			result=TEL_ERROR;
		}

		return result;
	}

	@Override
	public int add(Address address) throws Exception {
		int result = -1;
		
		try{
			result = this.match(address);
			
			if(result < 0){
				return result;
			}
			
			result = this.provider.add(address);
			
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public int modify(Address address) throws Exception {
		int result = this.match(address);
		
		try{
			if(result < 0){
				return result;
			}
			
			result = this.provider.modify(address);
			
			
			
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

	@Override
	public int delete(Address address) throws Exception {
		int result = -1;
		
		try{
			result = this.provider.delete(address);
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}
	
	@Override
	public boolean load(Address address) throws Exception {
		boolean result = false;
		
		try{
			if(address.getAddress() == null || address.getAddress().equals("")){
				return result;
			}
			
			List<?> add = this.query(address);
			
			if(add == null || add.size() != 1){
				return result;
			}
			
			address = (Address) add.get(0);
			result = true;
			
		}catch(Exception e){
			throw e;
		}
		return result;
	}

	@Override
	public List<?> query(Address address) throws Exception {
		List<Address> result = new ArrayList<Address>();
		
		try{
			List<Map<Integer, Object>> list = this.provider.query(address);
			
			if(list == null || list.size() == 0){
				return result;
			}
			
			for(Map<Integer,Object> map:list){
				for(Object value : map.values()){
					result.add((Address) value);
				}
			}
		}catch(Exception e){
			throw e;
		}
		
		return result;
	}

}
