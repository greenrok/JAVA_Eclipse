package member.VO;

public class memberVO {
	
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String date;
	
	public memberVO(String id, String pwd, String name, String email, String date) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.date = date;
	}
	
	public String getId() {
		return this.id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPwd() {
		return this.pwd;
	}
	
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return this.email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getDate() {
		return this.date;
	}
	
	public void setDate(String date) {
		this.date = date;
	}
}
