package cn.huidu.lcd.render.model;

import cn.huidu.lcd.render.model.extra.FontStyleNode;
import java.util.List;
import z0.a;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.TEXT)
public class TextNode extends WidgetNode {
    private int mAlignment;
    private EffectNode mEffect;

    @a(name = "FileList")
    private List<String> mFileList;
    private FontStyleNode mFontStyle;

    @a(name = "ImageSizeList")
    private List<ImageSize> mImageSizeList;
    private String mText = "";

    public int getAlignment() {
        return this.mAlignment;
    }

    public EffectNode getEffect() {
        return this.mEffect;
    }

    public List<String> getFileList() {
        return this.mFileList;
    }

    public FontStyleNode getFontStyle() {
        return this.mFontStyle;
    }

    public List<ImageSize> getImageSizeList() {
        return this.mImageSizeList;
    }

    public String getText() {
        return this.mText;
    }

    public void setAlignment(int i4) {
        this.mAlignment = i4;
    }

    public void setEffect(EffectNode effectNode) {
        this.mEffect = effectNode;
    }

    public void setFileList(List<String> list) {
        this.mFileList = list;
    }

    public void setFontStyle(FontStyleNode fontStyleNode) {
        this.mFontStyle = fontStyleNode;
    }

    public void setImageSizeList(List<ImageSize> list) {
        this.mImageSizeList = list;
    }

    public void setText(String str) {
        this.mText = str;
    }
}
