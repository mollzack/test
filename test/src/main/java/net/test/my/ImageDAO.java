package net.test.my;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;





@Component
@Repository
public class ImageDAO  { 
   
	@Autowired
	SqlSessionTemplate temp ;
	
	public void imageinsert(ImageDTO dto) {
		temp.insert("image.add", dto);
	}
	
	public List<ImageDTO> dbSelect(int start,int end,String skey, String sval ) {
		ImageDTO dto= new ImageDTO();
		dto.setStart(start);
		dto.setEnd(end);
		dto.setSkey(skey);
		dto.setSval(sval);
		
		return temp.selectList("image.selectAll",dto);
	  
	}//end
	
	
	public int dbCount() {
	  return temp.selectOne("image.countAll");
	}//end
	
	public int dbCount1(String skey, String sval) {
		BoardDTO dto= new BoardDTO();
		dto.setSkey(skey);
		dto.setSval(sval);
		  return temp.selectOne("image.countAll1",dto);
		}//end
	
	public ImageDTO imagedetail(int data) {
		return temp.selectOne("image.detail", data);
	}
	public void imagedelete(int data) {
		temp.delete("image.delete", data);
	}
}//BoardDAO class END








