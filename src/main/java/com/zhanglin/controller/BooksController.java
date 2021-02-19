package com.zhanglin.controller;

import com.zhanglin.pojo.Books;
import com.zhanglin.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BooksController {

    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    @RequestMapping("/admin")
    public String getAllBook(Model model){
        List<Books> books = bookService.queryAllBooks();
        model.addAttribute("list",books);
        return "admin";
    }

    @RequestMapping("/toAddBook")
    public String toAddPaper(){
        return "add";
    }

    @RequestMapping("/add")
    public String addBook(Books books){
        bookService.addBook(books);
        return "redirect:/book/admin";
    }

    @RequestMapping("/toUpdateBook")
    public String toUpdatePaper(int id,Model model){
        Books books = bookService.queryById(id);
        model.addAttribute("books",books);
        return "update";
    }

    @RequestMapping("/update")
    public String updateBook(Books books){
        bookService.updateBook(books);
        return "redirect:/book/admin";
    }

    @RequestMapping("/delete/{bookID}")
    public String deleteBook(@PathVariable("bookID") int id){
        bookService.deleteBookById(id);
        return "redirect:/book/admin";
    }
}
