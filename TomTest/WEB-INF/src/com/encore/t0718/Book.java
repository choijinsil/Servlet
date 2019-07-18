package com.encore.t0718;

public class Book {
	private String title;
	private String author;
	private int price;
	
	// Book 객체를 TomTest프로젝트에서 모든 서블릿, JSP가 공유하고 싶다.
	public Book() {
		title="스트럿츠MVC 프레임워크";
		author="siri";
		price=3500;
	}

	@Override
	public String toString() {
		return "Book [제목=" + title + ", 작가=" + author + ", 가격=" + price + "]";
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	
}
