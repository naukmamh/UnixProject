package com.unixteam.controller;


import com.unixteam.service.PostService;
import com.unixteam.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.sql.SQLException;



@RestController
public class PostController {
    @Autowired
    PostService postService;
    @Autowired
    UserService userService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView init() throws SQLException {
       return getAllPosts();
    }

    @RequestMapping(value = "/allposts", method = RequestMethod.GET)
    public ModelAndView getAllPosts() throws SQLException {
        ModelAndView model = new ModelAndView();
        model.addObject("posts",postService.getAllPosts());

        model.setViewName("allposts");
        return model;
    }
    @RequestMapping(value = "/add-post",method = RequestMethod.POST)
    @ResponseBody
    public String addPost(@RequestParam String title, @RequestParam String description, @RequestParam int author_id) throws SQLException, ClassNotFoundException {
        postService.addPost(title,description,author_id);
        return "Added successfully";
    }
    @RequestMapping(value = "/edit-post",method = RequestMethod.POST)
    @ResponseBody
    public String editPost(@RequestParam String title,@RequestParam String description,@RequestParam int id) throws SQLException, ClassNotFoundException {
        postService.updatePost(title,description,id);
        return "Edited successfully";
    }
    @RequestMapping(value = "/delete-post",method = RequestMethod.POST)
    @ResponseBody
    public String deletePost(@RequestParam int id) throws SQLException, ClassNotFoundException {
        postService.deletePost(id);
        return "Deleted successfully";
    }
}
