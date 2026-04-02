package cn.huidu.lcd.render.model.extra;

import cn.huidu.lcd.render.model.NodeTags;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.BUTTON)
public class ButtonNode {
    private FontStyleNode mFontStyle;
    private InteractionNode mOnClick;
    private String mText;

    public FontStyleNode getFontStyle() {
        return this.mFontStyle;
    }

    public InteractionNode getOnClick() {
        return this.mOnClick;
    }

    public String getText() {
        return this.mText;
    }

    public void setFontStyle(FontStyleNode fontStyleNode) {
        this.mFontStyle = fontStyleNode;
    }

    public void setOnClick(InteractionNode interactionNode) {
        this.mOnClick = interactionNode;
    }

    public void setText(String str) {
        this.mText = str;
    }
}
