package fav;

import java.util.ArrayList;

import dataroom.DataDao;


public class FavoDataService {
	private FavoDataDao dao;
	private DataDao ddao;

	public FavoDataService() {
		dao = new FavoDataDao();
		ddao = new DataDao(); 
	}

	public void addFavoData(FavoData d) {
		dao.insert(d);
		ddao.updateFcnt(dao.selectFcnt(d.getDatanum()), d.getDatanum());
	}

	
	public void delFavoData(FavoData d) {
		dao.delete(d);
		System.out.println(d.getDatanum());
		System.out.println(dao.selectFcnt(d.getDatanum()));
		ddao.updateFcnt(dao.selectFcnt(d.getDatanum()), d.getDatanum());
	}

	public int getFcnt(int datanum) {
		return dao.selectFcnt(datanum);
	}
	
	public ArrayList<String> getIds(int datanum){
		return dao.selectIds(datanum);
	}
	
	public FavoData getFavoData(int datanum, String id) {
		return dao.select(datanum, id);
	}
}
