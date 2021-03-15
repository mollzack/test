package net.test.my;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;





@Component
@Repository
public class BoardDAO  { 
   
	@Autowired
	SqlSessionTemplate temp ;
	
	public void dbInsert(BoardDTO dto) {
	  temp.insert("board.add", dto); 
	}//end	
	
	public List<BoardDTO> dbSelect() {
		
		return temp.selectList("board.selectAll");
	  
	}//end
	
	public List<BoardDTO> dbSelect(int start,int end,String skey, String sval ) {
		BoardDTO dto= new BoardDTO();
		dto.setStart(start);
		dto.setEnd(end);
		dto.setSkey(skey);
		dto.setSval(sval);
		
		return temp.selectList("board.selectAll",dto);
	  
	}//end
	
	
	public int dbCount() {
	  return temp.selectOne("board.countAll");
	}//end
	
	public int dbCount1(String skey, String sval) {
		BoardDTO dto= new BoardDTO();
		dto.setSkey(skey);
		dto.setSval(sval);
		  return temp.selectOne("board.countAll1",dto);
		}//end
	
	public BoardDTO  dbDetail(int data ) {
		return temp.selectOne("board.detail", data);
	}//end
	
	public int dbhit(int data) {
		return	temp.update("board.hit", data);
	}
	public void dbdelete(int data) {
		temp.delete("board.delete", data);
	}
	public void dbedit(BoardDTO dto) {
		temp.update("board.edit", dto);
	}
}//BoardDAO class END








