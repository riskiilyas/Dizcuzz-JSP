package com.dizcuzz.models;
import java.sql.Timestamp;

public class Favorite {
    private long id;
    private long userId;
    private Timestamp createdAt;
    private Timestamp updatedAt;
    private long discussionId;
    
    public Favorite() {
        
    }
    
    public Favorite(long userId, long discussionId) {
        this.userId = userId;
        this.discussionId = discussionId;
    }
    
    public long getId() {
        return id;
    }
    
    public void setId(long id) {
        this.id = id;
    }
    
    public long getUserId() {
        return userId;
    }
    
    public void setUserId(long userId) {
        this.userId = userId;
    }
    
    public Timestamp getCreatedAt() {
        return createdAt;
    }
    
    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }
    
    public Timestamp getUpdatedAt() {
        return updatedAt;
    }
    
    public void setUpdatedAt(Timestamp updatedAt) {
        this.updatedAt = updatedAt;
    }
    
    public long getDiscussionId() {
        return discussionId;
    }
    
    public void setDiscussionId(long discussionId) {
        this.discussionId = discussionId;
    }
}
