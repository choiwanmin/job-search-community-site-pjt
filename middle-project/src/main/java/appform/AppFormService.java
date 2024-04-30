package appform;


import java.io.File;
import java.util.ArrayList;

public class AppFormService {
private AppFormDao dao;
public static String lpath=System.getProperty("user.home");
public static File findGitDirectory(File f){
	while(f !=null) {
		File cd=new File(f,"git");
		if(cd.exists() && cd.isDirectory()) {
			return cd;
		}
		System.out.println(cd.getAbsolutePath());
		f=f.getParentFile();
	}
	return null;
}
public static File findwebapp(File f){
	while(f !=null) {
		String [] fn=f.list();
		for(String s:fn) {
			File temp=new File(f.getAbsolutePath()+"\\"+s+"\\middle-project");
			if(temp.exists()) {
				System.out.println(s);
				return temp;
			}
		}
		int i=0;
		System.out.println(i++);
	}
	return null;
}
public static File cd= findGitDirectory(new File(lpath));
public static File cd2= findwebapp(cd);
public static String path=cd2.getAbsolutePath();
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
		public ArrayList<AppForm> getForm2(int userid) {
			return dao.select2(userid);
		}
}
