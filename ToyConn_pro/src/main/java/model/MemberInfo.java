package model;

public class MemberInfo {
	
	protected String user_id;
	protected String nick;
	protected String address;
	protected Integer score;
	protected String join_date;
	
	public MemberInfo(String user_id, String nick) {
		this.user_id = user_id;
		this.nick = nick;
	}
	
	public MemberInfo(String user_id, String nick, String address) {
		this.user_id = user_id;
		this.nick = nick;
		this.address = address;
	}

	public MemberInfo(String user_id, String nickname, String address, Integer score) {
		this.user_id = user_id;
		this.nick = nickname;
		this.address = address;
		this.score = score;
	}

	public String getUser_id() {
		return user_id;
	}

	public String getNick() {
		return nick;
	}

	public String getAddress() {
		return address;
	}

	public Integer getScore() {
		return score;
	}

	public String getJoin_date() {
		return join_date;
	}

	@Override
	public String toString() {
		return "AccountList [user_id=" + user_id + ", nick=" + nick + ", address=" + address + ", score=" + score
				+ ", join_date=" + join_date + "]";
	}
	
}
