package com.zhanglin.service;

import com.zhanglin.pojo.Books;

import java.util.List;

public interface BookService {
    //增加一本书
    public int addBook(Books books);
    //删除一本书
    public int deleteBookById(int id);
    //更新一本书
    public int updateBook(Books books);
    //查询一本书
    public Books queryById(int id);
    //查询全部的书
    public List<Books> queryAllBooks();
    //搜索功能
    public Books queryByBookName(String name);
}
