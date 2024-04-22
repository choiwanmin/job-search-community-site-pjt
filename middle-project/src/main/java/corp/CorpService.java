package corp;

public class CorpService {
	private CorpDao dao;

	public CorpService() {
		dao = new CorpDao();
	}

	public int addSeq() {
		return dao.insertSeq();
	}

	public void addApiCorp(Corp c) {
		dao.insertApi(c, addSeq());
	}
	
	public void addNewCorp(Corp c) {
		dao.insertNew(c);
	}

//	public void addMemberCorp() {
//		dao.insertMember(addSeq());
//	}
//
//	public void addCorp(Corp c) {
//		dao.insert(c, addSeq());
//	}

	public Corp getByNum(int num) {
		return dao.select(num);
	}

	public Corp getByBusiNo(String busi_no) {
		return dao.selectByBusino(busi_no);
	}
	
	public Corp getByCorpId(String corpid) {
		return dao.selectByCorpId(corpid);
	}
}
