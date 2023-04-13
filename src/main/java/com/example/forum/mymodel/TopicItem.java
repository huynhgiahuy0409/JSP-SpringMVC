package com.example.forum.mymodel;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class TopicItem {
    private int topicId;
    private String topicTitle;
    private String lastMessageUsername;

    private Calendar createTime;
    private int totalReply;

    private String createDate;
    public TopicItem(int topicId, String topicTitle, String lastMessageUsername, Calendar createTime, int totalReply) {
        this.topicId = topicId;
        this.topicTitle = topicTitle;
        this.lastMessageUsername = lastMessageUsername;
        this.totalReply = totalReply;
        if(createTime != null){
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            this.createDate = sdf.format(createTime.getTime());
        }
    }


    public int getTopicId() {
        return topicId;
    }

    public void setTopicId(int topicId) {
        this.topicId = topicId;
    }

    public String getTopicTitle() {
        return topicTitle;
    }

    public void setTopicTitle(String topicTitle) {
        this.topicTitle = topicTitle;
    }

    public String getLastMessageUsername() {
        return lastMessageUsername;
    }

    public void setLastMessageUsername(String lastMessageUsername) {
        this.lastMessageUsername = lastMessageUsername;
    }

    public int getTotalReply() {
        return totalReply;
    }

    public void setTotalReply(int totalReply) {
        this.totalReply = totalReply;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public Calendar getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Calendar createTime) {
        this.createTime = createTime;
    }
}
