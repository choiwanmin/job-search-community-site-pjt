package person;

public class Scrap {
	private int scrp_num;
	private String userid;
	private String wanted_auth_no;

	
	public Scrap() {}


	public int getScrp_num() {
		return scrp_num;
	}


	public void setScrp_num(int scrp_num) {
		this.scrp_num = scrp_num;
	}


	public String getUserid() {
		return userid;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public String getWanted_auth_no() {
		return wanted_auth_no;
	}


	public void setWanted_auth_no(String wanted_auth_no) {
		this.wanted_auth_no = wanted_auth_no;
	}


	public Scrap(int scrp_num, String userid, String wanted_auth_no) {
		super();
		this.scrp_num = scrp_num;
		this.userid = userid;
		this.wanted_auth_no = wanted_auth_no;
	}



	
	

	
	
}
