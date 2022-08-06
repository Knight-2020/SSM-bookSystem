package com.jia.dao;

import com.jia.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * User:侠客
 * Date:2022/2/8 14:51
 * Description:
 */
public interface BookMapper {
    //增加一个Book
    int addBook(Books book);

    //根据id删除一个Book
    int deleteBookById(@Param("bookID") int id);

    //更新Book
    int updateBook(Books books);

    //根据id查询,返回一个Book
    Books queryBookById(@Param("bookID") int id);

    //查询全部Book,返回list集合
    List<Books> queryAllBook(@Param("start") int start);

    List<Books> queryBookByName(@Param("bookName") String bookName);

    int countSum();
}
