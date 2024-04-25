package appform;


import java.io.File;
import java.util.ArrayList;

public class AppFormService {
private AppFormDao dao;
public static File f=new File("");
public static String lpath=f.getAbsolutePath().replace("Desktop","");
public static String path=lpath+"\\git\\Recruit_ProjectMM\\middle-project\\src\\main\\webapp\\app\\";
		public AppFormService() {
		
		dao = new AppFormDao();
	}
	
	// 지원자(추가)
		public void addForm(AppForm f) {
			dao.insert(f);
		}
		
	// 지원자 수정(업데이트)
		public void editForm(AppForm f) {
			dao.update(f);
		}
		
	//지원자 삭제
		public void delForm(int userid) {
			dao.delete(userid);
		}
	
	// 지원자 목록
		public ArrayList<AppForm> getAll(){
			return dao.selectAll();
		}
		
	//userid로 지원자 검색 , userid  int값 
		public AppForm getForm(int userid) {
			return dao.select(userid);
		}
}
