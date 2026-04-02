package cn.huidu.lcd.core.entity.model;

import android.support.v4.media.f;
import androidx.annotation.NonNull;
import androidx.core.app.FrameMetricsAggregator;
import cn.huidu.lcd.render.model.enums.AnimationType;
import k.a;
import org.eclipse.jetty.http.HttpStatus;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class GetWeatherResult {
    private float mAirPressure;
    private int mAirQuality;
    private String mAirQualityStr;
    private float mAqi;
    private String mCityCode;
    private String mCityName;
    private int mCondition;
    private String mConditionStr;
    private int mDayCondition;
    private int mErrorCode;
    private int mFailCount;
    private float mHumidity;
    private String mHumidityStr;
    private long mNextUpdate;
    private int mNightCondition;
    private float mPM10;
    private float mPM2_5;
    private long mReplyTime;
    private int mStatus;
    private String mSunrise;
    private String mSunset;
    private float mTemperature;
    private String mTemperatureStr;
    private String mTimeZone;
    private float mTmpMax;
    private float mTmpMin;
    private String mUpdateLoc;
    private String mUpdateUtc;
    private int mWindDirection;
    private String mWindDirectionStr;
    private int mWindLevel;
    private String mWindLevelStr;

    public GetWeatherResult(int i4) {
        this.mErrorCode = i4;
    }

    public float getAirPressure() {
        return this.mAirPressure;
    }

    public int getAirQuality() {
        return this.mAirQuality;
    }

    public String getAirQualityStr() {
        String str = this.mAirQualityStr;
        if (str != null) {
            return str;
        }
        int i4 = this.mAirQuality;
        return i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? i4 != 4 ? i4 != 5 ? "未知" : "严重污染" : "重度污染" : "中度污染" : "轻度污染" : "良" : "优";
    }

    public float getAqi() {
        return this.mAqi;
    }

    public String getCityCode() {
        return this.mCityCode;
    }

    public String getCityName() {
        return this.mCityName;
    }

    public int getCondition() {
        return this.mCondition;
    }

    public String getConditionStr() {
        String str = this.mConditionStr;
        if (str != null) {
            return str;
        }
        int i4 = this.mCondition;
        if (i4 == 900) {
            return "热";
        }
        if (i4 == 901) {
            return "冷";
        }
        switch (i4) {
            case 100:
                return "晴";
            case 101:
                return "多云";
            case 102:
                return "少云";
            case 103:
                return "局部多云";
            case 104:
                return "阴";
            default:
                switch (i4) {
                    case 200:
                        return "有风";
                    case 201:
                        return "无风";
                    case 202:
                        return "微风";
                    case 203:
                        return "和风";
                    case 204:
                        return "清风";
                    case 205:
                        return "强风";
                    case 206:
                        return "疾风";
                    case 207:
                        return "大风";
                    case AnimationType.ROLL_OUT_TO_RIGHT /* 208 */:
                        return "烈风";
                    case 209:
                        return "风暴";
                    case 210:
                        return "狂暴风";
                    case 211:
                        return "飓风";
                    case 212:
                        return "龙卷风";
                    case 213:
                        return "热带风暴";
                    default:
                        switch (i4) {
                            case HttpStatus.MULTIPLE_CHOICES_300 /* 300 */:
                                return "阵雨";
                            case HttpStatus.MOVED_PERMANENTLY_301 /* 301 */:
                                return "强阵雨";
                            case 302:
                                return "雷阵雨";
                            case HttpStatus.SEE_OTHER_303 /* 303 */:
                                return "强雷阵雨";
                            case HttpStatus.NOT_MODIFIED_304 /* 304 */:
                                return "冰雹";
                            case HttpStatus.USE_PROXY_305 /* 305 */:
                                return "小雨";
                            case 306:
                                return "中雨";
                            case HttpStatus.TEMPORARY_REDIRECT_307 /* 307 */:
                                return "大雨";
                            case 308:
                                return "极端降雨";
                            case 309:
                                return "细雨";
                            case 310:
                                return "暴雨";
                            case 311:
                                return "大暴雨";
                            case 312:
                                return "特大暴雨";
                            case 313:
                                return "冻雨";
                            case 314:
                                return "小到中雨";
                            case 315:
                                return "中到大雨";
                            case 316:
                                return "大到暴雨";
                            case 317:
                                return "暴雨到大暴雨";
                            case 318:
                                return "大暴雨到特大暴雨";
                            default:
                                switch (i4) {
                                    case 399:
                                        return "雨";
                                    case HttpStatus.BAD_REQUEST_400 /* 400 */:
                                        return "小雪";
                                    case HttpStatus.UNAUTHORIZED_401 /* 401 */:
                                        return "中雪";
                                    case HttpStatus.PAYMENT_REQUIRED_402 /* 402 */:
                                        return "大雪";
                                    case HttpStatus.FORBIDDEN_403 /* 403 */:
                                        return "暴雪";
                                    case HttpStatus.NOT_FOUND_404 /* 404 */:
                                        return "雨夹雪";
                                    case HttpStatus.METHOD_NOT_ALLOWED_405 /* 405 */:
                                        return "雨雪天气";
                                    case HttpStatus.NOT_ACCEPTABLE_406 /* 406 */:
                                        return "阵雨夹雪";
                                    case HttpStatus.PROXY_AUTHENTICATION_REQUIRED_407 /* 407 */:
                                        return "阵雪";
                                    case HttpStatus.REQUEST_TIMEOUT_408 /* 408 */:
                                        return "小到中雪";
                                    case HttpStatus.CONFLICT_409 /* 409 */:
                                        return "中到大雪";
                                    case HttpStatus.GONE_410 /* 410 */:
                                        return "大到暴雪";
                                    default:
                                        switch (i4) {
                                            case 499:
                                                return "雪";
                                            case HttpStatus.INTERNAL_SERVER_ERROR_500 /* 500 */:
                                                return "薄雾";
                                            case HttpStatus.NOT_IMPLEMENTED_501 /* 501 */:
                                                return "雾";
                                            case HttpStatus.BAD_GATEWAY_502 /* 502 */:
                                                return "霾";
                                            case HttpStatus.SERVICE_UNAVAILABLE_503 /* 503 */:
                                                return "扬沙";
                                            case HttpStatus.GATEWAY_TIMEOUT_504 /* 504 */:
                                                return "浮尘";
                                            default:
                                                switch (i4) {
                                                    case 507:
                                                        return "沙尘暴";
                                                    case 508:
                                                        return "强沙尘暴";
                                                    case 509:
                                                        return "浓雾";
                                                    case 510:
                                                        return "强浓雾";
                                                    case FrameMetricsAggregator.EVERY_DURATION /* 511 */:
                                                        return "中度霾";
                                                    case 512:
                                                        return "重度霾";
                                                    case 513:
                                                        return "严重霾";
                                                    case 514:
                                                        return "大雾";
                                                    case 515:
                                                        return "特强浓雾";
                                                    default:
                                                        return "未知";
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public int getDayCondition() {
        return this.mDayCondition;
    }

    public int getErrorCode() {
        return this.mErrorCode;
    }

    public int getFailCount() {
        return this.mFailCount;
    }

    public float getHumidity() {
        return this.mHumidity;
    }

    public String getHumidityStr() {
        String str = this.mHumidityStr;
        return str != null ? str : "湿度";
    }

    public long getNextUpdate() {
        return this.mNextUpdate;
    }

    public int getNightCondition() {
        return this.mNightCondition;
    }

    public float getPM10() {
        return this.mPM10;
    }

    public float getPM2_5() {
        return this.mPM2_5;
    }

    public long getReplyTime() {
        return this.mReplyTime;
    }

    public int getStatus() {
        return this.mStatus;
    }

    public String getSunrise() {
        return this.mSunrise;
    }

    public String getSunset() {
        return this.mSunset;
    }

    public float getTemperature() {
        return this.mTemperature;
    }

    public String getTemperatureStr() {
        String str = this.mTemperatureStr;
        return str != null ? str : "温度";
    }

    public String getTimeZone() {
        return this.mTimeZone;
    }

    public float getTmpMax() {
        return this.mTmpMax;
    }

    public float getTmpMin() {
        return this.mTmpMin;
    }

    public String getUpdateLoc() {
        return this.mUpdateLoc;
    }

    public String getUpdateUtc() {
        return this.mUpdateUtc;
    }

    public int getWindDirection() {
        return this.mWindDirection;
    }

    public String getWindDirectionStr() {
        String str = this.mWindDirectionStr;
        if (str != null) {
            return str;
        }
        switch (this.mWindDirection) {
            case 1:
                return "东北风";
            case 2:
                return "东风";
            case 3:
                return "东南风";
            case 4:
                return "南风";
            case 5:
                return "西南风";
            case 6:
                return "西风";
            case 7:
                return "西北风";
            case 8:
                return "北风";
            default:
                return "无持续风向";
        }
    }

    public int getWindLevel() {
        return this.mWindLevel;
    }

    public String getWindLevelStr() {
        String str = this.mWindLevelStr;
        if (str != null) {
            return str;
        }
        int i4 = this.mWindLevel;
        if (i4 > 12) {
            i4 = 12;
        }
        switch (i4) {
            case 0:
                return "无风";
            case 1:
                return "软风";
            case 2:
                return "轻风";
            case 3:
                return "微风";
            case 4:
                return "和风";
            case 5:
                return "清风";
            case 6:
                return "强风";
            case 7:
                return "疾风";
            case 8:
                return "大风";
            case 9:
                return "烈风";
            case 10:
                return "狂风";
            case 11:
                return "暴风";
            case 12:
                return "飓风";
            default:
                return "未知";
        }
    }

    public boolean isSuccess() {
        return this.mErrorCode == 0 && this.mStatus == 1000;
    }

    public boolean isWeatherChanged(GetWeatherResult getWeatherResult) {
        return (getWeatherResult != null && this.mErrorCode == getWeatherResult.mErrorCode && this.mCondition == getWeatherResult.mCondition && this.mTemperature == getWeatherResult.mTemperature && this.mTmpMax == getWeatherResult.mTmpMax && this.mTmpMin == getWeatherResult.mTmpMin && this.mWindLevel == getWeatherResult.mWindLevel && this.mWindDirection == getWeatherResult.mWindDirection && this.mHumidity == getWeatherResult.mHumidity && this.mAirQuality == getWeatherResult.mAirQuality && this.mAqi == getWeatherResult.mAqi && this.mPM2_5 == getWeatherResult.mPM2_5 && this.mPM10 == getWeatherResult.mPM10) ? false : true;
    }

    public void setAirPressure(float f4) {
        this.mAirPressure = f4;
    }

    public void setAirQuality(int i4) {
        this.mAirQuality = i4;
    }

    public void setAirQualityStr(String str) {
        this.mAirQualityStr = str;
    }

    public void setAqi(float f4) {
        this.mAqi = f4;
    }

    public void setCityCode(String str) {
        this.mCityCode = str;
    }

    public void setCityName(String str) {
        this.mCityName = str;
    }

    public void setCondition(int i4) {
        this.mCondition = i4;
    }

    public void setConditionStr(String str) {
        this.mConditionStr = str;
    }

    public void setDayCondition(int i4) {
        this.mDayCondition = i4;
    }

    public void setErrorCode(int i4) {
        this.mErrorCode = i4;
    }

    public void setFailCount(int i4) {
        this.mFailCount = i4;
    }

    public void setHumidity(float f4) {
        this.mHumidity = f4;
    }

    public void setHumidityStr(String str) {
        this.mHumidityStr = str;
    }

    public void setNextUpdate(long j4) {
        this.mNextUpdate = j4;
    }

    public void setNightCondition(int i4) {
        this.mNightCondition = i4;
    }

    public void setPM10(float f4) {
        this.mPM10 = f4;
    }

    public void setPM2_5(float f4) {
        this.mPM2_5 = f4;
    }

    public void setReplyTime(long j4) {
        this.mReplyTime = j4;
    }

    public void setStatus(int i4) {
        this.mStatus = i4;
    }

    public void setSunrise(String str) {
        this.mSunrise = str;
    }

    public void setSunset(String str) {
        this.mSunset = str;
    }

    public void setTemperature(float f4) {
        this.mTemperature = f4;
    }

    public void setTemperatureStr(String str) {
        this.mTemperatureStr = str;
    }

    public void setTimeZone(String str) {
        this.mTimeZone = str;
    }

    public void setTmpMax(float f4) {
        this.mTmpMax = f4;
    }

    public void setTmpMin(float f4) {
        this.mTmpMin = f4;
    }

    public void setUpdateLoc(String str) {
        this.mUpdateLoc = str;
    }

    public void setUpdateUtc(String str) {
        this.mUpdateUtc = str;
    }

    public void setWindDirection(int i4) {
        this.mWindDirection = i4;
    }

    public void setWindDirectionStr(String str) {
        this.mWindDirectionStr = str;
    }

    public void setWindLevel(int i4) {
        this.mWindLevel = i4;
    }

    public void setWindLevelStr(String str) {
        this.mWindLevelStr = str;
    }

    @NonNull
    public String toString() {
        StringBuilder sbA = f.a("GetWeatherResult{mErrorCode=");
        sbA.append(this.mErrorCode);
        sbA.append(", mReplyTime=");
        sbA.append(this.mReplyTime);
        sbA.append(", mFailCount=");
        sbA.append(this.mFailCount);
        sbA.append(", mStatus=");
        sbA.append(this.mStatus);
        sbA.append(", mCityCode='");
        a.a(sbA, this.mCityCode, '\'', ", mCityName='");
        a.a(sbA, this.mCityName, '\'', ", mTimeZone='");
        a.a(sbA, this.mTimeZone, '\'', ", mUpdateLoc='");
        a.a(sbA, this.mUpdateLoc, '\'', ", mUpdateUtc='");
        a.a(sbA, this.mUpdateUtc, '\'', ", mNextUpdate=");
        sbA.append(this.mNextUpdate);
        sbA.append(", mCondition=");
        sbA.append(this.mCondition);
        sbA.append(", mDayCondition=");
        sbA.append(this.mDayCondition);
        sbA.append(", mNightCondition=");
        sbA.append(this.mNightCondition);
        sbA.append(", mTemperature=");
        sbA.append(this.mTemperature);
        sbA.append(", mTmpMax=");
        sbA.append(this.mTmpMax);
        sbA.append(", mTmpMin=");
        sbA.append(this.mTmpMin);
        sbA.append(", mWindLevel=");
        sbA.append(this.mWindLevel);
        sbA.append(", mWindDirection=");
        sbA.append(this.mWindDirection);
        sbA.append(", mHumidity=");
        sbA.append(this.mHumidity);
        sbA.append(", mAirPressure=");
        sbA.append(this.mAirPressure);
        sbA.append(", mSunrise='");
        a.a(sbA, this.mSunrise, '\'', ", mSunset='");
        a.a(sbA, this.mSunset, '\'', ", mAirQuality=");
        sbA.append(this.mAirQuality);
        sbA.append(", mAqi=");
        sbA.append(this.mAqi);
        sbA.append(", mPM2_5=");
        sbA.append(this.mPM2_5);
        sbA.append(", mPM10=");
        sbA.append(this.mPM10);
        sbA.append(", mTemperatureStr='");
        a.a(sbA, this.mTemperatureStr, '\'', ", mHumidityStr='");
        a.a(sbA, this.mHumidityStr, '\'', ", mConditionStr='");
        a.a(sbA, this.mConditionStr, '\'', ", mWindLevelStr='");
        a.a(sbA, this.mWindLevelStr, '\'', ", mWindDirectionStr='");
        a.a(sbA, this.mWindDirectionStr, '\'', ", mAirQualityStr='");
        sbA.append(this.mAirQualityStr);
        sbA.append('\'');
        sbA.append(MessageFormatter.DELIM_STOP);
        return sbA.toString();
    }
}
