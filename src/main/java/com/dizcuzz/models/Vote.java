package com.dizcuzz.models;
import java.sql.Timestamp;

public class Vote {
    private long id;
    private boolean isUpvote;
    private Timestamp createdAt;
    private Timestamp updatedAt;
    private long userId;
    private long discussionId;

    public Vote(long id, boolean isUpvote, Timestamp createdAt, Timestamp updatedAt, long userId, long discussionId) {
        this.id = id;
        this.isUpvote = isUpvote;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.userId = userId;
        this.discussionId = discussionId;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public boolean isUpvote() {
        return isUpvote;
    }

    public void setUpvote(boolean upvote) {
        isUpvote = upvote;
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

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public long getDiscussionId() {
        return discussionId;
    }

    public void setDiscussionId(long discussionId) {
        this.discussionId = discussionId;
    }
}
