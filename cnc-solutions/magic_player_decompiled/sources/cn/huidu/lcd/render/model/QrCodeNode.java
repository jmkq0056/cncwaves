package cn.huidu.lcd.render.model;

import androidx.core.view.ViewCompat;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.QR_CODE)
public class QrCodeNode extends WidgetNode {
    private String mContent;
    private String mImagePath;
    private int mColor = ViewCompat.MEASURED_STATE_MASK;
    private int mBgColor = -1;
    private String mEcl = "Q";
    private int mMargin = 1;

    public int getBgColor() {
        return this.mBgColor;
    }

    public int getColor() {
        return this.mColor;
    }

    public String getContent() {
        return this.mContent;
    }

    public String getEcl() {
        return this.mEcl;
    }

    public String getImagePath() {
        return this.mImagePath;
    }

    public int getMargin() {
        return this.mMargin;
    }

    public void setBgColor(int i4) {
        this.mBgColor = i4;
    }

    public void setColor(int i4) {
        this.mColor = i4;
    }

    public void setContent(String str) {
        this.mContent = str;
    }

    public void setEcl(String str) {
        this.mEcl = str;
    }

    public void setImagePath(String str) {
        this.mImagePath = str;
    }

    public void setMargin(int i4) {
        this.mMargin = i4;
    }
}
