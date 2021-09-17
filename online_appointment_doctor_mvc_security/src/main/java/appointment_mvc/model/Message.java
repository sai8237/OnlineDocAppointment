package appointment_mvc.model;


public class Message {
	private int messageId;
	private int bookId;
	private String sender;
	private String receiver;
	private String msg;

	public Message(int messageId, int bookId, String sender, String receiver, String msg) {
		super();
		this.messageId = messageId;
		this.bookId = bookId;
		this.sender = sender;
		this.receiver = receiver;
		this.msg = msg;
	}

	public Message() {
	}

	public int getMessageId() {
		return messageId;
	}
	
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	

}