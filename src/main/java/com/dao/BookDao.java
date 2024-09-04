package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.entity.Book;

@Repository
public class BookDao {
	
	
	@Autowired
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public void savebook(Book book) {
		this.hibernateTemplate.save(book);
	}
	
	public List<Book> getAllbook() {
		List<Book> book=this.hibernateTemplate.loadAll(Book.class);
		return book;
	}
	
	
	@Transactional
	public void deletedata(int id) {
		Book book=this.hibernateTemplate.get(Book.class, id);
		this.hibernateTemplate.delete(book);
	}
	
	public Book getsinglebook(int id) {
	Book book=this.hibernateTemplate.get(Book.class, id);
	return book;
	}
	
	@Transactional
	public void updatebook(Book book) {

		
		this.hibernateTemplate.update(book);
	}

}
