package person;

import java.util.ArrayList;

public class ScrapService {

	private ScrapDao dao;
	public ScrapService() {
		dao=new ScrapDao();
	}
	
	public void add(Scrap s) {
		ArrayList<Scrap> arr=dao.selectById(s.getUserid());
		if(arr.size()>=10) {
			dao.delete(arr.get(0).getWanted_auth_no(),arr.get(0).getUserid());
		}	
		dao.insert(s);
	}
	public void delete(String num,String id) {
		dao.delete(num,id);
	}
	
	public Scrap getByNum(int num) {
		return dao.selectBynum(num);
	}
	public ArrayList<Scrap> getById(String id){
		return dao.selectById(id);
	}
}
