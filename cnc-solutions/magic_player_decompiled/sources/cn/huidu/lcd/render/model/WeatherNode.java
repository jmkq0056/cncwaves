package cn.huidu.lcd.render.model;

import androidx.annotation.NonNull;
import cn.huidu.lcd.render.model.extra.FontStyleNode;
import java.util.List;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.WEATHER)
public class WeatherNode extends WidgetNode {
    private String mCityCode;
    private String mCityName;
    private FontStyleNode mFontStyle;
    private String mLanguage;
    private boolean mMultiLine;
    private List<String> mShowItems;
    private int mSpacing;
    private String mStrAirQuality;
    private String mStrHumidity;
    private String mStrTmpRange;
    private String mStrUnknown;
    private String mStrWaitingData;
    private int mStyle;
    private int mTemperatureUnit;

    public String getCityCode() {
        return this.mCityCode;
    }

    public String getCityName() {
        return this.mCityName;
    }

    public FontStyleNode getFontStyle() {
        return this.mFontStyle;
    }

    public String getLanguage() {
        return this.mLanguage;
    }

    public List<String> getShowItems() {
        return this.mShowItems;
    }

    public int getSpacing() {
        return this.mSpacing;
    }

    @NonNull
    public String getStrAirQuality() {
        String str = this.mStrAirQuality;
        return str != null ? str : "空气质量";
    }

    @NonNull
    public String getStrHumidity() {
        String str = this.mStrHumidity;
        return str != null ? str : "湿度";
    }

    @NonNull
    public String getStrTmpRange() {
        String str = this.mStrTmpRange;
        return str != null ? str : "温度范围";
    }

    @NonNull
    public String getStrUnknown() {
        String str = this.mStrUnknown;
        return str != null ? str : "未知";
    }

    @NonNull
    public String getStrWaitingData() {
        String str = this.mStrWaitingData;
        return str != null ? str : "等待数据";
    }

    public int getStyle() {
        return this.mStyle;
    }

    public int getTemperatureUnit() {
        return this.mTemperatureUnit;
    }

    public boolean isMultiLine() {
        return this.mMultiLine;
    }

    public void setCityCode(String str) {
        this.mCityCode = str;
    }

    public void setCityName(String str) {
        this.mCityName = str;
    }

    public void setFontStyle(FontStyleNode fontStyleNode) {
        this.mFontStyle = fontStyleNode;
    }

    public void setLanguage(String str) {
        this.mLanguage = str;
    }

    public void setMultiLine(boolean z3) {
        this.mMultiLine = z3;
    }

    public void setShowItems(List<String> list) {
        this.mShowItems = list;
    }

    public void setSpacing(int i4) {
        this.mSpacing = i4;
    }

    public void setStrAirQuality(String str) {
        this.mStrAirQuality = str;
    }

    public void setStrHumidity(String str) {
        this.mStrHumidity = str;
    }

    public void setStrTmpRange(String str) {
        this.mStrTmpRange = str;
    }

    public void setStrUnknown(String str) {
        this.mStrUnknown = str;
    }

    public void setStrWaitingData(String str) {
        this.mStrWaitingData = str;
    }

    public void setStyle(int i4) {
        this.mStyle = i4;
    }

    public void setTemperatureUnit(int i4) {
        this.mTemperatureUnit = i4;
    }
}
