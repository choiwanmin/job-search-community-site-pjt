package comment;

import java.util.Date;

public class Comment {
	private int num;
	private String id;
	private String content;
	private int data_num;
	private Date wdate;
	private int ref_num;
	private int is_edit;
	
	
	
	public Comment() {
		
	}
	public Comment(int num, String id, String content, int data_num, Date wdate, int ref_num, int is_edit) {
		super();
		this.num = num;
		this.id = id;
		this.content = content;
		this.data_num = data_num;
		this.wdate = wdate;
		this.ref_num = ref_num;
		this.is_edit = is_edit;
	}
	public Comment(String id, String content, int data_num, int ref_num) {
		super();
		this.id = id;
		this.content = content;
		this.data_num = data_num;
		this.ref_num = ref_num;
	}
	
	@Override
	public String toString() {
		return "Comment [num=" + num + ", id=" + id + ", content=" + content + ", data_num=" + data_num + ", wdate="
				+ wdate + ", ref_num=" + ref_num + ", is_edit=" + is_edit + "]";
	}
	public int getIs_edit() {
		return is_edit;
	}
	public void setIs_edit(int is_edit) {
		this.is_edit = is_edit;
	}
	public Date getWdate() {
		return wdate;
	}
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	public int getRef_num() {
		return ref_num;
	}
	public void setRef_num(int ref_num) {
		this.ref_num = ref_num;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getData_num() {
		return data_num;
	}
	public void setData_num(int data_num) {
		this.data_num = data_num;
	}
	
}
