package com.zhanglin.dao;

import com.zhanglin.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {
    //增加一本书
    public int addBook(Books books);
    //删除一本书
    public int deleteBookById(@Param("id") int id);
    //更新一本书
    public int updateBook(Books books);
    //查询一本书
    public Books queryById(@Param("id") int id);
    //查询全部的书
    public List<Books> queryAllBooks();
    //搜索功能
    public Books queryByBookName(@Param("name") String name);
}
