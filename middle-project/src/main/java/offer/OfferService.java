package offer;

import java.util.ArrayList;

import mem.Mem;

public class OfferService {
	private OfferDao dao;
	
	public OfferService() {
		dao = new OfferDao();
	}
	
	//스카웃 제안 추가
	public void addOffer(Offer o) {
		dao.insert(o);
	}
	//오퍼 상세
	public Offer getOffer(int num) {
		return dao.select(num);
	}
	//유저가 받은 OfferList 
	public ArrayList<Offer> getOfferList(int userid) {
		return dao.selectByUser(userid);
	}
	public ArrayList<Offer> getOfferCorp(int corp_id){
		return dao.offerByCorp(corp_id);
	}
	//회사가 한 공고당 제안한 리스트 
	public ArrayList<Offer> getOfferOrder(String wanted_auth_no) {
		return dao.wantedByUser(wanted_auth_no);
	}	
	//공고 답변
	public void editOffer(int accept,int num) {
		//accept=승낙여부(제안 기본(미응답)-0,제안 승낙-1,제안 거부-2)
		//num = 공고 번호
		dao.update(accept, num);
	}
	//제안 삭제(기업만)
	public void delOffer(int num) {
		dao.delete(num);
	}
}
