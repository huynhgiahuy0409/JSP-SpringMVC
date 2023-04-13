package com.example.forum.mymodel;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class TopicList {

    private List<TopicItem> topics;

    public List<TopicItem> getTopics() {
        return topics;
    }

    public void setTopics(List<TopicItem> topics) {
        this.topics = topics;
    }


}
