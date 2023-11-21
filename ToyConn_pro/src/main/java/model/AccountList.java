package model;

public class AccountList {
	
	protected String id; // �⺻ Ű
	protected String nickname;
	protected String address;
	protected String tel;
	
	public AccountList(String id, String nickname) {
		this.id = id;
		this.nickname = nickname;
	}
	
	public AccountList(String id, String nickname, String address, String tel) {
		this.id = id;
		this.nickname = nickname;
		this.address = address;
		this.tel = tel;
	}

	public String toString() {
		return "userList [id=" + id + ", nickname=" + nickname + ", address=" + address + ", tel=" + tel + "]";
	}

	public String getId() {
		return id;
	}

	public String getNickname() {
		return nickname;
	}

	public String getAddress() {
		return address;
	}

	public String getTel() {
		return tel;
	}

}
