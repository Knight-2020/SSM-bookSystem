package com.jia.controller;

import com.jia.pojo.Books;
import com.jia.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * User:侠客
 * Date:2022/2/8 15:30
 * Description:
 */
@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    @RequestMapping("/allBook")
    public String list(Model model, HttpServletRequest request) {
        List<Books> list=null;
        int pageNow=1;
        int start=(pageNow-1)*10;
        int sum= bookService.countSum();
        int sumpage=sum%10==0?sum/10:sum/10+1;
        if (request.getParameter("cp")!=null){
            int cp= Integer.parseInt(request.getParameter("cp"));
            //int cp= Integer.parseInt(model.getAttribute("cp").toString());
            System.out.println(cp);
            if (cp>0) {
                pageNow = cp;
                start = (pageNow - 1) * 10;
                System.out.println(11111);
            }
            if (cp>sumpage){
                pageNow=sumpage;
                start = (pageNow - 1) * 10;
                System.out.println(222222);
            }
        }
        System.out.println(start);
        list = bookService.queryAllBook(start);
        model.addAttribute("pageNow",pageNow);
        model.addAttribute("sumpage",sumpage);
        model.addAttribute("sum",sum);
        model.addAttribute("list", list);
        return "allBook";
    }

    @RequestMapping("/toAddBook")
    public String toAddPaper() {
        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addPaper(Books books) {
        System.out.println(books);
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/toUpdateBook")
    public String toUpdateBook(Model model, int id) {
        Books books = bookService.queryBookById(id);
        System.out.println(books);
        model.addAttribute("book",books);
        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Books book) {
        System.out.println(book);
        bookService.updateBook(book);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/del/{bookId}")
    public String deleteBook(@PathVariable("bookId") int id) {
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    ///查询书籍

    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName,Model model){
        List<Books> list = bookService.queryBookByName(queryBookName);
        for (Books books : list) {
            //红色输出
            System.err.println("queryBookName==>"+books);
        }
        if (list.size() == 0){
            list = bookService.queryAllBook(0);
            model.addAttribute("error","未查到");
            System.out.println("===未查到===");
        }
        model.addAttribute("list",list);
        return "allBook";
    }


}
