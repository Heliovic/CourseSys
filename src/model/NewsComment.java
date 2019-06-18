package model;

public class NewsComment {
    private String mCommentId;
    private String mNewsId;
    private String mPublisher;
    private String mTime;
    private String mContent;

    public String getmCommentId() {
        return mCommentId;
    }

    public void setmCommentId(String mCommentId) {
        this.mCommentId = mCommentId;
    }

    public String getmNewsId() {
        return mNewsId;
    }

    public void setmNewsId(String mNewsId) {
        this.mNewsId = mNewsId;
    }

    public String getmPublisher() {
        return mPublisher;
    }

    public void setmPublisher(String mPublisher) {
        this.mPublisher = mPublisher;
    }

    public String getmTime() {
        return mTime;
    }

    public void setmTime(String mTime) {
        this.mTime = mTime;
    }

    public String getmContent() {
        return mContent;
    }

    public void setmContent(String mContent) {
        this.mContent = mContent;
    }
}
