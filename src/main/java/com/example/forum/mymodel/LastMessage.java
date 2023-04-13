package com.example.forum.mymodel;

public class LastMessage {
    private String sendDate;
    private String username;
    private long countMessage;

    public LastMessage(String sendDate, String username, long countMessage) {
        this.sendDate = sendDate;
        this.username = username;
        this.countMessage = countMessage;
    }

    public String getSendDate() {
        return sendDate;
    }

    public void setSendDate(String sendDate) {
        this.sendDate = sendDate;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public long getCountMessage() {
        return countMessage;
    }

    public void setCountMessage(long countMessage) {
        this.countMessage = countMessage;
    }
}
