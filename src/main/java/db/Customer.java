package db;

public class Customer {
	
	private long acno;
	private String customername;
	private String actype;
	private long balance;
	private long mobno;
	private String dob;
	private String emailid;
	public long getAcno() {
		return acno;
	}
	public void setAcno(long acno) {
		this.acno = acno;
	}
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	public String getActype() {
		return actype;
	}
	public void setActype(String actype) {
		this.actype = actype;
	}
	public long getBalance() {
		return balance;
	}
	public void setBalance(long balance) {
		this.balance = balance;
	}
	public long getMobno() {
		return mobno;
	}
	public void setMobno(long mobno) {
		this.mobno = mobno;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public Customer(long acno, String customername, String actype, long balance, long mobno, String dob,String emailid) {
		super();
		this.acno = acno;
		this.customername = customername;
		this.actype = actype;
		this.balance = balance;
		this.mobno = mobno;
		this.dob = dob;
		this.emailid=emailid;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

}
