package com.example.forum.model;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Entry {
    private String title;
    private String content;
    private Calendar createdTime;
    private User creator;

    private String createDate;
    public Entry(String title, String content, User creator) {
        this.title = title;
        this.content = content;
        this.creator = creator;
        createdTime = Calendar.getInstance();
        if(this.createdTime != null){
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            this.createDate = sdf.format(this.createdTime.getTime());
        }
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

    public Calendar getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Calendar createdTime) {
        this.createdTime = createdTime;
    }

    public User getCreator() {
        return creator;
    }

    public void setCreator(User creator) {
        this.creator = creator;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }
}
