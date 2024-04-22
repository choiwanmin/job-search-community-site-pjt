package dataroom;

import java.util.ArrayList;


public class DataService {
	private DataDao dao;
	//자료실 경로
	public static String path = "C:\\down\\";

	public DataService() {
		dao = new DataDao();
	}

	// 회원가입(추가)
	public void addData(Data d) {
		dao.insert(d);
	}

	public Data getData(int num) {
		return dao.select(num);
	}
	
	// pwd수정
	public void editData(Data d) {
		dao.update(d);
	}

	// 탈퇴
	public void delData(int num) {
		dao.delete(num);
	}

	// 회원목록
	public ArrayList<Data> getAll() {
		return dao.selectAll();
	}
	// 회원목록
		public ArrayList<Data> getByCnt() {
			return dao.selectByCnt();
		}
		public ArrayList<Data> getByFcnt() {
			return dao.selectByFcnt();
		}
		public ArrayList<Data> getByMyFavo(String id) {
			return dao.selectByMyFavo(id);
		}
	// 회원목록
	public ArrayList<Data> getByType(int type,int viewtype) {
		if(viewtype==1) {
		return dao.selectByType(type);}
		else if(viewtype==2) {
			return dao.selectByTypeCnt(type);
		}else if(viewtype==3) {
			return dao.selectByTypeFcnt(type);
		}
		return null;
	}
	// 회원목록
		public ArrayList<Data> getBySearchType(String search,int searchtype, int viewtype) {
			if(searchtype==1) {
				if(viewtype==1) {
					return dao.selectByTitle(search);}
					else if(viewtype==2) {
						return dao.selectByTitleByCnt(search);
					}else if(viewtype==3) {
						return dao.selectByTitleByFcnt(search);
					}
			}else if(searchtype==2) {
				if(viewtype==2) {
					return dao.selectByContent(search);}
					else if(viewtype==2) {
						return dao.selectByContentByCnt(search);
					}else if(viewtype==3) {
						return dao.selectByContentByFcnt(search);
					}
			}else if(searchtype==3) {
				if(viewtype==3) {
					return dao.selectByWriter(search);}
					else if(viewtype==2) {
						return dao.selectByWriterByCnt(search);
					}else if(viewtype==3) {
						return dao.selectByWriterByFcnt(search);
					}
			}
			return null;
		}

		public void editCnt(int num) {
			// TODO Auto-generated method stub
			dao.updateCnt(num);
		}
	
	
}
