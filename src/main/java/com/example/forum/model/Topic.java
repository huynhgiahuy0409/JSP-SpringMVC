package com.example.forum.model;

import java.util.List;
import java.util.Stack;

public class Topic extends Entry{
    private Integer id;
    private Stack<Message> messages = new Stack<Message>();
    private Category category;

    public Topic(Integer id, String title, String content,
                 User creator, Category category) {
        super(title, content, creator);
        this.id = id;
        this.category = category;
    }

    public Integer getId() {
        return id;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public List<Message> getMessages() {
        return messages.subList(0, messages.size());
    }
    public Stack<Message> getMessagesStack() {
        return this.messages;
    }

    public void addMessage(Message message) {
        messages.push(message);
    }

    public Message getNewMessage() {
        return messages.peek();
    }
}