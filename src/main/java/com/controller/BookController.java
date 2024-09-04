package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entity.Book;
import com.service.BookService;

@Controller
public class BookController {
	
	
	@Autowired
	BookService bookService;
	
	@RequestMapping(path="/")
	public String getindex() {
		return "index";
	}
	
	@RequestMapping(path="/addNewBook")
	public String postbookdata() {

		return "addNewBook";
	}
	
	@RequestMapping("/addNewBookSuccess")
	public String booksuccess(@ModelAttribute Book b) {
		this.bookService.savebook(b);
		return"addNewBookSuccess";
	}
	
	
	@RequestMapping("/getAllbook")
	public List<Book> getAllbooks(Model m) {
		List<Book> books=this.bookService.getAllBook();
		m.addAttribute("books",books);
		return books;
	}
	
	
	@RequestMapping("/delete/{id}")
	public String deletebook(@PathVariable("id") int id) {
		this.bookService.deletedata(id);
		return "redirect:/getAllbook"; 
		
	}
	
	
	
	@RequestMapping("/update/{id}")
	public String updatebook(@PathVariable("id") int id,Model m) {
		Book book=this.bookService.getsinglebook(id);
		m.addAttribute("book", book);
		

		return "updatebook";
	}
	
	@RequestMapping(path="/update/updatebook", method=RequestMethod.POST)
	public String updatesuccess(@ModelAttribute("book") Book b) {
	    this.bookService.updatabook(b);

	    return "redirect:/getAllbook";  
	}


}
