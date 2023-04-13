package com.example.forum.mymodel;

import com.example.forum.model.User;

public class MessageDetail {
    private String title;
    private String content;
    private String createDate;
    private User user;

    public MessageDetail(String title, String content, String createDate, User user) {
        this.title = title;
        this.content = content;
        this.createDate = createDate;
        this.user = user;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
