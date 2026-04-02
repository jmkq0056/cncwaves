package cn.huidu.lcd.render.model.extra;

import cn.huidu.lcd.render.model.NodeTags;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.FONT_STYLE)
public class FontStyleNode {
    private int mBgColor;
    private boolean mBold;
    private String mFontName;
    private boolean mItalic;
    private boolean mUnderline;
    private int mFontSize = 36;
    private int mColor = -1;

    public int getBgColor() {
        return this.mBgColor;
    }

    public int getColor() {
        return this.mColor;
    }

    public String getFontName() {
        return this.mFontName;
    }

    public int getFontSize() {
        return this.mFontSize;
    }

    public boolean isBold() {
        return this.mBold;
    }

    public boolean isItalic() {
        return this.mItalic;
    }

    public boolean isUnderline() {
        return this.mUnderline;
    }

    public void setBgColor(int i4) {
        this.mBgColor = i4;
    }

    public void setBold(boolean z3) {
        this.mBold = z3;
    }

    public void setColor(int i4) {
        this.mColor = i4;
    }

    public void setFontName(String str) {
        this.mFontName = str;
    }

    public void setFontSize(int i4) {
        this.mFontSize = i4;
    }

    public void setItalic(boolean z3) {
        this.mItalic = z3;
    }

    public void setUnderline(boolean z3) {
        this.mUnderline = z3;
    }
}
