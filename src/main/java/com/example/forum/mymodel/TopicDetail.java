package com.example.forum.mymodel;


import com.example.forum.model.Topic;

import java.util.List;

public class TopicDetail {
    private Topic topic;
    private LastMessage lastMessage;
    private List<MessageDetail> messageDetailList;

    public TopicDetail(Topic topic, LastMessage lastMessage, List<MessageDetail> messageDetailList) {
        this.topic = topic;
        this.lastMessage = lastMessage;
        this.messageDetailList = messageDetailList;
    }

    public TopicDetail(Topic topic) {
        this.topic = topic;
    }

    public LastMessage getLastMessage() {
        return lastMessage;
    }

    public void setLastMessage(LastMessage lastMessage) {
        this.lastMessage = lastMessage;
    }

    public List<MessageDetail> getMessageDetailList() {
        return messageDetailList;
    }

    public void setMessageDetailList(List<MessageDetail> messageDetailList) {
        this.messageDetailList = messageDetailList;
    }

    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }
}
