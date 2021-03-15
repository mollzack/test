package net.test.my;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;



@Component
@Repository
public class HomeDAO  { 
   
	@Autowired
	SqlSessionTemplate temp ;
	
	public void Insertjoin(HomeDTO dto) {
		  temp.insert("test.add", dto); 
		}//
	
	public String login(HomeDTO dto) {
		String result=temp.selectOne("test.login", dto);
		return result;
	}
	
	public List<HomeDTO> select(){
		return temp.selectList("test.list");
	}	
	
	public HomeDTO detail(String data) {
		return temp.selectOne("test.detail", data);
	}
	
	public void delete(String data) {
		temp.delete("test.delete", data);
	}
	
	public void edit(HomeDTO dto) {
		temp.update("test.edit", dto);
	}
	
	public int idCheck(String cid) {
		int idCount = temp.selectOne("test.idcheck", cid);
		return idCount;
	}

	


}//BoardDAO class END








