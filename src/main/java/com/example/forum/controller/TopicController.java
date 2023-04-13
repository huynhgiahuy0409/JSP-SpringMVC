package com.example.forum.controller;

import com.example.forum.model.Message;
import com.example.forum.model.Topic;
import com.example.forum.model.User;
import com.example.forum.mymodel.*;
import com.example.forum.service.ForumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;


@Controller
@RequestMapping("/topic")
public class TopicController {
    @Autowired
    private ForumService forumService;

    @GetMapping()
    private Object showTopics(HttpSession session) {
        List<TopicItem> topics;
        User existUser = (User) session.getAttribute("user");
        if (existUser != null) {
            Collection<Topic> findTopics = this.forumService.getTopics();
            topics = new ArrayList<>();
            findTopics.forEach(e -> {
                String lastMessageUsername = null;
                Calendar createTime = null;
                if (e.getMessages().size() > 0) {
                    Message newMessage = e.getNewMessage();
                    lastMessageUsername = newMessage.getCreator().getUsername();
                    createTime = newMessage.getCreatedTime();
                }
                int totalReply = e.getMessagesStack().size();
                TopicItem topicItem = new TopicItem(e.getId(), e.getTitle(), lastMessageUsername, createTime, totalReply);
                topics.add(topicItem);
            });
            ModelAndView mav = new ModelAndView("forum/listTopic");
            mav.addObject("topics", topics);
            mav.addObject("user", existUser);
            return mav;
        } else {
            return "redirect:/login";
        }
    }

    @GetMapping("/{topicId}")
    public String showTopicDetail(@PathVariable Integer topicId, Model model, HttpSession session) {
        User existUser = (User) session.getAttribute("user");
        if (existUser != null) {
            LastMessage lastMessage;
            TopicDetail topicDetail;
            Message newMessage;
            Topic foundTopic = this.forumService.findTopic(topicId);
            if (foundTopic.getMessages().size() > 0) {
                newMessage = foundTopic.getNewMessage();
                long ownerNewMessageCount;
                ownerNewMessageCount = foundTopic.getMessages().stream().filter(message -> message.getCreator() == newMessage.getCreator()).count();
                lastMessage = new LastMessage(newMessage.getCreateDate(), newMessage.getCreator().getUsername(), ownerNewMessageCount);
                List<MessageDetail> listMessageDetail = new ArrayList<>();
                foundTopic.getMessages().forEach(message -> {
                    MessageDetail md = new MessageDetail(message.getTitle(), message.getContent(), message.getCreateDate(), message.getCreator());
                    listMessageDetail.add(md);
                });
                topicDetail = new TopicDetail(foundTopic, lastMessage, listMessageDetail);
            } else {
                topicDetail = new TopicDetail(foundTopic);
            }
            model.addAttribute("topicDetail", topicDetail);
            return "forum/showTopic";
        }else{
            return "redirect:/login";
        }
    }
    @GetMapping("/{topicId}/reply")
    public String showReplyTopic(@PathVariable Integer topicId, Model model, HttpSession session) {
        User existUser = (User) session.getAttribute("user");
        if (existUser != null) {
            Topic foundTopic = this.forumService.findTopic(topicId);
            model.addAttribute("topicTitle", foundTopic.getTitle());
            model.addAttribute("topicId", foundTopic.getId());
            return "forum/replyTopic";
        }else{
            return "redirect:/login";
        }
    }
    @PostMapping("/{topicId}/reply")
    public String replyTopic(@PathVariable Integer topicId, @ModelAttribute ReplyForm replyForm, Model model, HttpSession session) {
        User existUser = (User) session.getAttribute("user");
        Message newMessage = new Message(replyForm.getMessageTitle(), replyForm.getMessageContent(), existUser);
        Topic foundTopic = this.forumService.findTopic(topicId);
        foundTopic.addMessage(newMessage);
        return "redirect:/topic/{topicId}";
    }
    @GetMapping("/new")
    public String createNewTopic(Model model, HttpSession session) {
        User existUser = (User) session.getAttribute("user");
        if (existUser != null) {
            return "forum/newTopic";
        }else{
            return "redirect:/login";
        }
    }
    @PostMapping("/new")
    public String addTopic(@ModelAttribute NewTopicForm newTopicForm, @ModelAttribute ReplyForm replyForm, Model model, HttpSession session) {
        User existUser = (User) session.getAttribute("user");
        if (existUser != null) {
            Topic newTopic = new Topic(this.forumService.getLastTopicIdx() + 1, newTopicForm.getNewTitle(), newTopicForm.getNewContent(), existUser, this.forumService.getCategory());
            this.forumService.addTopic(newTopic);
            return "redirect:/topic";
        }else{
            return "redirect:/login";
        }
    }
}
