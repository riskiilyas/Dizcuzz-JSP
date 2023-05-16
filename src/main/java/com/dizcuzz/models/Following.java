package com.dizcuzz.models;
import java.sql.Timestamp;

public class Following {
    private Long id;
    private Timestamp createdAt;
    private Timestamp updatedAt;
    private Long userId;
    private Long userFollowingId;

    public Following() {
    }

    public Following(Long id, Timestamp createdAt, Timestamp updatedAt, Long userId, Long userFollowingId) {
        this.id = id;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.userId = userId;
        this.userFollowingId = userFollowingId;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getUserFollowingId() {
        return userFollowingId;
    }

    public void setUserFollowingId(Long userFollowingId) {
        this.userFollowingId = userFollowingId;
    }
}
