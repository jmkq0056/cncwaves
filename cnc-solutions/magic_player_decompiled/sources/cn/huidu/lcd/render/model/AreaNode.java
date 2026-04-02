package cn.huidu.lcd.render.model;

import android.text.TextUtils;
import cn.huidu.lcd.render.model.extra.AnimationNode;
import cn.huidu.lcd.render.model.extra.ButtonNode;
import java.util.List;
import z0.a;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.AREA)
public class AreaNode extends Node<WidgetNode> {
    private List<AnimationNode> mAnimations;
    private String mBackgroundImage;
    private ButtonNode mButton;
    private int mCornerRadius;
    private int mDuration;
    private String mExtraData;
    private EffectNode mGlobalEffect;
    private int mHeight;
    private String mName;
    private boolean mPercentUnit;
    private int mRotation;
    private int mStrokeColor;
    private int mStrokeWidth;
    private String mUuid;
    private int mWidth;
    private int mX;
    private int mY;
    private int mBackgroundColor = 0;
    private boolean mMotion = false;
    private boolean mCarousel = true;

    @a(ignore = true)
    private boolean mHidden = false;

    public List<AnimationNode> getAnimations() {
        return this.mAnimations;
    }

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public String getBackgroundImage() {
        return this.mBackgroundImage;
    }

    public ButtonNode getButton() {
        return this.mButton;
    }

    public int getCornerRadius() {
        return this.mCornerRadius;
    }

    public int getDuration() {
        return this.mDuration;
    }

    public String getExtraData() {
        return this.mExtraData;
    }

    public EffectNode getGlobalEffect() {
        return this.mGlobalEffect;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public String getName() {
        return this.mName;
    }

    public int getRotation() {
        return this.mRotation;
    }

    public int getStrokeColor() {
        return this.mStrokeColor;
    }

    public int getStrokeWidth() {
        return this.mStrokeWidth;
    }

    public String getUuid() {
        return this.mUuid;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getX() {
        return this.mX;
    }

    public int getY() {
        return this.mY;
    }

    public boolean isButtonArea() {
        ButtonNode buttonNode = this.mButton;
        return (buttonNode == null || (buttonNode.getOnClick() == null && TextUtils.isEmpty(this.mButton.getText()))) ? false : true;
    }

    public boolean isCarousel() {
        return this.mCarousel;
    }

    public boolean isHidden() {
        return this.mHidden;
    }

    public boolean isMotion() {
        return this.mMotion;
    }

    public boolean isPercentUnit() {
        return this.mPercentUnit;
    }

    public void setAnimations(List<AnimationNode> list) {
        this.mAnimations = list;
    }

    public void setBackgroundColor(int i4) {
        this.mBackgroundColor = i4;
    }

    public void setBackgroundImage(String str) {
        this.mBackgroundImage = str;
    }

    public void setButton(ButtonNode buttonNode) {
        this.mButton = buttonNode;
    }

    public void setCarousel(boolean z3) {
        this.mCarousel = z3;
    }

    public void setCornerRadius(int i4) {
        this.mCornerRadius = i4;
    }

    public void setDuration(int i4) {
        this.mDuration = i4;
    }

    public void setExtraData(String str) {
        this.mExtraData = str;
    }

    public void setFrame(int i4, int i5, int i6, int i7) {
        this.mX = i4;
        this.mY = i5;
        this.mWidth = i6;
        this.mHeight = i7;
    }

    public void setGlobalEffect(EffectNode effectNode) {
        this.mGlobalEffect = effectNode;
    }

    public void setHeight(int i4) {
        this.mHeight = i4;
    }

    public void setHidden(boolean z3) {
        this.mHidden = z3;
    }

    public void setMotion(boolean z3) {
        this.mMotion = z3;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setPercentUnit(boolean z3) {
        this.mPercentUnit = z3;
    }

    public void setRotation(int i4) {
        this.mRotation = i4;
    }

    public void setStrokeColor(int i4) {
        this.mStrokeColor = i4;
    }

    public void setStrokeWidth(int i4) {
        this.mStrokeWidth = i4;
    }

    public void setUuid(String str) {
        this.mUuid = str;
    }

    public void setWidth(int i4) {
        this.mWidth = i4;
    }

    public void setX(int i4) {
        this.mX = i4;
    }

    public void setY(int i4) {
        this.mY = i4;
    }
}
