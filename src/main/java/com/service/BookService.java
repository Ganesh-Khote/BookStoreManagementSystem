package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BookDao;
import com.entity.Book;

@Service
public class BookService {
	
	@Autowired
	BookDao bookDao;
	
	public void savebook(Book book) {
		this.bookDao.savebook(book);
	}
	
	public List<Book> getAllBook(){
		return this.bookDao.getAllbook();
	}
	
	public void deletedata(int id) {
		this.bookDao.deletedata(id);
	}
	
	public Book getsinglebook(int id) {
		Book book=this.bookDao.getsinglebook(id);
		return book;
	}
	
	public void updatabook(Book b) {
		this.bookDao.updatebook(b);
	}

}
