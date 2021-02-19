package com.zhanglin.controller;

import com.zhanglin.pojo.Books;
import com.zhanglin.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BooksController {

    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    @RequestMapping("/all")
    public String getAllBook(Model model){
        List<Books> books = bookService.queryAllBooks();
        model.addAttribute("list",books);
        return "allbook";
    }

    @RequestMapping("/add")
    public String addBook(){
        return "add";
    }

}
