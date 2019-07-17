package com.encore.t0717.vo;

public class UserInfo { // 테이블 레코드(행)을 표현하는 객체
	// select뒤의 여러 컬럼명을 한개의 객체로 표현한다.
	// UI를 통해 전달된 여러 데이터를 한개의 이름으로 저장한다.

	private String id;
	private String pass;
	private String name;
	private String jumin;
	private String birth;
	private int zip;
	private String addr;
	private String email;
	private String job;

	public UserInfo() {
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getJumin() {
		return jumin;
	}

	public void setJumin(String jumin) {
		this.jumin = jumin;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public int getZip() {
		return zip;
	}

	public void setZip(int zip) {
		this.zip = zip;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public UserInfo(String id, String pass, String name, String jumin, String birth, int zip, String addr, String email,
			String job) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.jumin = jumin;
		this.birth = birth;
		this.zip = zip;
		this.addr = addr;
		this.email = email;
		this.job = job;
	}

	@Override
	public String toString() {
		return "UserInfo [id=" + id + ", pass=" + pass + ", name=" + name + ", jumin=" + jumin + ", birth=" + birth
				+ ", zip=" + zip + ", addr=" + addr + ", email=" + email + ", job=" + job + "]";
	}

}
