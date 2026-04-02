package cn.huidu.lcd.render.model.extra;

import cn.huidu.lcd.render.model.NodeTags;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.CONTENT_CHANGE)
public class ContentChange {
    private String mArea;
    private String mPosition;
    private String mUrl;

    public String getArea() {
        return this.mArea;
    }

    public String getPosition() {
        return this.mPosition;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public void setArea(String str) {
        this.mArea = str;
    }

    public void setPosition(String str) {
        this.mPosition = str;
    }

    public void setUrl(String str) {
        this.mUrl = str;
    }
}
