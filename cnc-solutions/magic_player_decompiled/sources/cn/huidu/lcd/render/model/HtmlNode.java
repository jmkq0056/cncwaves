package cn.huidu.lcd.render.model;

import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.HTML)
public class HtmlNode extends WidgetNode {
    private String mFilePath;
    private String mHtmlPath;
    private int mOffsetX;
    private int mOffsetY;
    private int mScale;
    private String mUrl;
    private String mUserAgent = "Desktop";
    private int mRefreshInterval = 30;
    private boolean mAutoRefresh = false;

    public String getFilePath() {
        return this.mFilePath;
    }

    public String getHtmlPath() {
        return this.mHtmlPath;
    }

    public int getOffsetX() {
        return this.mOffsetX;
    }

    public int getOffsetY() {
        return this.mOffsetY;
    }

    public int getRefreshInterval() {
        return this.mRefreshInterval;
    }

    public int getScale() {
        return this.mScale;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public String getUserAgent() {
        return this.mUserAgent;
    }

    public boolean isAutoRefresh() {
        return this.mAutoRefresh;
    }

    public void setAutoRefresh(boolean z3) {
        this.mAutoRefresh = z3;
    }

    public void setFilePath(String str) {
        this.mFilePath = str;
    }

    public void setHtmlPath(String str) {
        this.mHtmlPath = str;
    }

    public void setOffsetX(int i4) {
        this.mOffsetX = i4;
    }

    public void setOffsetY(int i4) {
        this.mOffsetY = i4;
    }

    public void setRefreshInterval(int i4) {
        this.mRefreshInterval = i4;
    }

    public void setScale(int i4) {
        this.mScale = i4;
    }

    public void setUrl(String str) {
        this.mUrl = str;
    }

    public void setUserAgent(String str) {
        this.mUserAgent = str;
    }
}
